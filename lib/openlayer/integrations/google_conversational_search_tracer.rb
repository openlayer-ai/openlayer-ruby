# frozen_string_literal: true
# typed: false

require "json"
require "time"

module Openlayer
  module Integrations
    # Tracer for Google Cloud DiscoveryEngine ConversationalSearchService
    #
    # This class provides integration with Google's ConversationalSearchService
    # to automatically trace answer_query calls and send them to the Openlayer platform.
    #
    # @example Basic usage
    #   require 'openlayer/integrations/google_conversational_search_tracer'
    #   require 'google/cloud/discovery_engine/v1'
    #
    #   google_client = Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Client.new
    #   openlayer = Openlayer::Client.new(api_key: ENV['OPENLAYER_API_KEY'])
    #
    #   Openlayer::Integrations::GoogleConversationalSearchTracer.trace_client(
    #     google_client,
    #     openlayer_client: openlayer,
    #     inference_pipeline_id: 'your-pipeline-id'
    #   )
    #
    #   # Now all answer_query calls are automatically traced
    #   response = google_client.answer_query(
    #     serving_config: "projects/.../servingConfigs/default",
    #     query: { text: "What is the meaning of life?" }
    #   )
    class GoogleConversationalSearchTracer
      # Enable tracing on a Google ConversationalSearchService client
      #
      # @param client [Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Client]
      #   The Google client instance to trace
      # @param openlayer_client [Openlayer::Client]
      #   The Openlayer client instance for sending traces
      # @param inference_pipeline_id [String]
      #   The Openlayer inference pipeline ID to send traces to
      # @return [void]
      def self.trace_client(client, openlayer_client:, inference_pipeline_id:)
        # Store original method reference
        original_answer_query = client.method(:answer_query)

        # Define traced wrapper method
        client.define_singleton_method(:answer_query) do |*args, **kwargs, &block|
          # Capture start time
          start_time = Time.now

          # Execute the original method
          response = original_answer_query.call(*args, **kwargs, &block)

          # Capture end time
          end_time = Time.now

          # Send trace to Openlayer (with error handling)
          begin
            GoogleConversationalSearchTracer.send_trace(
              args: args,
              kwargs: kwargs,
              response: response,
              start_time: start_time,
              end_time: end_time,
              openlayer_client: openlayer_client,
              inference_pipeline_id: inference_pipeline_id
            )
          rescue StandardError => e
            # Never break the user's application due to tracing errors
            GoogleConversationalSearchTracer.warn_if_debug("[Openlayer] Failed to send trace: #{e.message}")
            GoogleConversationalSearchTracer.warn_if_debug("[Openlayer] #{e.backtrace.first(3).join("\n")}") if e.backtrace
          end

          # Always return the original response
          response
        end

        nil
      end

      # Send trace data to Openlayer platform
      #
      # @param args [Array] Original method positional arguments
      # @param kwargs [Hash] Original method keyword arguments
      # @param response [Google::Cloud::DiscoveryEngine::V1::AnswerQueryResponse] The API response
      # @param start_time [Time] Request start time
      # @param end_time [Time] Request end time
      # @param openlayer_client [Openlayer::Client] Openlayer client instance
      # @param inference_pipeline_id [String] Pipeline ID
      # @return [void]
      def self.send_trace(args:, kwargs:, response:, start_time:, end_time:, openlayer_client:, inference_pipeline_id:)
        # Calculate latency
        latency_ms = ((end_time - start_time) * 1000).round(2)

        # Extract query from request
        query_text = extract_query(args, kwargs)

        # Extract answer and metadata from response
        answer_data = extract_answer_data(response)

        # Extract additional metadata
        metadata = extract_metadata(args, kwargs, response, latency_ms)

        # Rough estimate of prompt and completion tokens
        prompt_tokens = (query_text.length / 4.0).ceil
        completion_tokens = (answer_data[:answer_text].length / 4.0).ceil

        # Build trace data in Openlayer format
        trace_data = {
          config: {
            inputVariableNames: ["query"],
            outputColumnName: "answer",
            latencyColumnName: "latency_ms",
            timestampColumnName: "timestamp"
          },
          rows: [
            {
              query: query_text,
              answer: answer_data[:answer_text],
              latency_ms: latency_ms,
              timestamp: start_time.to_i,
              metadata: metadata,
              steps: [
                {
                  name: "Conversational Search answer_query",
                  type: "chat_completion",
                  provider: "Google",
                  startTime: start_time.to_i,
                  endTime: end_time.to_i,
                  latency: latency_ms,
                  metadata: metadata,
                  inputs: {
                    prompt: [
                      {role: "user", content: query_text}
                    ]
                  },
                  output: answer_data[:answer_text],
                  promptTokens: prompt_tokens,
                  completionTokens: completion_tokens,
                  tokens: prompt_tokens + completion_tokens,
                  model: "google-discovery-engine"
                }
              ]
            }
          ]
        }

        # Send to Openlayer
        openlayer_client
          .inference_pipelines
          .data
          .stream(
            inference_pipeline_id,
            **trace_data
          )
      end

      # Extract query text from request arguments
      #
      # Handles both calling styles:
      # 1. Request object: answer_query(request_object)
      # 2. Keyword arguments: answer_query(query: {...}, serving_config: ...)
      #
      # @param args [Array] Positional arguments
      # @param kwargs [Hash] Keyword arguments
      # @return [String, nil] The query text or nil if not found
      def self.extract_query(args, kwargs)
        query_obj = nil

        # Try to get query from request object (first positional arg)
        if args.length.positive? && args[0].respond_to?(:query)
          query_obj = args[0].query
        # Try to get query from keyword arguments
        elsif kwargs[:query]
          query_obj = kwargs[:query]
        end

        return nil if query_obj.nil?

        # Extract text from query object
        if query_obj.respond_to?(:text)
          query_obj.text
        elsif query_obj.is_a?(Hash) && query_obj[:text]
          query_obj[:text]
        elsif query_obj.is_a?(Hash) && query_obj["text"]
          query_obj["text"]
        else
          query_obj.to_s
        end
      rescue StandardError => e
        warn_if_debug("[Openlayer] Failed to extract query: #{e.message}")
        nil
      end

      # Extract answer data from response
      #
      # @param response [Google::Cloud::DiscoveryEngine::V1::AnswerQueryResponse] API response
      # @return [Hash] Hash containing answer_text and other answer fields
      def self.extract_answer_data(response)
        return {answer_text: nil} unless response.respond_to?(:answer)

        answer = response.answer
        return {answer_text: nil} if answer.nil?

        {
          answer_text: safe_extract(answer, :answer_text),
          state: safe_extract(answer, :state)&.to_s,
          grounding_score: safe_extract(answer, :grounding_score),
          create_time: extract_timestamp(answer, :create_time),
          complete_time: extract_timestamp(answer, :complete_time),
          citations_count: safe_count(answer, :citations),
          references_count: safe_count(answer, :references)
        }
      rescue StandardError => e
        warn_if_debug("[Openlayer] Failed to extract answer data: #{e.message}")
        {answer_text: nil}
      end

      # Extract metadata from request and response
      #
      # @param args [Array] Positional arguments
      # @param kwargs [Hash] Keyword arguments
      # @param response [Google::Cloud::DiscoveryEngine::V1::AnswerQueryResponse] API response
      # @param latency_ms [Float] Request latency in milliseconds
      # @return [Hash] Metadata hash
      def self.extract_metadata(args, kwargs, response, latency_ms)
        answer_data = extract_answer_data(response)

        metadata = {
          provider: "google",
          service: "conversational_search",
          latency_ms: latency_ms
        }

        # Add answer metadata
        metadata[:grounding_score] = answer_data[:grounding_score] if answer_data[:grounding_score]
        metadata[:state] = answer_data[:state] if answer_data[:state]
        metadata[:citations_count] = answer_data[:citations_count] if answer_data[:citations_count]
        metadata[:references_count] = answer_data[:references_count] if answer_data[:references_count]

        # Add request metadata
        metadata[:serving_config] = extract_serving_config(args, kwargs)
        metadata[:session] = extract_session(args, kwargs)

        # Add timing metadata
        if answer_data[:create_time] && answer_data[:complete_time]
          generation_time_ms = ((answer_data[:complete_time] - answer_data[:create_time]) * 1000).round(2)
          metadata[:generation_time_ms] = generation_time_ms
        end

        metadata.compact
      rescue StandardError => e
        warn_if_debug("[Openlayer] Failed to extract metadata: #{e.message}")
        {
          provider: "google",
          service: "conversational_search",
          latency_ms: latency_ms
        }
      end

      # Extract serving_config from request
      #
      # @param args [Array] Positional arguments
      # @param kwargs [Hash] Keyword arguments
      # @return [String, nil] Serving config or nil
      def self.extract_serving_config(args, kwargs)
        if args.length.positive? && args[0].respond_to?(:serving_config)
          args[0].serving_config
        elsif kwargs[:serving_config]
          kwargs[:serving_config]
        end
      rescue StandardError
        nil
      end

      # Extract session from request
      #
      # @param args [Array] Positional arguments
      # @param kwargs [Hash] Keyword arguments
      # @return [String, nil] Session ID or nil
      def self.extract_session(args, kwargs)
        if args.length.positive? && args[0].respond_to?(:session)
          args[0].session
        elsif kwargs[:session]
          kwargs[:session]
        end
      rescue StandardError
        nil
      end

      # Safely extract a field from an object
      #
      # @param obj [Object] Object to extract from
      # @param field [Symbol] Field name
      # @return [Object, nil] Field value or nil
      def self.safe_extract(obj, field)
        obj.respond_to?(field) ? obj.public_send(field) : nil
      rescue StandardError
        nil
      end

      # Safely count elements in a collection field
      #
      # @param obj [Object] Object containing the collection
      # @param field [Symbol] Field name
      # @return [Integer, nil] Count or nil
      def self.safe_count(obj, field)
        collection = safe_extract(obj, field)
        collection.respond_to?(:length) ? collection.length : nil
      rescue StandardError
        nil
      end

      # Extract timestamp and convert to Unix timestamp
      #
      # @param obj [Object] Object containing timestamp
      # @param field [Symbol] Field name
      # @return [Integer, nil] Unix timestamp or nil
      def self.extract_timestamp(obj, field)
        timestamp = safe_extract(obj, field)
        return nil if timestamp.nil?

        if timestamp.respond_to?(:to_time)
          timestamp.to_time.to_i
        elsif timestamp.respond_to?(:to_i)
          timestamp.to_i
        end
      rescue StandardError
        nil
      end

      # Log warning message if debug mode is enabled
      #
      # @param message [String] Warning message
      # @return [void]
      def self.warn_if_debug(message)
        warn(message) if ENV["OPENLAYER_DEBUG"]
      end

      # send_trace and warn_if_debug need to be public because they're called
      # from the singleton method context
      private_class_method :extract_query,
                           :extract_answer_data,
                           :extract_metadata,
                           :extract_serving_config,
                           :extract_session,
                           :safe_extract,
                           :safe_count,
                           :extract_timestamp
    end
  end
end
