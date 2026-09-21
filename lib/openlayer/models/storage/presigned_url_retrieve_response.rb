# frozen_string_literal: true

module Openlayer
  module Models
    module Storage
      # @see Openlayer::Resources::Storage::PresignedURL#retrieve
      class PresignedURLRetrieveResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute url
        #   The presigned url. Short-lived -- download promptly.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   @param url [String] The presigned url. Short-lived -- download promptly.
      end
    end
  end
end
