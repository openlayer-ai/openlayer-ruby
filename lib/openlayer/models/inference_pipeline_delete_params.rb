# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#delete
    class InferencePipelineDeleteParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute inference_pipeline_id
      #
      #   @return [String]
      required :inference_pipeline_id, String

      # @!method initialize(inference_pipeline_id:, request_options: {})
      #   @param inference_pipeline_id [String]
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
