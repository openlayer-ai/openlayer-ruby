# typed: strong

module Openlayer
  module Resources
    class Workspaces
      class APIKeys
        # Create a new API key.
        sig do
          params(
            workspace_id: String,
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::APIKeyCreateResponse)
        end
        def create(
          # The workspace id.
          workspace_id,
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

        # Retrieve an API key.
        sig do
          params(
            api_key_id: String,
            workspace_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::APIKeyRetrieveResponse)
        end
        def retrieve(
          # The API key id.
          api_key_id,
          # The workspace id.
          workspace_id:,
          request_options: {}
        )
        end

        # Rename an API key.
        sig do
          params(
            api_key_id: String,
            workspace_id: String,
            name: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::APIKeyUpdateResponse)
        end
        def update(
          # Path param: The API key id.
          api_key_id,
          # Path param: The workspace id.
          workspace_id:,
          # Body param: The API key name.
          name: nil,
          request_options: {}
        )
        end

        # List your API keys in a workspace.
        sig do
          params(
            workspace_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            T::Array[Openlayer::Models::Workspaces::APIKeyListResponseItem]
          )
        end
        def list(
          # The workspace id.
          workspace_id,
          request_options: {}
        )
        end

        # Delete an API key.
        sig do
          params(
            api_key_id: String,
            workspace_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The API key id.
          api_key_id,
          # The workspace id.
          workspace_id:,
          request_options: {}
        )
        end

        # Replace an API key's secret.
        sig do
          params(
            api_key_id: String,
            workspace_id: String,
            expires_at: T.nilable(Time),
            grace_period_hours: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::APIKeyRotateResponse)
        end
        def rotate(
          # Path param: The API key id.
          api_key_id,
          # Path param: The workspace id.
          workspace_id:,
          # Body param: When the key stops authenticating. `null` means the key never
          # expires. Set when the key is created or rotated, and must be in the future. When
          # the request is authenticated with an API key that expires, the result can't be
          # later than that key's expiry. On create, omit it to inherit that expiry. On
          # rotate, omit it to keep the current one. It can't be changed with an update;
          # rotate the key instead.
          expires_at: nil,
          # Body param: Hours the previous secret keeps authenticating. The default of 0
          # retires it immediately. It never outlives `expiresAt`. Only one previous secret
          # is kept, so rotating again during a grace period retires the older one
          # immediately.
          grace_period_hours: nil,
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
