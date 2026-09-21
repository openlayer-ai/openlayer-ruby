# typed: strong

module Openlayer
  module Models
    module Storage
      class PresignedURLRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Storage::PresignedURLRetrieveParams,
              Openlayer::Internal::AnyHash
            )
          end

        # The object's storage uri.
        sig { returns(String) }
        attr_accessor :storage_uri

        sig do
          params(
            storage_uri: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The object's storage uri.
          storage_uri:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { storage_uri: String, request_options: Openlayer::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
