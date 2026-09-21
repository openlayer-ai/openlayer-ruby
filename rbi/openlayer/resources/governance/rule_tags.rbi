# typed: strong

module Openlayer
  module Resources
    class Governance
      class RuleTags
        # List the rule tags in a workspace.
        #
        # Tags group rules across frameworks, for example by team or by control family.
        # Use the ids returned here with the `tags` filter on
        # [List rules](/api-reference/rest/governance/list-rules).
        sig do
          params(
            workspace_id: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleTagListResponse)
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
