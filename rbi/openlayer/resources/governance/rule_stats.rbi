# typed: strong

module Openlayer
  module Resources
    class Governance
      class RuleStats
        # Get a compliance roll-up for a workspace: how many rules exist, and how many of
        # their results are passing, failing, pending, or due for renewal.
        #
        # Counts respect the filters you pass, so `frameworkId` gives you a single
        # framework's overall compliance and `projectId` gives you a single project's.
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
