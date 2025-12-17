# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Tests#evaluate
    class TestEvaluateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute end_timestamp
      #   End timestamp in seconds (Unix epoch)
      #
      #   @return [Integer]
      required :end_timestamp, Integer, api_name: :endTimestamp

      # @!attribute start_timestamp
      #   Start timestamp in seconds (Unix epoch)
      #
      #   @return [Integer]
      required :start_timestamp, Integer, api_name: :startTimestamp

      # @!attribute inference_pipeline_id
      #   ID of the inference pipeline to evaluate. If not provided, all inference
      #   pipelines the test applies to will be evaluated.
      #
      #   @return [String, nil]
      optional :inference_pipeline_id, String, api_name: :inferencePipelineId

      # @!attribute overwrite_results
      #   Whether to overwrite existing test results
      #
      #   @return [Boolean, nil]
      optional :overwrite_results, Openlayer::Internal::Type::Boolean, api_name: :overwriteResults

      # @!method initialize(end_timestamp:, start_timestamp:, inference_pipeline_id: nil, overwrite_results: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Openlayer::Models::TestEvaluateParams} for more details.
      #
      #   @param end_timestamp [Integer] End timestamp in seconds (Unix epoch)
      #
      #   @param start_timestamp [Integer] Start timestamp in seconds (Unix epoch)
      #
      #   @param inference_pipeline_id [String] ID of the inference pipeline to evaluate. If not provided, all inference pipelin
      #
      #   @param overwrite_results [Boolean] Whether to overwrite existing test results
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
