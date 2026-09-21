# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        # The rule name.
        sig { returns(String) }
        attr_accessor :name

        # Whether the rule is evaluated once for the whole workspace, or once per project
        # the rule's frameworks apply to.
        sig do
          returns(Openlayer::Governance::RuleCreateParams::Scope::OrSymbol)
        end
        attr_accessor :scope

        # `platform` rules are evaluated automatically from the state of your Openlayer
        # workspace. `evidence` rules are satisfied by attaching evidence.
        sig { returns(Openlayer::Governance::RuleCreateParams::Type::OrSymbol) }
        attr_accessor :type

        # The user responsible for satisfying the rule.
        sig { returns(T.nilable(String)) }
        attr_accessor :assignee_id

        # Configuration for the platform check, when the automation takes parameters.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :automation_params

        # Which workspace signal a platform rule checks, for example
        # `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
        # evidence rules.
        sig { returns(T.nilable(String)) }
        attr_accessor :automation_type

        # Whether the rule is excluded from compliance calculations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deactivated

        sig { params(deactivated: T::Boolean).void }
        attr_writer :deactivated

        # What the rule requires.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The kind of evidence that satisfies the rule. `null` for platform rules.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::RuleCreateParams::EvidenceType::OrSymbol
            )
          )
        end
        attr_accessor :evidence_type

        # How often evidence must be renewed, in days. Once evidence is older than this,
        # the rule result becomes `due_soon` and then `failing`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :renewal_cadence_days

        # The ids of the rule tags to associate with the rule. Replaces the rule's tags.
        # Read them back from `tags`, and list the tags available in the workspace with
        # `GET /workspaces/{workspaceId}/rule-tags`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tag_ids

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
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
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

        sig do
          override.returns(
            {
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
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Whether the rule is evaluated once for the whole workspace, or once per project
        # the rule's frameworks apply to.
        module Scope
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleCreateParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROJECT =
            T.let(
              :project,
              Openlayer::Governance::RuleCreateParams::Scope::TaggedSymbol
            )
          WORKSPACE =
            T.let(
              :workspace,
              Openlayer::Governance::RuleCreateParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleCreateParams::Scope::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # `platform` rules are evaluated automatically from the state of your Openlayer
        # workspace. `evidence` rules are satisfied by attaching evidence.
        module Type
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLATFORM =
            T.let(
              :platform,
              Openlayer::Governance::RuleCreateParams::Type::TaggedSymbol
            )
          EVIDENCE =
            T.let(
              :evidence,
              Openlayer::Governance::RuleCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleCreateParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The kind of evidence that satisfies the rule. `null` for platform rules.
        module EvidenceType
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Governance::RuleCreateParams::EvidenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOCUMENT =
            T.let(
              :document,
              Openlayer::Governance::RuleCreateParams::EvidenceType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              Openlayer::Governance::RuleCreateParams::EvidenceType::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              Openlayer::Governance::RuleCreateParams::EvidenceType::TaggedSymbol
            )
          CATEGORY_VALUE =
            T.let(
              :categoryValue,
              Openlayer::Governance::RuleCreateParams::EvidenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleCreateParams::EvidenceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
