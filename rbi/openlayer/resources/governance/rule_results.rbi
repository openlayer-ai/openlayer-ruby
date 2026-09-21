# typed: strong

module Openlayer
  module Resources
    class Governance
      class RuleResults
        # Retrieve a rule result by its id.
        #
        # Alongside the status, the response carries the evaluation and renewal dates that
        # explain it: `dateLastEvaluated` and `dateOfNextEvaluation` for platform rules,
        # `dateOfLatestEvidence` and `dateOfRenewal` for evidence rules.
        sig do
          params(
            rule_result_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleResultRetrieveResponse)
        end
        def retrieve(
          # The rule result id.
          rule_result_id,
          request_options: {}
        )
        end

        # Update a rule result. Only the fields you send are changed.
        #
        # Use this to assign an owner, or to exclude a single result from compliance
        # without deactivating the rule everywhere. `deactivatedReason` is required when
        # setting `deactivated` to `true`.
        #
        # A result's `status` is computed by Openlayer and cannot be set directly.
        sig do
          params(
            rule_result_id: String,
            assignee_id: T.nilable(String),
            blocked_by:
              T::Array[
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::OrHash
              ],
            blocking:
              T::Array[
                Openlayer::Governance::RuleResultUpdateParams::Blocking::OrHash
              ],
            deactivated: T::Boolean,
            deactivated_reason: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleResultUpdateResponse)
        end
        def update(
          # The rule result id.
          rule_result_id,
          # The user responsible for this result.
          assignee_id: nil,
          # Rule results that must pass before this one can be satisfied.
          blocked_by: nil,
          # Rule results that this one blocks.
          blocking: nil,
          # Whether this result is excluded from compliance calculations.
          deactivated: nil,
          # Why the result was excluded.
          deactivated_reason: nil,
          request_options: {}
        )
        end

        # List rule results across a workspace.
        #
        # A rule result is the compliance status of one rule for one entity: a project for
        # project-scoped rules, or the workspace itself for workspace-scoped rules. This
        # is the endpoint to poll or export when you want your current compliance state,
        # filtered to a framework, a project, or a status.
        sig do
          params(
            workspace_id: String,
            enabled_framework_only: T::Boolean,
            framework_id: String,
            include_unframed: T::Boolean,
            page: Integer,
            per_page: Integer,
            project_id: String,
            rule_id: String,
            scope: Openlayer::Governance::RuleResultListParams::Scope::OrSymbol,
            search_query: String,
            status:
              Openlayer::Governance::RuleResultListParams::Status::OrSymbol,
            type: Openlayer::Governance::RuleResultListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::RuleResultListResponse)
        end
        def list(
          # The workspace id.
          workspace_id,
          # Only include items belonging to at least one enabled framework.
          enabled_framework_only: nil,
          # Only include items belonging to this framework.
          framework_id: nil,
          # Whether to include rules that are not part of any framework.
          include_unframed: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Only include items that apply to this project.
          project_id: nil,
          # Only include results of this rule.
          rule_id: nil,
          # Only include rules with this scope.
          scope: nil,
          # Filter by a free-text search over names and descriptions.
          search_query: nil,
          # Only include items whose rule result has this compliance status.
          status: nil,
          # Only include rules of this type.
          type: nil,
          request_options: {}
        )
        end

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
        sig do
          params(
            rule_result_id: String,
            description: T.nilable(String),
            name: T.nilable(String),
            storage_uri: T.nilable(String),
            text: T.nilable(String),
            url: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            Openlayer::Models::Governance::RuleResultCreateEvidenceResponse
          )
        end
        def create_evidence(
          # The rule result id.
          rule_result_id,
          # A description of what the evidence shows.
          description: nil,
          # The evidence name.
          name: nil,
          # Where the uploaded file is stored. Set when the rule's `evidenceType` is
          # `document`.
          storage_uri: nil,
          # The evidence text. Set when the rule's `evidenceType` is `text`.
          text: nil,
          # A link to the evidence. Set when the rule's `evidenceType` is `url`.
          url: nil,
          request_options: {}
        )
        end

        # List the evidence attached to a rule result.
        #
        # Which field carries the evidence depends on the rule's `evidenceType`:
        # `storageUri` for uploaded documents, `text` for written statements, and `url`
        # for links.
        sig do
          params(
            rule_result_id: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            Openlayer::Models::Governance::RuleResultListEvidenceResponse
          )
        end
        def list_evidence(
          # The rule result id.
          rule_result_id,
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
