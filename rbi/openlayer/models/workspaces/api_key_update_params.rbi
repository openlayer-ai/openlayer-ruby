# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Workspaces::APIKeyUpdateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        sig { returns(String) }
        attr_accessor :api_key_id

        # The API key name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            workspace_id: String,
            api_key_id: String,
            name: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          api_key_id:,
          # The API key name.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              api_key_id: String,
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
