# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#update
      class APIKeyUpdateParams < Openlayer::Internal::Type::BaseModel
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

        # @!attribute name
        #   The API key name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(workspace_id:, api_key_id:, name: nil, request_options: {})
        #   @param workspace_id [String]
        #
        #   @param api_key_id [String]
        #
        #   @param name [String, nil] The API key name.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
