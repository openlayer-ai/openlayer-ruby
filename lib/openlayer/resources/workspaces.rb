# frozen_string_literal: true

module Openlayer
  module Resources
    class Workspaces
      # @return [Openlayer::Resources::Workspaces::Invites]
      attr_reader :invites

      # @return [Openlayer::Resources::Workspaces::APIKeys]
      attr_reader :api_keys

      # Retrieve a workspace by its ID.
      #
      # @overload retrieve(workspace_id, request_options: {})
      #
      # @param workspace_id [String] The workspace id.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::WorkspaceRetrieveResponse]
      #
      # @see Openlayer::Models::WorkspaceRetrieveParams
      def retrieve(workspace_id, params = {})
        @client.request(
          method: :get,
          path: ["workspaces/%1$s", workspace_id],
          model: Openlayer::Models::WorkspaceRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a workspace.
      #
      # @overload update(workspace_id, invite_code: nil, name: nil, slug: nil, request_options: {})
      #
      # @param workspace_id [String] The workspace id.
      #
      # @param invite_code [String] The workspace invite code.
      #
      # @param name [String] The workspace name.
      #
      # @param slug [String] The workspace slug.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::WorkspaceUpdateResponse]
      #
      # @see Openlayer::Models::WorkspaceUpdateParams
      def update(workspace_id, params = {})
        parsed, options = Openlayer::WorkspaceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["workspaces/%1$s", workspace_id],
          body: parsed,
          model: Openlayer::Models::WorkspaceUpdateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
        @invites = Openlayer::Resources::Workspaces::Invites.new(client: client)
        @api_keys = Openlayer::Resources::Workspaces::APIKeys.new(client: client)
      end
    end
  end
end
