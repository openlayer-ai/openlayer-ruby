# typed: strong

module Openlayer
  module Models
    module Workspaces
      class APIKeyCreateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Workspaces::APIKeyCreateResponse,
              Openlayer::Internal::AnyHash
            )
          end

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

        # The API key value.
        sig { returns(String) }
        attr_accessor :secure_key

        sig do
          params(
            id: String,
            date_created: Time,
            date_last_used: T.nilable(Time),
            date_updated: Time,
            secure_key: String,
            name: T.nilable(String)
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
          # The API key value.
          secure_key:,
          # The API key name.
          name: nil
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
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
