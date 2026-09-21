# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class RuleStats
        # Get a compliance roll-up for a workspace: how many rules exist, and how many of
        # their results are passing, failing, pending, or due for renewal.
        #
        # Counts respect the filters you pass, so `frameworkId` gives you a single
        # framework's overall compliance and `projectId` gives you a single project's.
        #
        # @overload retrieve(workspace_id, framework_id: nil, project_id: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param framework_id [String] Only include items belonging to this framework.
        #
        # @param project_id [String] Only include items that apply to this project.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleStatRetrieveResponse]
        #
        # @see Openlayer::Models::Governance::RuleStatRetrieveParams
        def retrieve(workspace_id, params = {})
          parsed, options = Openlayer::Governance::RuleStatRetrieveParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/rule-stats", workspace_id],
            query: query.transform_keys(framework_id: "frameworkId", project_id: "projectId"),
            model: Openlayer::Models::Governance::RuleStatRetrieveResponse,
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
