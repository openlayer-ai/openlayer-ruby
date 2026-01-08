# frozen_string_literal: true

module Openlayer
  module Resources
    class Workspaces
      class Invites
        # Invite users to a workspace.
        #
        # @overload create(workspace_id, emails: nil, role: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param emails [Array<String>]
        #
        # @param role [Symbol, Openlayer::Models::Workspaces::InviteCreateParams::Role] The member role.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::InviteCreateResponse]
        #
        # @see Openlayer::Models::Workspaces::InviteCreateParams
        def create(workspace_id, params = {})
          parsed, options = Openlayer::Workspaces::InviteCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["workspaces/%1$s/invites", workspace_id],
            body: parsed,
            model: Openlayer::Models::Workspaces::InviteCreateResponse,
            options: options
          )
        end

        # Retrieve a list of invites in a workspace.
        #
        # @overload list(workspace_id, page: nil, per_page: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::InviteListResponse]
        #
        # @see Openlayer::Models::Workspaces::InviteListParams
        def list(workspace_id, params = {})
          parsed, options = Openlayer::Workspaces::InviteListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/invites", workspace_id],
            query: parsed.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Workspaces::InviteListResponse,
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
