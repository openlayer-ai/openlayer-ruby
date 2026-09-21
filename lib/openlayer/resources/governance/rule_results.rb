# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class RuleResults
        # Retrieve a rule result by its id.
        #
        # Alongside the status, the response carries the evaluation and renewal dates that
        # explain it: `dateLastEvaluated` and `dateOfNextEvaluation` for platform rules,
        # `dateOfLatestEvidence` and `dateOfRenewal` for evidence rules.
        #
        # @overload retrieve(rule_result_id, request_options: {})
        #
        # @param rule_result_id [String] The rule result id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleResultRetrieveResponse]
        #
        # @see Openlayer::Models::Governance::RuleResultRetrieveParams
        def retrieve(rule_result_id, params = {})
          @client.request(
            method: :get,
            path: ["rule-results/%1$s", rule_result_id],
            model: Openlayer::Models::Governance::RuleResultRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update a rule result. Only the fields you send are changed.
        #
        # Use this to assign an owner, or to exclude a single result from compliance
        # without deactivating the rule everywhere. `deactivatedReason` is required when
        # setting `deactivated` to `true`.
        #
        # A result's `status` is computed by Openlayer and cannot be set directly.
        #
        # @overload update(rule_result_id, assignee_id: nil, blocked_by: nil, blocking: nil, deactivated: nil, deactivated_reason: nil, request_options: {})
        #
        # @param rule_result_id [String] The rule result id.
        #
        # @param assignee_id [String, nil] The user responsible for this result.
        #
        # @param blocked_by [Array<Openlayer::Models::Governance::RuleResultUpdateParams::BlockedBy>] Rule results that must pass before this one can be satisfied.
        #
        # @param blocking [Array<Openlayer::Models::Governance::RuleResultUpdateParams::Blocking>] Rule results that this one blocks.
        #
        # @param deactivated [Boolean] Whether this result is excluded from compliance calculations.
        #
        # @param deactivated_reason [String, nil] Why the result was excluded.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleResultUpdateResponse]
        #
        # @see Openlayer::Models::Governance::RuleResultUpdateParams
        def update(rule_result_id, params = {})
          parsed, options = Openlayer::Governance::RuleResultUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["rule-results/%1$s", rule_result_id],
            body: parsed,
            model: Openlayer::Models::Governance::RuleResultUpdateResponse,
            options: options
          )
        end

        # List rule results across a workspace.
        #
        # A rule result is the compliance status of one rule for one entity: a project for
        # project-scoped rules, or the workspace itself for workspace-scoped rules. This
        # is the endpoint to poll or export when you want your current compliance state,
        # filtered to a framework, a project, or a status.
        #
        # @overload list(workspace_id, enabled_framework_only: nil, framework_id: nil, include_unframed: nil, page: nil, per_page: nil, project_id: nil, rule_id: nil, scope: nil, search_query: nil, status: nil, type: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param enabled_framework_only [Boolean] Only include items belonging to at least one enabled framework.
        #
        # @param framework_id [String] Only include items belonging to this framework.
        #
        # @param include_unframed [Boolean] Whether to include rules that are not part of any framework.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param project_id [String] Only include items that apply to this project.
        #
        # @param rule_id [String] Only include results of this rule.
        #
        # @param scope [Symbol, Openlayer::Models::Governance::RuleResultListParams::Scope] Only include rules with this scope.
        #
        # @param search_query [String] Filter by a free-text search over names and descriptions.
        #
        # @param status [Symbol, Openlayer::Models::Governance::RuleResultListParams::Status] Only include items whose rule result has this compliance status.
        #
        # @param type [Symbol, Openlayer::Models::Governance::RuleResultListParams::Type] Only include rules of this type.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleResultListResponse]
        #
        # @see Openlayer::Models::Governance::RuleResultListParams
        def list(workspace_id, params = {})
          parsed, options = Openlayer::Governance::RuleResultListParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/rule-results", workspace_id],
            query: query.transform_keys(
              enabled_framework_only: "enabledFrameworkOnly",
              framework_id: "frameworkId",
              include_unframed: "includeUnframed",
              per_page: "perPage",
              project_id: "projectId",
              rule_id: "ruleId",
              search_query: "searchQuery"
            ),
            model: Openlayer::Models::Governance::RuleResultListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::RuleResultCreateEvidenceParams} for more
        # details.
        #
        # Attach evidence to a rule result, satisfying an evidence rule.
        #
        # Send the field that matches the rule's `evidenceType`: `storageUri` for an
        # uploaded document, `text` for a written statement, or `url` for a link.
        #
        # For a document, upload the file first with `POST /storage/presigned-url` and
        # send the resulting storage URI as `storageUri`.
        #
        # Attaching evidence re-evaluates the rule result. If the rule sets
        # `renewalCadenceDays`, the renewal window restarts from this evidence.
        #
        # @overload create_evidence(rule_result_id, description: nil, name: nil, storage_uri: nil, text: nil, url: nil, request_options: {})
        #
        # @param rule_result_id [String] The rule result id.
        #
        # @param description [String, nil] A description of what the evidence shows.
        #
        # @param name [String, nil] The evidence name.
        #
        # @param storage_uri [String, nil] Where the uploaded file is stored. Set when the rule's `evidenceType` is `docume
        #
        # @param text [String, nil] The evidence text. Set when the rule's `evidenceType` is `text`.
        #
        # @param url [String, nil] A link to the evidence. Set when the rule's `evidenceType` is `url`.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleResultCreateEvidenceResponse]
        #
        # @see Openlayer::Models::Governance::RuleResultCreateEvidenceParams
        def create_evidence(rule_result_id, params = {})
          parsed, options = Openlayer::Governance::RuleResultCreateEvidenceParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["rule-results/%1$s/evidence", rule_result_id],
            body: parsed,
            model: Openlayer::Models::Governance::RuleResultCreateEvidenceResponse,
            options: options
          )
        end

        # List the evidence attached to a rule result.
        #
        # Which field carries the evidence depends on the rule's `evidenceType`:
        # `storageUri` for uploaded documents, `text` for written statements, and `url`
        # for links.
        #
        # @overload list_evidence(rule_result_id, page: nil, per_page: nil, request_options: {})
        #
        # @param rule_result_id [String] The rule result id.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleResultListEvidenceResponse]
        #
        # @see Openlayer::Models::Governance::RuleResultListEvidenceParams
        def list_evidence(rule_result_id, params = {})
          parsed, options = Openlayer::Governance::RuleResultListEvidenceParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["rule-results/%1$s/evidence", rule_result_id],
            query: query.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Governance::RuleResultListEvidenceResponse,
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
