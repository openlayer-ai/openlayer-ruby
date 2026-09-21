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
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :post,
            path: "storage/presigned-url",
            query: query.transform_keys(object_name: "objectName"),
            model: Openlayer::Models::Storage::PresignedURLCreateResponse,
            options: options
          )
        end

        # Exchange a `storageUri` for a short-lived presigned url you can download the
        # object from.
        #
        # Use it to collect anything the platform stored on your behalf -- for example the
        # archive a framework export leaves behind, whose `storageUri` comes back in the
        # background task's `outputs`.
        #
        # The workspace is taken from the API key, so there is nothing else to send. The
        # url is only issued for objects your workspace owns, and `404` covers both "no
        # such object" and "not yours".
        #
        # @overload retrieve(storage_uri:, request_options: {})
        #
        # @param storage_uri [String] The object's storage uri.
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
