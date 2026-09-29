# frozen_string_literal: true

module Openlayer
  module Models
    module Storage
      # @see Openlayer::Resources::Storage::PresignedURL#retrieve
      class PresignedURLRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute storage_uri
        #   The object's storage uri, for example `outputs.storageUri` from a framework
        #   export's background task.
        #
        #   @return [String]
        required :storage_uri, String

        # @!method initialize(storage_uri:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Storage::PresignedURLRetrieveParams} for more details.
        #
        #   @param storage_uri [String] The object's storage uri, for example `outputs.storageUri` from a framework expo
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
