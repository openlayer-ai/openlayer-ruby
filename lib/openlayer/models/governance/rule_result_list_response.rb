# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleResults#list
      class RuleResultListResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Openlayer::Models::Governance::RuleResultListResponse::Item>]
        required :items,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultListResponse::Item] }

        # @!method initialize(items:)
        #   @param items [Array<Openlayer::Models::Governance::RuleResultListResponse::Item>]

        class Item < Openlayer::Internal::Type::BaseModel
          # @!attribute deactivated
          #   Whether this result is excluded from compliance calculations.
          #
          #   @return [Boolean]
          required :deactivated, Openlayer::Internal::Type::Boolean

          # @!attribute status
          #   The compliance status of the rule for this entity.
          #
          #   @return [Symbol, Openlayer::Models::Governance::RuleResultListResponse::Item::Status]
          required :status, enum: -> { Openlayer::Models::Governance::RuleResultListResponse::Item::Status }

          # @!attribute assignee_id
          #   The user responsible for this result.
          #
          #   @return [String, nil]
          optional :assignee_id, String, api_name: :assigneeId, nil?: true

          # @!attribute blocked_by
          #   Rule results that must pass before this one can be satisfied.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy>, nil]
          optional :blocked_by,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy] },
                   api_name: :blockedBy

          # @!attribute blocking
          #   Rule results that this one blocks.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking>, nil]
          optional :blocking,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking] }

          # @!attribute deactivated_reason
          #   Why the result was excluded.
          #
          #   @return [String, nil]
          optional :deactivated_reason, String, api_name: :deactivatedReason, nil?: true

          # @!attribute status_message
          #   A human-readable explanation of the status.
          #
          #   @return [String, nil]
          optional :status_message, String, api_name: :statusMessage, nil?: true

          response_only do
            # @!attribute id
            #   The rule result id.
            #
            #   @return [String]
            required :id, String

            # @!attribute date_created
            #   The creation date.
            #
            #   @return [Time]
            required :date_created, Time, api_name: :dateCreated

            # @!attribute date_updated
            #   The last update date.
            #
            #   @return [Time]
            required :date_updated, Time, api_name: :dateUpdated

            # @!attribute rule_id
            #   The rule this result belongs to.
            #
            #   @return [String]
            required :rule_id, String, api_name: :ruleId

            # @!attribute workspace_id
            #   The id of the workspace the rule result belongs to.
            #
            #   @return [String]
            required :workspace_id, String, api_name: :workspaceId

            # @!attribute date_last_evaluated
            #   When the rule was last evaluated. Platform rules only.
            #
            #   @return [Time, nil]
            optional :date_last_evaluated, Time, api_name: :dateLastEvaluated, nil?: true

            # @!attribute date_of_latest_evidence
            #   When the most recent piece of evidence was attached. Evidence rules only.
            #
            #   @return [Time, nil]
            optional :date_of_latest_evidence, Time, api_name: :dateOfLatestEvidence, nil?: true

            # @!attribute date_of_next_evaluation
            #   When the rule will next be evaluated. Platform rules only.
            #
            #   @return [Time, nil]
            optional :date_of_next_evaluation, Time, api_name: :dateOfNextEvaluation, nil?: true

            # @!attribute date_of_renewal
            #   When the evidence must be renewed. Evidence rules with a renewal cadence only.
            #
            #   @return [Time, nil]
            optional :date_of_renewal, Time, api_name: :dateOfRenewal, nil?: true

            # @!attribute project_id
            #   The project this result was evaluated for. `null` for workspace-scoped rules.
            #
            #   @return [String, nil]
            optional :project_id, String, api_name: :projectId, nil?: true
          end

          # @!method initialize(id:, date_created:, date_updated:, deactivated:, rule_id:, status:, workspace_id:, assignee_id: nil, blocked_by: nil, blocking: nil, date_last_evaluated: nil, date_of_latest_evidence: nil, date_of_next_evaluation: nil, date_of_renewal: nil, deactivated_reason: nil, project_id: nil, status_message: nil)
          #   @param id [String] The rule result id.
          #
          #   @param date_created [Time] The creation date.
          #
          #   @param date_updated [Time] The last update date.
          #
          #   @param deactivated [Boolean] Whether this result is excluded from compliance calculations.
          #
          #   @param rule_id [String] The rule this result belongs to.
          #
          #   @param status [Symbol, Openlayer::Models::Governance::RuleResultListResponse::Item::Status] The compliance status of the rule for this entity.
          #
          #   @param workspace_id [String] The id of the workspace the rule result belongs to.
          #
          #   @param assignee_id [String, nil] The user responsible for this result.
          #
          #   @param blocked_by [Array<Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy>] Rule results that must pass before this one can be satisfied.
          #
          #   @param blocking [Array<Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking>] Rule results that this one blocks.
          #
          #   @param date_last_evaluated [Time, nil] When the rule was last evaluated. Platform rules only.
          #
          #   @param date_of_latest_evidence [Time, nil] When the most recent piece of evidence was attached. Evidence rules only.
          #
          #   @param date_of_next_evaluation [Time, nil] When the rule will next be evaluated. Platform rules only.
          #
          #   @param date_of_renewal [Time, nil] When the evidence must be renewed. Evidence rules with a renewal cadence only.
          #
          #   @param deactivated_reason [String, nil] Why the result was excluded.
          #
          #   @param project_id [String, nil] The project this result was evaluated for. `null` for workspace-scoped rules.
          #
          #   @param status_message [String, nil] A human-readable explanation of the status.

          # The compliance status of the rule for this entity.
          #
          # @see Openlayer::Models::Governance::RuleResultListResponse::Item#status
          module Status
            extend Openlayer::Internal::Type::Enum

            RUNNING = :running
            PASSING = :passing
            FAILING = :failing
            SKIPPED = :skipped
            ERROR = :error
            PENDING = :pending
            DUE_SOON = :due_soon

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class BlockedBy < Openlayer::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute status
            #   The compliance status of the rule for this entity.
            #
            #   @return [Symbol, Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy::Status, nil]
            optional :status,
                     enum: -> { Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy::Status }

            # @!method initialize(id: nil, status: nil)
            #   @param id [String]
            #
            #   @param status [Symbol, Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy::Status] The compliance status of the rule for this entity.

            # The compliance status of the rule for this entity.
            #
            # @see Openlayer::Models::Governance::RuleResultListResponse::Item::BlockedBy#status
            module Status
              extend Openlayer::Internal::Type::Enum

              RUNNING = :running
              PASSING = :passing
              FAILING = :failing
              SKIPPED = :skipped
              ERROR = :error
              PENDING = :pending
              DUE_SOON = :due_soon

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Blocking < Openlayer::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute status
            #   The compliance status of the rule for this entity.
            #
            #   @return [Symbol, Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking::Status, nil]
            optional :status,
                     enum: -> { Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking::Status }

            # @!method initialize(id: nil, status: nil)
            #   @param id [String]
            #
            #   @param status [Symbol, Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking::Status] The compliance status of the rule for this entity.

            # The compliance status of the rule for this entity.
            #
            # @see Openlayer::Models::Governance::RuleResultListResponse::Item::Blocking#status
            module Status
              extend Openlayer::Internal::Type::Enum

              RUNNING = :running
              PASSING = :passing
              FAILING = :failing
              SKIPPED = :skipped
              ERROR = :error
              PENDING = :pending
              DUE_SOON = :due_soon

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
