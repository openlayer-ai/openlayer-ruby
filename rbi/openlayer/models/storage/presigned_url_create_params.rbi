# typed: strong

module Openlayer
  module Models
    module Storage
      class PresignedURLCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Storage::PresignedURLCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        # The name of the object.
        sig { returns(String) }
        attr_accessor :object_name

        sig do
          params(
            object_name: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the object.
          object_name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { object_name: String, request_options: Openlayer::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
