# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Workspaces::APIKeyCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        # The API key name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            name: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The API key name.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: T.nilable(String),
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
