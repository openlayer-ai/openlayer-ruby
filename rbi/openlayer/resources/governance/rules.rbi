# typed: strong

module Openlayer
  module Resources
    class Governance
      class Rules
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
        sig do
          params(
            workspace_id: String,
            name: String,
            scope: Openlayer::Governance::RuleCreateParams::Scope::OrSymbol,
            type: Openlayer::Governance::RuleCreateParams::Type::OrSymbol,
            assignee_id: T.nilable(String),
            automation_params: T.nilable(T::Hash[Symbol, T.anything]),
            automation_type: T.nilable(String),
            deactivated: T::Boolean,
            description: T.nilable(String),
            evidence_type:
              T.nilable(
                Openlayer::Governance::RuleCreateParams::EvidenceType::OrSymbol
              ),
            renewal_cadence_days: T.nilable(Integer),
            tag_ids: T.nilable(T::Array[String]),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleCreateResponse)
        end
        def create(
          # The workspace id.
          workspace_id,
          # The rule name.
          name:,
          # Whether the rule is evaluated once for the whole workspace, or once per project
          # the rule's frameworks apply to.
          scope:,
          # `platform` rules are evaluated automatically from the state of your Openlayer
          # workspace. `evidence` rules are satisfied by attaching evidence.
          type:,
          # The user responsible for satisfying the rule.
          assignee_id: nil,
          # Configuration for the platform check, when the automation takes parameters.
          automation_params: nil,
          # Which workspace signal a platform rule checks, for example
          # `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
          # evidence rules.
          automation_type: nil,
          # Whether the rule is excluded from compliance calculations.
          deactivated: nil,
          # What the rule requires.
          description: nil,
          # The kind of evidence that satisfies the rule. `null` for platform rules.
          evidence_type: nil,
          # How often evidence must be renewed, in days. Once evidence is older than this,
          # the rule result becomes `due_soon` and then `failing`.
          renewal_cadence_days: nil,
          # The ids of the rule tags to associate with the rule. Replaces the rule's tags.
          # Read them back from `tags`, and list the tags available in the workspace with
          # `GET /workspaces/{workspaceId}/rule-tags`.
          tag_ids: nil,
          request_options: {}
        )
        end

        # Retrieve a governance rule by its id, including the frameworks it belongs to and
        # its tags.
        sig do
          params(
            rule_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleRetrieveResponse)
        end
        def retrieve(
          # The rule id.
          rule_id,
          request_options: {}
        )
        end

        # Update a governance rule. Only the fields you send are changed.
        #
        # Rules that ship with Openlayer report `immutable: true` and cannot be edited.
        #
        # A rule's `scope`, `type`, `evidenceType`, and automation are fixed once it
        # exists -- create a new rule instead of converting one.
        sig do
          params(
            rule_id: String,
            assignee_id: T.nilable(String),
            deactivated: T::Boolean,
            description: T.nilable(String),
            name: String,
            renewal_cadence_days: T.nilable(Integer),
            tag_ids: T.nilable(T::Array[String]),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleUpdateResponse)
        end
        def update(
          # The rule id.
          rule_id,
          # The user responsible for satisfying the rule.
          assignee_id: nil,
          # Whether the rule is excluded from compliance calculations.
          deactivated: nil,
          # What the rule requires.
          description: nil,
          # The rule name.
          name: nil,
          # How often evidence must be renewed, in days. Once evidence is older than this,
          # the rule result becomes `due_soon` and then `failing`.
          renewal_cadence_days: nil,
          # The ids of the rule tags to associate with the rule. Replaces the rule's tags.
          # Read them back from `tags`, and list the tags available in the workspace with
          # `GET /workspaces/{workspaceId}/rule-tags`.
          tag_ids: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            workspace_id: String,
            asc: T::Boolean,
            assignee_id: String,
            deactivated: T::Boolean,
            enabled_framework_only: T::Boolean,
            framework_id: String,
            group: Openlayer::Governance::RuleListParams::Group::OrSymbol,
            include_results: T::Boolean,
            include_unframed: T::Boolean,
            page: Integer,
            per_page: Integer,
            project_id: String,
            scope: Openlayer::Governance::RuleListParams::Scope::OrSymbol,
            search_query: String,
            sort_by: Openlayer::Governance::RuleListParams::SortBy::OrSymbol,
            status: Openlayer::Governance::RuleListParams::Status::OrSymbol,
            tags: T::Array[String],
            type: Openlayer::Governance::RuleListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleListResponse)
        end
        def list(
          # The workspace id.
          workspace_id,
          # Whether to sort in ascending order.
          asc: nil,
          # Only include rules assigned to this user.
          assignee_id: nil,
          # Only include rules that are deactivated (or active).
          deactivated: nil,
          # Only include items belonging to at least one enabled framework.
          enabled_framework_only: nil,
          # Only include items belonging to this framework.
          framework_id: nil,
          # Only include rules in one bucket of the compliance workflow. `open` covers rules
          # that still need attention, `done` covers rules that are fully satisfied, and
          # `excluded` covers rules that have been deactivated.
          group: nil,
          # Whether to include each rule's results inline, in a `results` array.
          include_results: nil,
          # Whether to include rules that are not part of any framework.
          include_unframed: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Only include items that apply to this project.
          project_id: nil,
          # Only include rules with this scope.
          scope: nil,
          # Filter by a free-text search over names and descriptions.
          search_query: nil,
          # The field to sort on.
          sort_by: nil,
          # Only include items whose rule result has this compliance status.
          status: nil,
          # Only include rules carrying all of these rule tags. Pass tag ids, which you can
          # look up with [List rule tags](/api-reference/rest/governance/list-rule-tags).
          tags: nil,
          # Only include rules of this type.
          type: nil,
          request_options: {}
        )
        end

        # Delete a governance rule and its rule results.
        #
        # Only rules you created can be deleted. Rules that ship with Openlayer report
        # `immutable: true` and cannot be deleted -- exclude one from compliance by
        # setting `deactivated` with `PUT /rules/{ruleId}` instead.
        sig do
          params(
            rule_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The rule id.
          rule_id,
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
