# frozen_string_literal: true

module Openlayer
  module Resources
    class Storage
      class PresignedURL
        # Retrieve a presigned url to post storage artifacts.
        #
        # @overload create(object_name:, request_options: {})
        #
        # @param object_name [String] The name of the object.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Storage::PresignedURLCreateResponse]
        #
        # @see Openlayer::Models::Storage::PresignedURLCreateParams
        def create(params)
          parsed, options = Openlayer::Storage::PresignedURLCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "storage/presigned-url",
            query: parsed.transform_keys(object_name: "objectName"),
            model: Openlayer::Models::Storage::PresignedURLCreateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Openlayer::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
