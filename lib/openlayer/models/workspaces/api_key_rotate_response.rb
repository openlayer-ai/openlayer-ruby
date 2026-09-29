# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#rotate
      class APIKeyRotateResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute expires_at
        #   When the key stops authenticating. `null` means the key never expires. Set when
        #   the key is created or rotated, and must be in the future. When the request is
        #   authenticated with an API key that expires, the result can't be later than that
        #   key's expiry. On create, omit it to inherit that expiry. On rotate, omit it to
        #   keep the current one. It can't be changed with an update; rotate the key
        #   instead.
        #
        #   @return [Time, nil]
        optional :expires_at, Time, api_name: :expiresAt, nil?: true

        # @!attribute name
        #   The API key name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        response_only do
          # @!attribute id
          #   The API key id.
          #
          #   @return [String]
          required :id, String

          # @!attribute date_created
          #   The API key creation date.
          #
          #   @return [Time]
          required :date_created, Time, api_name: :dateCreated

          # @!attribute date_last_used
          #   The API key last use date.
          #
          #   @return [Time, nil]
          required :date_last_used, Time, api_name: :dateLastUsed, nil?: true

          # @!attribute date_updated
          #   The API key last update date.
          #
          #   @return [Time]
          required :date_updated, Time, api_name: :dateUpdated

          # @!attribute secure_key
          #   An obfuscated hint of the API key value. When a key is created or rotated this
          #   also holds the full secret, for backward compatibility; prefer `secret`.
          #
          #   @return [String]
          required :secure_key, String, api_name: :secureKey

          # @!attribute status
          #   The key's lifecycle state. `active`: the current secret authenticates.
          #   `rotating`: the key was rotated and the previous secret still authenticates
          #   until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed, no secret
          #   authenticates, and the key can't be rotated.
          #
          #   @return [Symbol, Openlayer::Models::Workspaces::APIKeyRotateResponse::Status]
          required :status, enum: -> { Openlayer::Models::Workspaces::APIKeyRotateResponse::Status }

          # @!attribute last_rotated_at
          #   When the key was last rotated.
          #
          #   @return [Time, nil]
          optional :last_rotated_at, Time, api_name: :lastRotatedAt, nil?: true

          # @!attribute previous_key_expires_at
          #   While `status` is `rotating`, when the previous secret stops authenticating.
          #
          #   @return [Time, nil]
          optional :previous_key_expires_at, Time, api_name: :previousKeyExpiresAt, nil?: true

          # @!attribute secret
          #   The full API key. Only present in the response that creates or rotates the key,
          #   and never shown again.
          #
          #   @return [String, nil]
          optional :secret, String
        end

        # @!method initialize(id:, date_created:, date_last_used:, date_updated:, secure_key:, status:, expires_at: nil, last_rotated_at: nil, name: nil, previous_key_expires_at: nil, secret: nil)
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Workspaces::APIKeyRotateResponse} for more details.
        #
        #   @param id [String] The API key id.
        #
        #   @param date_created [Time] The API key creation date.
        #
        #   @param date_last_used [Time, nil] The API key last use date.
        #
        #   @param date_updated [Time] The API key last update date.
        #
        #   @param secure_key [String] An obfuscated hint of the API key value. When a key is created or rotated this a
        #
        #   @param status [Symbol, Openlayer::Models::Workspaces::APIKeyRotateResponse::Status] The key's lifecycle state. `active`: the current secret authenticates. `rotating
        #
        #   @param expires_at [Time, nil] When the key stops authenticating. `null` means the key never expires. Set when
        #
        #   @param last_rotated_at [Time, nil] When the key was last rotated.
        #
        #   @param name [String, nil] The API key name.
        #
        #   @param previous_key_expires_at [Time, nil] While `status` is `rotating`, when the previous secret stops authenticating.
        #
        #   @param secret [String] The full API key. Only present in the response that creates or rotates the key,

        # The key's lifecycle state. `active`: the current secret authenticates.
        # `rotating`: the key was rotated and the previous secret still authenticates
        # until `previousKeyExpiresAt`. `expired`: `expiresAt` has passed, no secret
        # authenticates, and the key can't be rotated.
        #
        # @see Openlayer::Models::Workspaces::APIKeyRotateResponse#status
        module Status
          extend Openlayer::Internal::Type::Enum

          ACTIVE = :active
          ROTATING = :rotating
          EXPIRED = :expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
