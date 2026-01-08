# typed: strong

module Openlayer
  module Resources
    class Workspaces
      class APIKeys
        # Create a new API key in a workspace.
        sig do
          params(
            workspace_id: String,
            name: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Workspaces::APIKeyCreateResponse)
        end
        def create(
          # The workspace id.
          workspace_id,
          # The API key name.
          name: nil,
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
