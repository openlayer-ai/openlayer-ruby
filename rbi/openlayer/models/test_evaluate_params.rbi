# typed: strong

module Openlayer
  module Models
    class TestEvaluateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::TestEvaluateParams, Openlayer::Internal::AnyHash)
        end

      # End timestamp in seconds (Unix epoch)
      sig { returns(Integer) }
      attr_accessor :end_timestamp

      # Start timestamp in seconds (Unix epoch)
      sig { returns(Integer) }
      attr_accessor :start_timestamp

      # ID of the inference pipeline to evaluate. If not provided, all inference
      # pipelines the test applies to will be evaluated.
      sig { returns(T.nilable(String)) }
      attr_reader :inference_pipeline_id

      sig { params(inference_pipeline_id: String).void }
      attr_writer :inference_pipeline_id

      # Whether to overwrite existing test results
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :overwrite_results

      sig { params(overwrite_results: T::Boolean).void }
      attr_writer :overwrite_results

      sig do
        params(
          end_timestamp: Integer,
          start_timestamp: Integer,
          inference_pipeline_id: String,
          overwrite_results: T::Boolean,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # End timestamp in seconds (Unix epoch)
        end_timestamp:,
        # Start timestamp in seconds (Unix epoch)
        start_timestamp:,
        # ID of the inference pipeline to evaluate. If not provided, all inference
        # pipelines the test applies to will be evaluated.
        inference_pipeline_id: nil,
        # Whether to overwrite existing test results
        overwrite_results: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            end_timestamp: Integer,
            start_timestamp: Integer,
            inference_pipeline_id: String,
            overwrite_results: T::Boolean,
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
