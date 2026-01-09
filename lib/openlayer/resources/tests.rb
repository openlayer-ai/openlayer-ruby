# frozen_string_literal: true

module Openlayer
  module Resources
    class Tests
      # Some parameter documentations has been truncated, see
      # {Openlayer::Models::TestEvaluateParams} for more details.
      #
      # Triggers one-off evaluation of a specific monitoring test for a custom timestamp
      # range. This allows evaluating tests for historical data or custom time periods
      # outside the regular evaluation window schedule. It also allows overwriting the
      # existing test results.
      #
      # @overload evaluate(test_id, end_timestamp:, start_timestamp:, inference_pipeline_id: nil, overwrite_results: nil, request_options: {})
      #
      # @param test_id [String] The test id.
      #
      # @param end_timestamp [Integer] End timestamp in seconds (Unix epoch)
      #
      # @param start_timestamp [Integer] Start timestamp in seconds (Unix epoch)
      #
      # @param inference_pipeline_id [String] ID of the inference pipeline to evaluate. If not provided, all inference pipelin
      #
      # @param overwrite_results [Boolean] Whether to overwrite existing test results
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::TestEvaluateResponse]
      #
      # @see Openlayer::Models::TestEvaluateParams
      def evaluate(test_id, params)
        parsed, options = Openlayer::TestEvaluateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["tests/%1$s/evaluate", test_id],
          body: parsed,
          model: Openlayer::Models::TestEvaluateResponse,
          options: options
        )
      end

      # List the test results for a test.
      #
      # @overload list_results(test_id, end_timestamp: nil, include_insights: nil, inference_pipeline_id: nil, page: nil, per_page: nil, project_version_id: nil, start_timestamp: nil, status: nil, request_options: {})
      #
      # @param test_id [String] The test id.
      #
      # @param end_timestamp [Float] Filter for results that use data starting before the end timestamp.
      #
      # @param include_insights [Boolean] Include the insights linked to each test result
      #
      # @param inference_pipeline_id [String, nil] Retrive test results for a specific inference pipeline.
      #
      # @param page [Integer] The page to return in a paginated query.
      #
      # @param per_page [Integer] Maximum number of items to return per page.
      #
      # @param project_version_id [String, nil] Retrive test results for a specific project version.
      #
      # @param start_timestamp [Float] Filter for results that use data ending after the start timestamp.
      #
      # @param status [Array<String>] Filter by status(es).
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::TestListResultsResponse]
      #
      # @see Openlayer::Models::TestListResultsParams
      def list_results(test_id, params = {})
        parsed, options = Openlayer::TestListResultsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["tests/%1$s/results", test_id],
          query: parsed.transform_keys(
            end_timestamp: "endTimestamp",
            include_insights: "includeInsights",
            inference_pipeline_id: "inferencePipelineId",
            per_page: "perPage",
            project_version_id: "projectVersionId",
            start_timestamp: "startTimestamp"
          ),
          model: Openlayer::Models::TestListResultsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
