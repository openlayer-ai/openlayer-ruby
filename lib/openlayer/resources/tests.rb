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

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
