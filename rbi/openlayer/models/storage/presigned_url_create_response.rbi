# typed: strong

module Openlayer
  module Models
    module Storage
      class PresignedURLCreateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Storage::PresignedURLCreateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # The storage URI to send back to the backend after the upload was completed.
        sig { returns(String) }
        attr_accessor :storage_uri

        # The presigned url.
        sig { returns(String) }
        attr_accessor :url

        # Fields to include in the body of the upload. Only needed by s3
        sig { returns(T.nilable(T.anything)) }
        attr_reader :fields

        sig { params(fields: T.anything).void }
        attr_writer :fields

        sig do
          params(storage_uri: String, url: String, fields: T.anything).returns(
            T.attached_class
          )
        end
        def self.new(
          # The storage URI to send back to the backend after the upload was completed.
          storage_uri:,
          # The presigned url.
          url:,
          # Fields to include in the body of the upload. Only needed by s3
          fields: nil
        )
        end

        sig do
          override.returns(
            { storage_uri: String, url: String, fields: T.anything }
          )
        end
        def to_hash
        end
      end
    end
  end
end
