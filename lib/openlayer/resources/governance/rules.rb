# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class Rules
        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::RuleCreateParams} for more details.
        #
        # Create a governance rule in a workspace.
        #
        # A rule is one requirement. Its `type` decides how it is satisfied, and the two
        # types accept different fields:
        #
        # - `platform` rules are evaluated automatically from the state of your workspace.
        #   Set `automationType` to the signal to check. Their `scope` must be `project`,
        #   and `evidenceType` and `renewalCadenceDays` must be omitted or `null`.
        # - `evidence` rules are satisfied by attaching evidence. Set `evidenceType` to
        #   the kind of evidence that satisfies them. `automationType` and
        #   `automationParams` must be omitted or `null`.
        #
        # A new rule belongs to no framework. Map it to one from the Openlayer app.
        #
        # @overload create(workspace_id, name:, scope:, type:, assignee_id: nil, automation_params: nil, automation_type: nil, deactivated: nil, description: nil, evidence_type: nil, renewal_cadence_days: nil, tag_ids: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param name [String] The rule name.
        #
        # @param scope [Symbol, Openlayer::Models::Governance::RuleCreateParams::Scope] Whether the rule is evaluated once for the whole workspace, or once per project
        #
        # @param type [Symbol, Openlayer::Models::Governance::RuleCreateParams::Type] `platform` rules are evaluated automatically from the state of your Openlayer wo
        #
        # @param assignee_id [String, nil] The user responsible for satisfying the rule.
        #
        # @param automation_params [Hash{Symbol=>Object}, nil] Configuration for the platform check, when the automation takes parameters.
        #
        # @param automation_type [String, nil] Which workspace signal a platform rule checks, for example `monitoring_mode_enab
        #
        # @param deactivated [Boolean] Whether the rule is excluded from compliance calculations.
        #
        # @param description [String, nil] What the rule requires.
        #
        # @param evidence_type [Symbol, Openlayer::Models::Governance::RuleCreateParams::EvidenceType, nil] The kind of evidence that satisfies the rule. `null` for platform rules.
        #
        # @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t
        #
        # @param tag_ids [Array<String>, nil] The ids of the rule tags to associate with the rule. Replaces the rule's tags. R
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleCreateResponse]
        #
        # @see Openlayer::Models::Governance::RuleCreateParams
        def create(workspace_id, params)
          parsed, options = Openlayer::Governance::RuleCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["workspaces/%1$s/rules", workspace_id],
            body: parsed,
            model: Openlayer::Models::Governance::RuleCreateResponse,
            options: options
          )
        end

        # Retrieve a governance rule by its id, including the frameworks it belongs to and
        # its tags.
        #
        # @overload retrieve(rule_id, request_options: {})
        #
        # @param rule_id [String] The rule id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleRetrieveResponse]
        #
        # @see Openlayer::Models::Governance::RuleRetrieveParams
        def retrieve(rule_id, params = {})
          @client.request(
            method: :get,
            path: ["rules/%1$s", rule_id],
            model: Openlayer::Models::Governance::RuleRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::RuleUpdateParams} for more details.
        #
        # Update a governance rule. Only the fields you send are changed.
        #
        # Rules that ship with Openlayer report `immutable: true` and cannot be edited.
        #
        # A rule's `scope`, `type`, `evidenceType`, and automation are fixed once it
        # exists -- create a new rule instead of converting one.
        #
        # @overload update(rule_id, assignee_id: nil, deactivated: nil, description: nil, name: nil, renewal_cadence_days: nil, tag_ids: nil, request_options: {})
        #
        # @param rule_id [String] The rule id.
        #
        # @param assignee_id [String, nil] The user responsible for satisfying the rule.
        #
        # @param deactivated [Boolean] Whether the rule is excluded from compliance calculations.
        #
        # @param description [String, nil] What the rule requires.
        #
        # @param name [String] The rule name.
        #
        # @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t
        #
        # @param tag_ids [Array<String>, nil] The ids of the rule tags to associate with the rule. Replaces the rule's tags. R
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleUpdateResponse]
        #
        # @see Openlayer::Models::Governance::RuleUpdateParams
        def update(rule_id, params = {})
          parsed, options = Openlayer::Governance::RuleUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["rules/%1$s", rule_id],
            body: parsed,
            model: Openlayer::Models::Governance::RuleUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::RuleListParams} for more details.
        #
        # List the governance rules in a workspace.
        #
        # A rule is a single requirement Openlayer tracks. `platform` rules are evaluated
        # automatically from the state of your workspace; `evidence` rules are satisfied
        # by attaching evidence. A rule can belong to several frameworks at once, and
        # rules that belong to none are returned too unless you pass
        # `includeUnframed=false`.
        #
        # Pass `includeResults=true` to get each rule's compliance results inline instead
        # of fetching them separately.
        #
        # @overload list(workspace_id, asc: nil, assignee_id: nil, deactivated: nil, enabled_framework_only: nil, framework_id: nil, group: nil, include_results: nil, include_unframed: nil, page: nil, per_page: nil, project_id: nil, scope: nil, search_query: nil, sort_by: nil, status: nil, tags: nil, type: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param asc [Boolean] Whether to sort in ascending order.
        #
        # @param assignee_id [String] Only include rules assigned to this user.
        #
        # @param deactivated [Boolean] Only include rules that are deactivated (or active).
        #
        # @param enabled_framework_only [Boolean] Only include items belonging to at least one enabled framework.
        #
        # @param framework_id [String] Only include items belonging to this framework.
        #
        # @param group [Symbol, Openlayer::Models::Governance::RuleListParams::Group] Only include rules in one bucket of the compliance workflow. `open` covers rules
        #
        # @param include_results [Boolean] Whether to include each rule's results inline, in a `results` array.
        #
        # @param include_unframed [Boolean] Whether to include rules that are not part of any framework.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param project_id [String] Only include items that apply to this project.
        #
        # @param scope [Symbol, Openlayer::Models::Governance::RuleListParams::Scope] Only include rules with this scope.
        #
        # @param search_query [String] Filter by a free-text search over names and descriptions.
        #
        # @param sort_by [Symbol, Openlayer::Models::Governance::RuleListParams::SortBy] The field to sort on.
        #
        # @param status [Symbol, Openlayer::Models::Governance::RuleListParams::Status] Only include items whose rule result has this compliance status.
        #
        # @param tags [Array<String>] Only include rules carrying all of these rule tags. Pass tag ids, which you can
        #
        # @param type [Symbol, Openlayer::Models::Governance::RuleListParams::Type] Only include rules of this type.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::RuleListResponse]
        #
        # @see Openlayer::Models::Governance::RuleListParams
        def list(workspace_id, params = {})
          parsed, options = Openlayer::Governance::RuleListParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/rules", workspace_id],
            query: query.transform_keys(
              assignee_id: "assigneeId",
              enabled_framework_only: "enabledFrameworkOnly",
              framework_id: "frameworkId",
              include_results: "includeResults",
              include_unframed: "includeUnframed",
              per_page: "perPage",
              project_id: "projectId",
              search_query: "searchQuery",
              sort_by: "sortBy"
            ),
            model: Openlayer::Models::Governance::RuleListResponse,
            options: options
          )
        end

        # Delete a governance rule and its rule results.
        #
        # Only rules you created can be deleted. Rules that ship with Openlayer report
        # `immutable: true` and cannot be deleted -- exclude one from compliance by
        # setting `deactivated` with `PUT /rules/{ruleId}` instead.
        #
        # @overload delete(rule_id, request_options: {})
        #
        # @param rule_id [String] The rule id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Openlayer::Models::Governance::RuleDeleteParams
        def delete(rule_id, params = {})
          @client.request(
            method: :delete,
            path: ["rules/%1$s", rule_id],
            model: NilClass,
            options: params[:request_options]
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
