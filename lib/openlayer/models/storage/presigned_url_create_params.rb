# frozen_string_literal: true

module Openlayer
  module Models
    module Storage
      # @see Openlayer::Resources::Storage::PresignedURL#create
      class PresignedURLCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute object_name
        #   The name of the object.
        #
        #   @return [String]
        required :object_name, String

        # @!method initialize(object_name:, request_options: {})
        #   @param object_name [String] The name of the object.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
