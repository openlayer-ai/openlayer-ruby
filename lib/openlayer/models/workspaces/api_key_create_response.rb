# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#create
      class APIKeyCreateResponse < Openlayer::Internal::Type::BaseModel
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
          #   The API key value.
          #
          #   @return [String]
          required :secure_key, String, api_name: :secureKey
        end

        # @!method initialize(id:, date_created:, date_last_used:, date_updated:, secure_key:, name: nil)
        #   @param id [String] The API key id.
        #
        #   @param date_created [Time] The API key creation date.
        #
        #   @param date_last_used [Time, nil] The API key last use date.
        #
        #   @param date_updated [Time] The API key last update date.
        #
        #   @param secure_key [String] The API key value.
        #
        #   @param name [String, nil] The API key name.
      end
    end
  end
end
