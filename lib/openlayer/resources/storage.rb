# frozen_string_literal: true

module Openlayer
  module Resources
    class Storage
      # @return [Openlayer::Resources::Storage::PresignedURL]
      attr_reader :presigned_url

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
        @presigned_url = Openlayer::Resources::Storage::PresignedURL.new(client: client)
      end
    end
  end
end
