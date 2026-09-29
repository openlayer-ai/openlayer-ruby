# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyRotateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Workspaces::APIKeyRotateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        sig { returns(String) }
        attr_accessor :api_key_id

        # When the key stops authenticating. `null` means the key never expires. Set when
        # the key is created or rotated, and must be in the future. When the request is
        # authenticated with an API key that expires, the result can't be later than that
        # key's expiry. On create, omit it to inherit that expiry. On rotate, omit it to
        # keep the current one. It can't be changed with an update; rotate the key
        # instead.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Hours the previous secret keeps authenticating. The default of 0 retires it
        # immediately. It never outlives `expiresAt`. Only one previous secret is kept, so
        # rotating again during a grace period retires the older one immediately.
        sig { returns(T.nilable(Integer)) }
        attr_reader :grace_period_hours

        sig { params(grace_period_hours: Integer).void }
        attr_writer :grace_period_hours

        sig do
          params(
            workspace_id: String,
            api_key_id: String,
            expires_at: T.nilable(Time),
            grace_period_hours: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          api_key_id:,
          # When the key stops authenticating. `null` means the key never expires. Set when
          # the key is created or rotated, and must be in the future. When the request is
          # authenticated with an API key that expires, the result can't be later than that
          # key's expiry. On create, omit it to inherit that expiry. On rotate, omit it to
          # keep the current one. It can't be changed with an update; rotate the key
          # instead.
          expires_at: nil,
          # Hours the previous secret keeps authenticating. The default of 0 retires it
          # immediately. It never outlives `expiresAt`. Only one previous secret is kept, so
          # rotating again during a grace period retires the older one immediately.
          grace_period_hours: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              api_key_id: String,
              expires_at: T.nilable(Time),
              grace_period_hours: Integer,
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
