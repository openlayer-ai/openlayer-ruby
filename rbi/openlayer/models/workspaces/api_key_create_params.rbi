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

        sig { returns(String) }
        attr_accessor :workspace_id

        # When the key stops authenticating. `null` means the key never expires. Set when
        # the key is created or rotated, and must be in the future. When the request is
        # authenticated with an API key that expires, the result can't be later than that
        # key's expiry. On create, omit it to inherit that expiry. On rotate, omit it to
        # keep the current one. It can't be changed with an update; rotate the key
        # instead.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # The API key name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            workspace_id: String,
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          # When the key stops authenticating. `null` means the key never expires. Set when
          # the key is created or rotated, and must be in the future. When the request is
          # authenticated with an API key that expires, the result can't be later than that
          # key's expiry. On create, omit it to inherit that expiry. On rotate, omit it to
          # keep the current one. It can't be changed with an update; rotate the key
          # instead.
          expires_at: nil,
          # The API key name.
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              expires_at: T.nilable(Time),
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
