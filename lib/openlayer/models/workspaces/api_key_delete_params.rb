# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#delete
      class APIKeyDeleteParams < Openlayer::Internal::Type::BaseModel
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

        # @!method initialize(workspace_id:, api_key_id:, request_options: {})
        #   @param workspace_id [String]
        #   @param api_key_id [String]
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
