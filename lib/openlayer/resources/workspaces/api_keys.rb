# frozen_string_literal: true

module Openlayer
  module Resources
    class Workspaces
      class APIKeys
        # Create a new API key in a workspace.
        #
        # @overload create(workspace_id, name: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param name [String, nil] The API key name.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::APIKeyCreateResponse]
        #
        # @see Openlayer::Models::Workspaces::APIKeyCreateParams
        def create(workspace_id, params = {})
          parsed, options = Openlayer::Workspaces::APIKeyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["workspaces/%1$s/api-keys", workspace_id],
            body: parsed,
            model: Openlayer::Models::Workspaces::APIKeyCreateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Openlayer::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
