# frozen_string_literal: true

module Openlayer
  module Resources
    class InferencePipelines
      # @return [Openlayer::Resources::InferencePipelines::Data]
      attr_reader :data

      # @return [Openlayer::Resources::InferencePipelines::Rows]
      attr_reader :rows

      # @return [Openlayer::Resources::InferencePipelines::TestResults]
      attr_reader :test_results

      # Retrieve inference pipeline.
      #
      # @overload retrieve(inference_pipeline_id, expand: nil, request_options: {})
      #
      # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
      #
      # @param expand [Array<Symbol, Openlayer::Models::InferencePipelineRetrieveParams::Expand>] Expand specific nested objects.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::InferencePipelineRetrieveResponse]
      #
      # @see Openlayer::Models::InferencePipelineRetrieveParams
      def retrieve(inference_pipeline_id, params = {})
        parsed, options = Openlayer::InferencePipelineRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inference-pipelines/%1$s", inference_pipeline_id],
          query: parsed,
          model: Openlayer::Models::InferencePipelineRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Openlayer::Models::InferencePipelineUpdateParams} for more details.
      #
      # Update inference pipeline.
      #
      # @overload update(inference_pipeline_id, description: nil, name: nil, reference_dataset_uri: nil, request_options: {})
      #
      # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
      #
      # @param description [String, nil] The inference pipeline description.
      #
      # @param name [String] The inference pipeline name.
      #
      # @param reference_dataset_uri [String, nil] The storage uri of your reference dataset. We recommend using the Python SDK or
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::InferencePipelineUpdateResponse]
      #
      # @see Openlayer::Models::InferencePipelineUpdateParams
      def update(inference_pipeline_id, params = {})
        parsed, options = Openlayer::InferencePipelineUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["inference-pipelines/%1$s", inference_pipeline_id],
          body: parsed,
          model: Openlayer::Models::InferencePipelineUpdateResponse,
          options: options
        )
      end

      # Delete inference pipeline.
      #
      # @overload delete(inference_pipeline_id, request_options: {})
      #
      # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Openlayer::Models::InferencePipelineDeleteParams
      def delete(inference_pipeline_id, params = {})
        @client.request(
          method: :delete,
          path: ["inference-pipelines/%1$s", inference_pipeline_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get aggregated user data for an inference pipeline with pagination and metadata.
      #
      # Returns a list of users who have interacted with the inference pipeline,
      # including their activity statistics such as session counts, record counts, token
      # usage, and costs.
      #
      # @overload retrieve_users(inference_pipeline_id, page: nil, per_page: nil, request_options: {})
      #
      # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
      #
      # @param page [Integer] The page to return in a paginated query.
      #
      # @param per_page [Integer] Maximum number of items to return per page.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::InferencePipelineRetrieveUsersResponse]
      #
      # @see Openlayer::Models::InferencePipelineRetrieveUsersParams
      def retrieve_users(inference_pipeline_id, params = {})
        parsed, options = Openlayer::InferencePipelineRetrieveUsersParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["inference-pipelines/%1$s/users", inference_pipeline_id],
          query: parsed.transform_keys(per_page: "perPage"),
          model: Openlayer::Models::InferencePipelineRetrieveUsersResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
        @data = Openlayer::Resources::InferencePipelines::Data.new(client: client)
        @rows = Openlayer::Resources::InferencePipelines::Rows.new(client: client)
        @test_results = Openlayer::Resources::InferencePipelines::TestResults.new(client: client)
      end
    end
  end
end
