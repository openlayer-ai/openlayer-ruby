# frozen_string_literal: true

module Openlayer
  module Resources
    class InferencePipelines
      class Rows
        # Update an inference data point in an inference pipeline.
        #
        # @overload update(inference_pipeline_id, inference_id:, row:, config: nil, request_options: {})
        #
        # @param inference_pipeline_id [String] Path param: The inference pipeline id (a UUID).
        #
        # @param inference_id [String] Query param: Specify the inference id as a query param.
        #
        # @param row [Object] Body param
        #
        # @param config [Openlayer::Models::InferencePipelines::RowUpdateParams::Config, nil] Body param
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::InferencePipelines::RowUpdateResponse]
        #
        # @see Openlayer::Models::InferencePipelines::RowUpdateParams
        def update(inference_pipeline_id, params)
          parsed, options = Openlayer::InferencePipelines::RowUpdateParams.dump_request(params)
          query_params = [:inference_id]
          @client.request(
            method: :put,
            path: ["inference-pipelines/%1$s/rows", inference_pipeline_id],
            query: parsed.slice(*query_params).transform_keys(inference_id: "inferenceId"),
            body: parsed.except(*query_params),
            model: Openlayer::Models::InferencePipelines::RowUpdateResponse,
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
