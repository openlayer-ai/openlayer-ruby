# typed: strong

module Openlayer
  module Resources
    class InferencePipelines
      sig { returns(Openlayer::Resources::InferencePipelines::Data) }
      attr_reader :data

      sig { returns(Openlayer::Resources::InferencePipelines::Rows) }
      attr_reader :rows

      sig { returns(Openlayer::Resources::InferencePipelines::TestResults) }
      attr_reader :test_results

      # Retrieve inference pipeline.
      sig do
        params(
          inference_pipeline_id: String,
          expand:
            T::Array[
              Openlayer::InferencePipelineRetrieveParams::Expand::OrSymbol
            ],
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::InferencePipelineRetrieveResponse)
      end
      def retrieve(
        # The inference pipeline id (a UUID).
        inference_pipeline_id,
        # Expand specific nested objects.
        expand: nil,
        request_options: {}
      )
      end

      # Update inference pipeline.
      sig do
        params(
          inference_pipeline_id: String,
          description: T.nilable(String),
          name: String,
          reference_dataset_uri: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::InferencePipelineUpdateResponse)
      end
      def update(
        # The inference pipeline id (a UUID).
        inference_pipeline_id,
        # The inference pipeline description.
        description: nil,
        # The inference pipeline name.
        name: nil,
        # The storage uri of your reference dataset. We recommend using the Python SDK or
        # the UI to handle your reference dataset updates.
        reference_dataset_uri: nil,
        request_options: {}
      )
      end

      # Delete inference pipeline.
      sig do
        params(
          inference_pipeline_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The inference pipeline id (a UUID).
        inference_pipeline_id,
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
