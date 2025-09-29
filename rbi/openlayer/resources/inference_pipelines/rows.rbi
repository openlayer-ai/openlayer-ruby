# typed: strong

module Openlayer
  module Resources
    class InferencePipelines
      class Rows
        # Update an inference data point in an inference pipeline.
        sig do
          params(
            inference_pipeline_id: String,
            inference_id: String,
            row: T.anything,
            config:
              T.nilable(
                Openlayer::InferencePipelines::RowUpdateParams::Config::OrHash
              ),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::InferencePipelines::RowUpdateResponse)
        end
        def update(
          # Path param: The inference pipeline id (a UUID).
          inference_pipeline_id,
          # Query param: Specify the inference id as a query param.
          inference_id:,
          # Body param:
          row:,
          # Body param:
          config: nil,
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
