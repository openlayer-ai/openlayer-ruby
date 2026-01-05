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
      # @param session_id [String, nil]
      #   Optional session ID to use for all traces. Takes precedence over auto-extracted sessions.
      # @param user_id [String, nil]
      #   Optional user ID to use for all traces.
      # @return [void]
      def self.trace_client(client, openlayer_client:, inference_pipeline_id:, session_id: nil, user_id: nil)
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
              inference_pipeline_id: inference_pipeline_id,
              session_id: session_id,
              user_id: user_id
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
      # @param session_id [String, nil] Optional session ID (takes precedence over auto-extracted)
      # @param user_id [String, nil] Optional user ID
      # @return [void]
      def self.send_trace(args:, kwargs:, response:, start_time:, end_time:, openlayer_client:, inference_pipeline_id:, session_id: nil, user_id: nil)
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

        # Extract grounding information from metadata for step root level
        citations = metadata.delete(:citations)
        references = metadata.delete(:references)
        related_questions = metadata.delete(:relatedQuestions)

        # Extract context from references (array of content strings)
        context = if references && references.is_a?(Array)
          references.map { |ref| ref[:content] }.compact
        else
          nil
        end

        # Build step object
        step = {
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

        # Add grounding information at step root level
        step[:citations] = citations if citations
        step[:references] = references if references
        step[:relatedQuestions] = related_questions if related_questions

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
              steps: [step]
            }
          ]
        }

        # Add context column if available
        if context && !context.empty?
          trace_data[:rows][0][:context] = context
          trace_data[:config][:contextColumnName] = "context"
        end

        # Determine which session to use (kwarg takes precedence over auto-extracted)
        final_session = session_id || metadata[:session]
        if final_session
          trace_data[:rows][0][:session_id] = final_session
          trace_data[:config][:sessionIdColumnName] = "session_id"
        end

        # Add user_id if provided
        if user_id
          trace_data[:rows][0][:user_id] = user_id
          trace_data[:config][:userIdColumnName] = "user_id"
        end

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

      # Extract citations from answer
      #
      # @param answer [Object] Answer object from response
      # @return [Array<Hash>, nil] Array of citation hashes or nil
      def self.extract_citations(answer)
        return nil unless answer && answer.respond_to?(:citations)

        citations = safe_extract(answer, :citations)
        return nil if citations.nil? || !citations.respond_to?(:map)

        citations.map do |citation|
          {
            start_index: safe_extract(citation, :start_index)&.to_i,
            end_index: safe_extract(citation, :end_index)&.to_i,
            sources: extract_citation_sources(citation)
          }.compact
        end
      rescue StandardError => e
        warn_if_debug("[Openlayer] Failed to extract citations: #{e.message}")
        nil
      end

      # Extract sources from a citation
      #
      # @param citation [Object] Citation object
      # @return [Array<Hash>, nil] Array of source hashes or nil
      def self.extract_citation_sources(citation)
        sources = safe_extract(citation, :sources)
        return nil if sources.nil? || !sources.respond_to?(:map)

        sources.map do |source|
          {reference_id: safe_extract(source, :reference_id)}.compact
        end
      rescue StandardError
        nil
      end

      # Extract references from answer
      #
      # @param answer [Object] Answer object from response
      # @return [Array<Hash>, nil] Array of reference hashes or nil
      def self.extract_references(answer)
        return nil unless answer && answer.respond_to?(:references)

        references = safe_extract(answer, :references)
        return nil if references.nil? || !references.respond_to?(:each_with_index)

        references.each_with_index.map do |reference, index|
          chunk_info = safe_extract(reference, :chunk_info)
          next nil if chunk_info.nil?

          doc_metadata = safe_extract(chunk_info, :document_metadata)

          {
            reference_id: index.to_s,
            content: safe_extract(chunk_info, :content),
            relevance_score: safe_extract(chunk_info, :relevance_score)&.to_f,
            document_id: doc_metadata ? safe_extract(doc_metadata, :document) : nil,
            uri: doc_metadata ? safe_extract(doc_metadata, :uri) : nil,
            title: doc_metadata ? safe_extract(doc_metadata, :title) : nil
          }.compact
        end.compact
      rescue StandardError => e
        warn_if_debug("[Openlayer] Failed to extract references: #{e.message}")
        nil
      end

      # Extract related questions from answer
      #
      # @param answer [Object] Answer object from response
      # @return [Array<String>, nil] Array of related questions or nil
      def self.extract_related_questions(answer)
        return nil unless answer && answer.respond_to?(:related_questions)

        questions = safe_extract(answer, :related_questions)
        return nil if questions.nil? || !questions.respond_to?(:to_a)

        questions.to_a.map(&:to_s).compact
      rescue StandardError => e
        warn_if_debug("[Openlayer] Failed to extract related questions: #{e.message}")
        nil
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
        answer = response.respond_to?(:answer) ? response.answer : nil

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

        # Add grounding information (citations, references, related questions)
        if answer
          citations = extract_citations(answer)
          references = extract_references(answer)
          related_questions = extract_related_questions(answer)

          metadata[:citations] = citations if citations && !citations.empty?
          metadata[:references] = references if references && !references.empty?
          metadata[:relatedQuestions] = related_questions if related_questions && !related_questions.empty?
        end

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
                           :extract_citations,
                           :extract_citation_sources,
                           :extract_references,
                           :extract_related_questions,
                           :extract_metadata,
                           :extract_serving_config,
                           :extract_session,
                           :safe_extract,
                           :safe_count,
                           :extract_timestamp
    end
  end
end
