# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyDeleteParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Workspaces::APIKeyDeleteParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        sig { returns(String) }
        attr_accessor :api_key_id

        sig do
          params(
            workspace_id: String,
            api_key_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(workspace_id:, api_key_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              api_key_id: String,
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
