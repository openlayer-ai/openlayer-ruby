# typed: strong

module Openlayer
  module Resources
    class Workspaces
      class Invites
        # Invite users to a workspace.
        sig do
          params(
            workspace_id: String,
            emails: T::Array[String],
            role: Openlayer::Workspaces::InviteCreateParams::Role::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::InviteCreateResponse)
        end
        def create(
          # The workspace id.
          workspace_id,
          emails: nil,
          # The member role.
          role: nil,
          request_options: {}
        )
        end

        # Retrieve a list of invites in a workspace.
        sig do
          params(
            workspace_id: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::InviteListResponse)
        end
        def list(
          # The workspace id.
          workspace_id,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
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
end
