# typed: strong

module Openlayer
  module Resources
    class Governance
      class RuleStats
        # Get compliance statistics for a workspace.
        sig do
          params(
            workspace_id: String,
            framework_id: String,
            project_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleStatRetrieveResponse)
        end
        def retrieve(
          # The workspace id.
          workspace_id,
          # Only include items belonging to this framework.
          framework_id: nil,
          # Only include items that apply to this project.
          project_id: nil,
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
