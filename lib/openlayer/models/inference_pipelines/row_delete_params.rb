# frozen_string_literal: true

module Openlayer
  module Models
    module InferencePipelines
      # @see Openlayer::Resources::InferencePipelines::Rows#delete
      class RowDeleteParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute inference_pipeline_id
        #
        #   @return [String]
        required :inference_pipeline_id, String

        # @!attribute inference_id
        #
        #   @return [String]
        required :inference_id, String

        # @!method initialize(inference_pipeline_id:, inference_id:, request_options: {})
        #   @param inference_pipeline_id [String]
        #   @param inference_id [String]
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
