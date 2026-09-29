# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyListResponseItem < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Workspaces::APIKeyListResponseItem,
              Openlayer::Internal::AnyHash
            )
          end

        # When the key stops authenticating. `null` means the key never expires. Set when
        # the key is created or rotated, and must be in the future. When the request is
        # authenticated with an API key that expires, the result can't be later than that
        # key's expiry.
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
        # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed and no secret
        # authenticates.
        sig do
          returns(
            Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::TaggedSymbol
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
              Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::OrSymbol,
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
          # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed and no secret
          # authenticates.
          status:,
          # When the key stops authenticating. `null` means the key never expires. Set when
          # the key is created or rotated, and must be in the future. When the request is
          # authenticated with an API key that expires, the result can't be later than that
          # key's expiry.
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
                Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::TaggedSymbol,
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
        # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed and no secret
        # authenticates.
        module Status
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Models::Workspaces::APIKeyListResponseItem::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::TaggedSymbol
            )
          ROTATING =
            T.let(
              :rotating,
              Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Workspaces::APIKeyListResponseItem::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      APIKeyListResponse =
        T.let(
          Openlayer::Internal::Type::ArrayOf[
            Openlayer::Models::Workspaces::APIKeyListResponseItem
          ],
          Openlayer::Internal::Type::Converter
        )
    end
  end
end
