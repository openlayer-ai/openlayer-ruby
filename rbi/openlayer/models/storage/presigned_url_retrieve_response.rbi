# typed: strong

module Openlayer
  module Models
    module Storage
      class PresignedURLRetrieveResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Storage::PresignedURLRetrieveResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # The presigned url. Short-lived -- download promptly.
        sig { returns(String) }
        attr_accessor :url

        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # The presigned url. Short-lived -- download promptly.
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end
    end
  end
end
