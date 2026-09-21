# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Rules#create
      class RuleCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute workspace_id
        #
        #   @return [String]
        required :workspace_id, String

        # @!attribute name
        #   The rule name.
        #
        #   @return [String]
        required :name, String

        # @!attribute scope
        #   Whether the rule is evaluated once for the whole workspace, or once per project
        #   the rule's frameworks apply to.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleCreateParams::Scope]
        required :scope, enum: -> { Openlayer::Governance::RuleCreateParams::Scope }

        # @!attribute type
        #   `platform` rules are evaluated automatically from the state of your Openlayer
        #   workspace. `evidence` rules are satisfied by attaching evidence.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleCreateParams::Type]
        required :type, enum: -> { Openlayer::Governance::RuleCreateParams::Type }

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
        #   @return [Symbol, Openlayer::Models::Governance::RuleCreateParams::EvidenceType, nil]
        optional :evidence_type,
                 enum: -> { Openlayer::Governance::RuleCreateParams::EvidenceType },
                 api_name: :evidenceType,
                 nil?: true

        # @!attribute renewal_cadence_days
        #   How often evidence must be renewed, in days. Once evidence is older than this,
        #   the rule result becomes `due_soon` and then `failing`.
        #
        #   @return [Integer, nil]
        optional :renewal_cadence_days, Integer, api_name: :renewalCadenceDays, nil?: true

        # @!attribute tag_ids
        #   The ids of the rule tags to associate with the rule. Replaces the rule's tags.
        #   Read them back from `tags`, and list the tags available in the workspace with
        #   `GET /workspaces/{workspaceId}/rule-tags`.
        #
        #   @return [Array<String>, nil]
        optional :tag_ids, Openlayer::Internal::Type::ArrayOf[String], api_name: :tagIds, nil?: true

        # @!method initialize(workspace_id:, name:, scope:, type:, assignee_id: nil, automation_params: nil, automation_type: nil, deactivated: nil, description: nil, evidence_type: nil, renewal_cadence_days: nil, tag_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleCreateParams} for more details.
        #
        #   @param workspace_id [String]
        #
        #   @param name [String] The rule name.
        #
        #   @param scope [Symbol, Openlayer::Models::Governance::RuleCreateParams::Scope] Whether the rule is evaluated once for the whole workspace, or once per project
        #
        #   @param type [Symbol, Openlayer::Models::Governance::RuleCreateParams::Type] `platform` rules are evaluated automatically from the state of your Openlayer wo
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
        #   @param evidence_type [Symbol, Openlayer::Models::Governance::RuleCreateParams::EvidenceType, nil] The kind of evidence that satisfies the rule. `null` for platform rules.
        #
        #   @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t
        #
        #   @param tag_ids [Array<String>, nil] The ids of the rule tags to associate with the rule. Replaces the rule's tags. R
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # Whether the rule is evaluated once for the whole workspace, or once per project
        # the rule's frameworks apply to.
        module Scope
          extend Openlayer::Internal::Type::Enum

          PROJECT = :project
          WORKSPACE = :workspace

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `platform` rules are evaluated automatically from the state of your Openlayer
        # workspace. `evidence` rules are satisfied by attaching evidence.
        module Type
          extend Openlayer::Internal::Type::Enum

          PLATFORM = :platform
          EVIDENCE = :evidence

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The kind of evidence that satisfies the rule. `null` for platform rules.
        module EvidenceType
          extend Openlayer::Internal::Type::Enum

          DOCUMENT = :document
          TEXT = :text
          URL = :url
          CATEGORY_VALUE = :categoryValue

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
