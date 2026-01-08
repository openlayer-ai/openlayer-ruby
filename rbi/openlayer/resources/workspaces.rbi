# typed: strong

module Openlayer
  module Resources
    class Workspaces
      sig { returns(Openlayer::Resources::Workspaces::Invites) }
      attr_reader :invites

      sig { returns(Openlayer::Resources::Workspaces::APIKeys) }
      attr_reader :api_keys

      # Retrieve a workspace by its ID.
      sig do
        params(
          workspace_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::WorkspaceRetrieveResponse)
      end
      def retrieve(
        # The workspace id.
        workspace_id,
        request_options: {}
      )
      end

      # Update a workspace.
      sig do
        params(
          workspace_id: String,
          invite_code: String,
          name: String,
          slug: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::WorkspaceUpdateResponse)
      end
      def update(
        # The workspace id.
        workspace_id,
        # The workspace invite code.
        invite_code: nil,
        # The workspace name.
        name: nil,
        # The workspace slug.
        slug: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Openlayer::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
