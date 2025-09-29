# frozen_string_literal: true

module Openlayer
  module Resources
    class InferencePipelines
      class TestResults
        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::InferencePipelines::TestResultListParams} for more details.
        #
        # List the latest test results for an inference pipeline.
        #
        # @overload list(inference_pipeline_id, page: nil, per_page: nil, status: nil, type: nil, request_options: {})
        #
        # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param status [Symbol, Openlayer::Models::InferencePipelines::TestResultListParams::Status] Filter list of test results by status. Available statuses are `running`, `passin
        #
        # @param type [Symbol, Openlayer::Models::InferencePipelines::TestResultListParams::Type] Filter objects by test type. Available types are `integrity`, `consistency`, `pe
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::InferencePipelines::TestResultListResponse]
        #
        # @see Openlayer::Models::InferencePipelines::TestResultListParams
        def list(inference_pipeline_id, params = {})
          parsed, options = Openlayer::InferencePipelines::TestResultListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["inference-pipelines/%1$s/results", inference_pipeline_id],
            query: parsed.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::InferencePipelines::TestResultListResponse,
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
end
