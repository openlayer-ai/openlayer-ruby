# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Rules#retrieve
      class RuleRetrieveResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute name
        #   The rule name.
        #
        #   @return [String]
        required :name, String

        # @!attribute scope
        #   Whether the rule is evaluated once for the whole workspace, or once per project
        #   the rule's frameworks apply to.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Scope]
        required :scope, enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::Scope }

        # @!attribute type
        #   `platform` rules are evaluated automatically from the state of your Openlayer
        #   workspace. `evidence` rules are satisfied by attaching evidence.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Type]
        required :type, enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::Type }

        # @!attribute assignee_id
        #   The user responsible for satisfying the rule.
        #
        #   @return [String, nil]
        optional :assignee_id, String, api_name: :assigneeId, nil?: true

        # @!attribute automation_params
        #   Configuration for the platform check, when the automation takes parameters.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :automation_params,
                 Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                 api_name: :automationParams,
                 nil?: true

        # @!attribute automation_type
        #   Which workspace signal a platform rule checks, for example
        #   `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
        #   evidence rules.
        #
        #   @return [String, nil]
        optional :automation_type, String, api_name: :automationType, nil?: true

        # @!attribute deactivated
        #   Whether the rule is excluded from compliance calculations.
        #
        #   @return [Boolean, nil]
        optional :deactivated, Openlayer::Internal::Type::Boolean

        # @!attribute description
        #   What the rule requires.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute evidence_type
        #   The kind of evidence that satisfies the rule. `null` for platform rules.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::EvidenceType, nil]
        optional :evidence_type,
                 enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::EvidenceType },
                 api_name: :evidenceType,
                 nil?: true

        # @!attribute renewal_cadence_days
        #   How often evidence must be renewed, in days. Once evidence is older than this,
        #   the rule result becomes `due_soon` and then `failing`.
        #
        #   @return [Integer, nil]
        optional :renewal_cadence_days, Integer, api_name: :renewalCadenceDays, nil?: true

        response_only do
          # @!attribute id
          #   The rule id.
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

          # @!attribute workspace_id
          #   The id of the workspace the rule belongs to.
          #
          #   @return [String]
          required :workspace_id, String, api_name: :workspaceId

          # @!attribute frameworks
          #   The frameworks that include this rule.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Framework>, nil]
          optional :frameworks,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Framework] }

          # @!attribute immutable
          #   Whether the rule is managed by Openlayer and cannot be edited.
          #
          #   @return [Boolean, nil]
          optional :immutable, Openlayer::Internal::Type::Boolean

          # @!attribute results
          #   The rule's results, one per entity the rule is evaluated against. Only returned
          #   when `includeResults` is `true`.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Result>, nil]
          optional :results,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Result] }

          # @!attribute results_summary
          #   Pass-rate counts across all of the rule's entities, independent of any status
          #   filter applied to the request.
          #
          #   @return [Openlayer::Models::Governance::RuleRetrieveResponse::ResultsSummary, nil]
          optional :results_summary,
                   -> { Openlayer::Models::Governance::RuleRetrieveResponse::ResultsSummary },
                   api_name: :resultsSummary,
                   nil?: true

          # @!attribute tags
          #   The rule tags associated with the rule.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Tag>, nil]
          optional :tags,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Tag] },
                   nil?: true
        end

        # @!method initialize(id:, date_created:, date_updated:, name:, scope:, type:, workspace_id:, assignee_id: nil, automation_params: nil, automation_type: nil, deactivated: nil, description: nil, evidence_type: nil, frameworks: nil, immutable: nil, renewal_cadence_days: nil, results: nil, results_summary: nil, tags: nil)
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleRetrieveResponse} for more details.
        #
        #   @param id [String] The rule id.
        #
        #   @param date_created [Time] The creation date.
        #
        #   @param date_updated [Time] The last update date.
        #
        #   @param name [String] The rule name.
        #
        #   @param scope [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Scope] Whether the rule is evaluated once for the whole workspace, or once per project
        #
        #   @param type [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Type] `platform` rules are evaluated automatically from the state of your Openlayer wo
        #
        #   @param workspace_id [String] The id of the workspace the rule belongs to.
        #
        #   @param assignee_id [String, nil] The user responsible for satisfying the rule.
        #
        #   @param automation_params [Hash{Symbol=>Object}, nil] Configuration for the platform check, when the automation takes parameters.
        #
        #   @param automation_type [String, nil] Which workspace signal a platform rule checks, for example `monitoring_mode_enab
        #
        #   @param deactivated [Boolean] Whether the rule is excluded from compliance calculations.
        #
        #   @param description [String, nil] What the rule requires.
        #
        #   @param evidence_type [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::EvidenceType, nil] The kind of evidence that satisfies the rule. `null` for platform rules.
        #
        #   @param frameworks [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Framework>] The frameworks that include this rule.
        #
        #   @param immutable [Boolean] Whether the rule is managed by Openlayer and cannot be edited.
        #
        #   @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t
        #
        #   @param results [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Result>] The rule's results, one per entity the rule is evaluated against. Only returned
        #
        #   @param results_summary [Openlayer::Models::Governance::RuleRetrieveResponse::ResultsSummary, nil] Pass-rate counts across all of the rule's entities, independent of any status fi
        #
        #   @param tags [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Tag>, nil] The rule tags associated with the rule.

        # Whether the rule is evaluated once for the whole workspace, or once per project
        # the rule's frameworks apply to.
        #
        # @see Openlayer::Models::Governance::RuleRetrieveResponse#scope
        module Scope
          extend Openlayer::Internal::Type::Enum

          PROJECT = :project
          WORKSPACE = :workspace

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `platform` rules are evaluated automatically from the state of your Openlayer
        # workspace. `evidence` rules are satisfied by attaching evidence.
        #
        # @see Openlayer::Models::Governance::RuleRetrieveResponse#type
        module Type
          extend Openlayer::Internal::Type::Enum

          PLATFORM = :platform
          EVIDENCE = :evidence

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The kind of evidence that satisfies the rule. `null` for platform rules.
        #
        # @see Openlayer::Models::Governance::RuleRetrieveResponse#evidence_type
        module EvidenceType
          extend Openlayer::Internal::Type::Enum

          DOCUMENT = :document
          TEXT = :text
          URL = :url
          CATEGORY_VALUE = :categoryValue

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Framework < Openlayer::Internal::Type::BaseModel
          # @!attribute avatar
          #   The icon shown for the framework.
          #
          #   @return [Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar, nil]
          required :avatar,
                   -> { Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar },
                   nil?: true

          # @!attribute built_in_slug
          #   Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
          #   `iso_42001`, `nist_ai_rmf`, or `traiga`. `null` for frameworks you create
          #   yourself.
          #
          #   @return [String, nil]
          required :built_in_slug, String, api_name: :builtInSlug, nil?: true

          # @!attribute enabled
          #   Whether the framework is active. Rules of a disabled framework are not evaluated
          #   and do not count towards compliance.
          #
          #   @return [Boolean]
          required :enabled, Openlayer::Internal::Type::Boolean

          # @!attribute name
          #   The framework name.
          #
          #   @return [String]
          required :name, String

          response_only do
            # @!attribute id
            #   The framework id.
            #
            #   @return [String]
            required :id, String
          end

          # @!method initialize(id:, avatar:, built_in_slug:, enabled:, name:)
          #   Some parameter documentations has been truncated, see
          #   {Openlayer::Models::Governance::RuleRetrieveResponse::Framework} for more
          #   details.
          #
          #   @param id [String] The framework id.
          #
          #   @param avatar [Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar, nil] The icon shown for the framework.
          #
          #   @param built_in_slug [String, nil] Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
          #   `iso\_
          #
          #   @param enabled [Boolean] Whether the framework is active. Rules of a disabled framework are not evaluated
          #
          #   @param name [String] The framework name.

          # @see Openlayer::Models::Governance::RuleRetrieveResponse::Framework#avatar
          class Avatar < Openlayer::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar::Type]
            required :type, enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar::Type }

            # @!attribute value
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   The icon shown for the framework.
            #
            #   @param type [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar::Type]
            #   @param value [String]

            # @see Openlayer::Models::Governance::RuleRetrieveResponse::Framework::Avatar#type
            module Type
              extend Openlayer::Internal::Type::Enum

              EMOJI = :emoji
              IMAGE_URL = :imageUrl
              BUILTIN_IMAGE = :builtinImage

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Result < Openlayer::Internal::Type::BaseModel
          # @!attribute deactivated
          #   Whether this result is excluded from compliance calculations.
          #
          #   @return [Boolean]
          required :deactivated, Openlayer::Internal::Type::Boolean

          # @!attribute status
          #   The compliance status of the rule for this entity.
          #
          #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Result::Status]
          required :status, enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::Result::Status }

          # @!attribute assignee_id
          #   The user responsible for this result.
          #
          #   @return [String, nil]
          optional :assignee_id, String, api_name: :assigneeId, nil?: true

          # @!attribute blocked_by
          #   Rule results that must pass before this one can be satisfied.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy>, nil]
          optional :blocked_by,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy] },
                   api_name: :blockedBy

          # @!attribute blocking
          #   Rule results that this one blocks.
          #
          #   @return [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking>, nil]
          optional :blocking,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking] }

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
          #   @param status [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Result::Status] The compliance status of the rule for this entity.
          #
          #   @param workspace_id [String] The id of the workspace the rule result belongs to.
          #
          #   @param assignee_id [String, nil] The user responsible for this result.
          #
          #   @param blocked_by [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy>] Rule results that must pass before this one can be satisfied.
          #
          #   @param blocking [Array<Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking>] Rule results that this one blocks.
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
          # @see Openlayer::Models::Governance::RuleRetrieveResponse::Result#status
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
            #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy::Status, nil]
            optional :status,
                     enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy::Status }

            # @!method initialize(id: nil, status: nil)
            #   @param id [String]
            #
            #   @param status [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy::Status] The compliance status of the rule for this entity.

            # The compliance status of the rule for this entity.
            #
            # @see Openlayer::Models::Governance::RuleRetrieveResponse::Result::BlockedBy#status
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
            #   @return [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking::Status, nil]
            optional :status,
                     enum: -> { Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking::Status }

            # @!method initialize(id: nil, status: nil)
            #   @param id [String]
            #
            #   @param status [Symbol, Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking::Status] The compliance status of the rule for this entity.

            # The compliance status of the rule for this entity.
            #
            # @see Openlayer::Models::Governance::RuleRetrieveResponse::Result::Blocking#status
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

        # @see Openlayer::Models::Governance::RuleRetrieveResponse#results_summary
        class ResultsSummary < Openlayer::Internal::Type::BaseModel
          # @!attribute passing
          #
          #   @return [Integer, nil]
          optional :passing, Integer

          # @!attribute total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!method initialize(passing: nil, total: nil)
          #   Pass-rate counts across all of the rule's entities, independent of any status
          #   filter applied to the request.
          #
          #   @param passing [Integer]
          #   @param total [Integer]
        end

        class Tag < Openlayer::Internal::Type::BaseModel
          # @!attribute name
          #   The tag name.
          #
          #   @return [String]
          required :name, String

          # @!attribute color
          #   The color the tag is displayed with.
          #
          #   @return [String, nil]
          optional :color, String, nil?: true

          response_only do
            # @!attribute id
            #   The rule tag id.
            #
            #   @return [String]
            required :id, String

            # @!attribute creator_id
            #   The user who created the tag. `null` for tags that ship with Openlayer.
            #
            #   @return [String, nil]
            required :creator_id, String, api_name: :creatorId, nil?: true

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

            # @!attribute immutable
            #   Whether the tag is managed by Openlayer and cannot be edited or deleted.
            #
            #   @return [Boolean]
            required :immutable, Openlayer::Internal::Type::Boolean

            # @!attribute workspace_id
            #   The id of the workspace the tag belongs to.
            #
            #   @return [String]
            required :workspace_id, String, api_name: :workspaceId
          end

          # @!method initialize(id:, creator_id:, date_created:, date_updated:, immutable:, name:, workspace_id:, color: nil)
          #   @param id [String] The rule tag id.
          #
          #   @param creator_id [String, nil] The user who created the tag. `null` for tags that ship with Openlayer.
          #
          #   @param date_created [Time] The creation date.
          #
          #   @param date_updated [Time] The last update date.
          #
          #   @param immutable [Boolean] Whether the tag is managed by Openlayer and cannot be edited or deleted.
          #
          #   @param name [String] The tag name.
          #
          #   @param workspace_id [String] The id of the workspace the tag belongs to.
          #
          #   @param color [String, nil] The color the tag is displayed with.
        end
      end
    end
  end
end
