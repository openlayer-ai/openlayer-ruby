# typed: strong

module Openlayer
  module Resources
    class InferencePipelines
      class Data
        # Publish an inference data point to an inference pipeline.
        sig do
          params(
            inference_pipeline_id: String,
            config:
              T.any(
                Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::OrHash,
                Openlayer::InferencePipelines::DataStreamParams::Config::TabularClassificationData::OrHash,
                Openlayer::InferencePipelines::DataStreamParams::Config::TabularRegressionData::OrHash,
                Openlayer::InferencePipelines::DataStreamParams::Config::TextClassificationData::OrHash
              ),
            rows: T::Array[T::Hash[Symbol, T.anything]],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::InferencePipelines::DataStreamResponse)
        end
        def stream(
          # The inference pipeline id (a UUID).
          inference_pipeline_id,
          # Configuration for the data stream. Depends on your **Openlayer project task
          # type**.
          config:,
          # A list of inference data points with inputs and outputs
          rows:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Openlayer::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
