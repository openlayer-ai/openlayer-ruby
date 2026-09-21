# typed: strong

module Openlayer
  module Resources
    class Storage
      class PresignedURL
        # Retrieve a presigned url to post storage artifacts.
        sig do
          params(
            object_name: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Storage::PresignedURLCreateResponse)
        end
        def create(
          # The name of the object.
          object_name:,
          request_options: {}
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
        sig do
          params(
            storage_uri: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Storage::PresignedURLRetrieveResponse)
        end
        def retrieve(
          # The object's storage uri.
          storage_uri:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Openlayer::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
