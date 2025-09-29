# frozen_string_literal: true

module Openlayer
  module Resources
    class InferencePipelines
      class Data
        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::InferencePipelines::DataStreamParams} for more details.
        #
        # Publish an inference data point to an inference pipeline.
        #
        # @overload stream(inference_pipeline_id, config:, rows:, request_options: {})
        #
        # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
        #
        # @param config [Openlayer::Models::InferencePipelines::DataStreamParams::Config::LlmData, Openlayer::Models::InferencePipelines::DataStreamParams::Config::TabularClassificationData, Openlayer::Models::InferencePipelines::DataStreamParams::Config::TabularRegressionData, Openlayer::Models::InferencePipelines::DataStreamParams::Config::TextClassificationData] Configuration for the data stream. Depends on your \*\*Openlayer project task
        # type
        #
        # @param rows [Array<Hash{Symbol=>Object}>] A list of inference data points with inputs and outputs
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::InferencePipelines::DataStreamResponse]
        #
        # @see Openlayer::Models::InferencePipelines::DataStreamParams
        def stream(inference_pipeline_id, params)
          parsed, options = Openlayer::InferencePipelines::DataStreamParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["inference-pipelines/%1$s/data-stream", inference_pipeline_id],
            body: parsed,
            model: Openlayer::Models::InferencePipelines::DataStreamResponse,
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
