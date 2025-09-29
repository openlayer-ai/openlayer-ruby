# frozen_string_literal: true

module Openlayer
  module Models
    module Storage
      # @see Openlayer::Resources::Storage::PresignedURL#create
      class PresignedURLCreateResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute storage_uri
        #   The storage URI to send back to the backend after the upload was completed.
        #
        #   @return [String]
        required :storage_uri, String, api_name: :storageUri

        # @!attribute url
        #   The presigned url.
        #
        #   @return [String]
        required :url, String

        # @!attribute fields
        #   Fields to include in the body of the upload. Only needed by s3
        #
        #   @return [Object, nil]
        optional :fields, Openlayer::Internal::Type::Unknown

        # @!method initialize(storage_uri:, url:, fields: nil)
        #   @param storage_uri [String] The storage URI to send back to the backend after the upload was completed.
        #
        #   @param url [String] The presigned url.
        #
        #   @param fields [Object] Fields to include in the body of the upload. Only needed by s3
      end
    end
  end
end
