# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class RuleTags
        # List the rule tags in a workspace.
        #
        # Tags group rules across frameworks, for example by team or by control family.
        # Use the ids returned here with the `tags` filter on
        # [List rules](/api-reference/rest/governance/list-rules).
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
        # @return [Openlayer::Models::Governance::RuleTagListResponse]
        #
        # @see Openlayer::Models::Governance::RuleTagListParams
        def list(workspace_id, params = {})
          parsed, options = Openlayer::Governance::RuleTagListParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/rule-tags", workspace_id],
            query: query.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Governance::RuleTagListResponse,
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
