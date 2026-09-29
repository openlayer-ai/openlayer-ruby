# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#rotate
      class APIKeyRotateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute workspace_id
        #
        #   @return [String]
        required :workspace_id, String

        # @!attribute api_key_id
        #
        #   @return [String]
        required :api_key_id, String

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

        # @!attribute grace_period_hours
        #   Hours the previous secret keeps authenticating. The default of 0 retires it
        #   immediately. It never outlives `expiresAt`. Only one previous secret is kept, so
        #   rotating again during a grace period retires the older one immediately.
        #
        #   @return [Integer, nil]
        optional :grace_period_hours, Integer, api_name: :gracePeriodHours

        # @!method initialize(workspace_id:, api_key_id:, expires_at: nil, grace_period_hours: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Workspaces::APIKeyRotateParams} for more details.
        #
        #   @param workspace_id [String]
        #
        #   @param api_key_id [String]
        #
        #   @param expires_at [Time, nil] When the key stops authenticating. `null` means the key never expires. Set when
        #
        #   @param grace_period_hours [Integer] Hours the previous secret keeps authenticating. The default of 0 retires it imme
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
