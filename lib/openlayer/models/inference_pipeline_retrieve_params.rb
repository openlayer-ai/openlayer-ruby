# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#retrieve
    class InferencePipelineRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute inference_pipeline_id
      #
      #   @return [String]
      required :inference_pipeline_id, String

      # @!attribute expand
      #   Expand specific nested objects.
      #
      #   @return [Array<Symbol, Openlayer::Models::InferencePipelineRetrieveParams::Expand>, nil]
      optional :expand,
               -> { Openlayer::Internal::Type::ArrayOf[enum: Openlayer::InferencePipelineRetrieveParams::Expand] }

      # @!method initialize(inference_pipeline_id:, expand: nil, request_options: {})
      #   @param inference_pipeline_id [String]
      #
      #   @param expand [Array<Symbol, Openlayer::Models::InferencePipelineRetrieveParams::Expand>] Expand specific nested objects.
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

      module Expand
        extend Openlayer::Internal::Type::Enum

        PROJECT = :project
        WORKSPACE = :workspace

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
