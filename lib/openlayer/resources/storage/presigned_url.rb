# frozen_string_literal: true

module Openlayer
  module Resources
    class Storage
      class PresignedURL
        # Get a presigned url to upload a file.
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
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :post,
            path: "storage/presigned-url",
            query: query.transform_keys(object_name: "objectName"),
            model: Openlayer::Models::Storage::PresignedURLCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Storage::PresignedURLRetrieveParams} for more details.
        #
        # Get a short-lived download url for a stored object.
        #
        # @overload retrieve(storage_uri:, request_options: {})
        #
        # @param storage_uri [String] The object's storage uri, for example `outputs.storageUri` from a framework expo
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Storage::PresignedURLRetrieveResponse]
        #
        # @see Openlayer::Models::Storage::PresignedURLRetrieveParams
        def retrieve(params)
          parsed, options = Openlayer::Storage::PresignedURLRetrieveParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "storage/presigned-url",
            query: query.transform_keys(storage_uri: "storageUri"),
            model: Openlayer::Models::Storage::PresignedURLRetrieveResponse,
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
