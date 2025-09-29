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

        # @api private
        sig { params(client: Openlayer::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
