# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#update
    class InferencePipelineUpdateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute description
      #   The inference pipeline description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute name
      #   The inference pipeline name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute reference_dataset_uri
      #   The storage uri of your reference dataset. We recommend using the Python SDK or
      #   the UI to handle your reference dataset updates.
      #
      #   @return [String, nil]
      optional :reference_dataset_uri, String, api_name: :referenceDatasetUri, nil?: true

      # @!method initialize(description: nil, name: nil, reference_dataset_uri: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Openlayer::Models::InferencePipelineUpdateParams} for more details.
      #
      #   @param description [String, nil] The inference pipeline description.
      #
      #   @param name [String] The inference pipeline name.
      #
      #   @param reference_dataset_uri [String, nil] The storage uri of your reference dataset. We recommend using the Python SDK or
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
