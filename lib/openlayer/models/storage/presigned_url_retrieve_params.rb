# frozen_string_literal: true

module Openlayer
  module Models
    module Storage
      # @see Openlayer::Resources::Storage::PresignedURL#retrieve
      class PresignedURLRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute storage_uri
        #   The object's storage uri.
        #
        #   @return [String]
        required :storage_uri, String

        # @!method initialize(storage_uri:, request_options: {})
        #   @param storage_uri [String] The object's storage uri.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
