# typed: strong

module Openlayer
  module Resources
    class Storage
      class PresignedURL
        # Get a presigned url to upload a file.
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

        # Get a short-lived download url for a stored object.
        sig do
          params(
            storage_uri: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Storage::PresignedURLRetrieveResponse)
        end
        def retrieve(
          # The object's storage uri, for example `outputs.storageUri` from a framework
          # export's background task.
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
