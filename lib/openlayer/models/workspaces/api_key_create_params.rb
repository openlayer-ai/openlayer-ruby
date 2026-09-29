# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#create
      class APIKeyCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute workspace_id
        #
        #   @return [String]
        required :workspace_id, String

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

        # @!method initialize(workspace_id:, expires_at: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Workspaces::APIKeyCreateParams} for more details.
        #
        #   @param workspace_id [String]
        #
        #   @param expires_at [Time, nil] When the key stops authenticating. `null` means the key never expires. Set when
        #
        #   @param name [String, nil] The API key name.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
