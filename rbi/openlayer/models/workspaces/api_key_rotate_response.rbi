# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyRotateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Workspaces::APIKeyRotateResponse,
              Openlayer::Internal::AnyHash
            )
          end

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

        # The API key id.
        sig { returns(String) }
        attr_accessor :id

        # The API key creation date.
        sig { returns(Time) }
        attr_accessor :date_created

        # The API key last use date.
        sig { returns(T.nilable(Time)) }
        attr_accessor :date_last_used

        # The API key last update date.
        sig { returns(Time) }
        attr_accessor :date_updated

        # An obfuscated hint of the API key value. When a key is created or rotated this
        # also holds the full secret, for backward compatibility; prefer `secret`.
        sig { returns(String) }
        attr_accessor :secure_key

        # The key's lifecycle state. `active`: the current secret authenticates.
        # `rotating`: the key was rotated and the previous secret still authenticates
        # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed, no secret
        # authenticates, and the key can't be rotated.
        sig do
          returns(
            Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # When the key was last rotated.
        sig { returns(T.nilable(Time)) }
        attr_accessor :last_rotated_at

        # While `status` is `rotating`, when the previous secret stops authenticating.
        sig { returns(T.nilable(Time)) }
        attr_accessor :previous_key_expires_at

        # The full API key. Only present in the response that creates or rotates the key,
        # and never shown again.
        sig { returns(T.nilable(String)) }
        attr_reader :secret

        sig { params(secret: String).void }
        attr_writer :secret

        sig do
          params(
            id: String,
            date_created: Time,
            date_last_used: T.nilable(Time),
            date_updated: Time,
            secure_key: String,
            status:
              Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::OrSymbol,
            expires_at: T.nilable(Time),
            last_rotated_at: T.nilable(Time),
            name: T.nilable(String),
            previous_key_expires_at: T.nilable(Time),
            secret: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The API key id.
          id:,
          # The API key creation date.
          date_created:,
          # The API key last use date.
          date_last_used:,
          # The API key last update date.
          date_updated:,
          # An obfuscated hint of the API key value. When a key is created or rotated this
          # also holds the full secret, for backward compatibility; prefer `secret`.
          secure_key:,
          # The key's lifecycle state. `active`: the current secret authenticates.
          # `rotating`: the key was rotated and the previous secret still authenticates
          # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed, no secret
          # authenticates, and the key can't be rotated.
          status:,
          # When the key stops authenticating. `null` means the key never expires. Set when
          # the key is created or rotated, and must be in the future. When the request is
          # authenticated with an API key that expires, the result can't be later than that
          # key's expiry. On create, omit it to inherit that expiry. On rotate, omit it to
          # keep the current one. It can't be changed with an update; rotate the key
          # instead.
          expires_at: nil,
          # When the key was last rotated.
          last_rotated_at: nil,
          # The API key name.
          name: nil,
          # While `status` is `rotating`, when the previous secret stops authenticating.
          previous_key_expires_at: nil,
          # The full API key. Only present in the response that creates or rotates the key,
          # and never shown again.
          secret: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              date_created: Time,
              date_last_used: T.nilable(Time),
              date_updated: Time,
              secure_key: String,
              status:
                Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::TaggedSymbol,
              expires_at: T.nilable(Time),
              last_rotated_at: T.nilable(Time),
              name: T.nilable(String),
              previous_key_expires_at: T.nilable(Time),
              secret: String
            }
          )
        end
        def to_hash
        end

        # The key's lifecycle state. `active`: the current secret authenticates.
        # `rotating`: the key was rotated and the previous secret still authenticates
        # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed, no secret
        # authenticates, and the key can't be rotated.
        module Status
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Models::Workspaces::APIKeyRotateResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::TaggedSymbol
            )
          ROTATING =
            T.let(
              :rotating,
              Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Workspaces::APIKeyRotateResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
