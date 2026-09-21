# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleUpdateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::RuleUpdateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # The rule name.
        sig { returns(String) }
        attr_accessor :name

        # Whether the rule is evaluated once for the whole workspace, or once per project
        # the rule's frameworks apply to.
        sig do
          returns(
            Openlayer::Models::Governance::RuleUpdateResponse::Scope::TaggedSymbol
          )
        end
        attr_accessor :scope

        # `platform` rules are evaluated automatically from the state of your Openlayer
        # workspace. `evidence` rules are satisfied by attaching evidence.
        sig do
          returns(
            Openlayer::Models::Governance::RuleUpdateResponse::Type::TaggedSymbol
          )
        end
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
              Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
            )
          )
        end
        attr_accessor :evidence_type

        # How often evidence must be renewed, in days. Once evidence is older than this,
        # the rule result becomes `due_soon` and then `failing`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :renewal_cadence_days

        # The rule id.
        sig { returns(String) }
        attr_accessor :id

        # The creation date.
        sig { returns(Time) }
        attr_accessor :date_created

        # The last update date.
        sig { returns(Time) }
        attr_accessor :date_updated

        # The id of the workspace the rule belongs to.
        sig { returns(String) }
        attr_accessor :workspace_id

        # The frameworks that include this rule.
        sig do
          returns(
            T.nilable(
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Framework
              ]
            )
          )
        end
        attr_reader :frameworks

        sig do
          params(
            frameworks:
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Framework::OrHash
              ]
          ).void
        end
        attr_writer :frameworks

        # Whether the rule is managed by Openlayer and cannot be edited.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :immutable

        sig { params(immutable: T::Boolean).void }
        attr_writer :immutable

        # The rule's results, one per entity the rule is evaluated against. Only returned
        # when `includeResults` is `true`.
        sig do
          returns(
            T.nilable(
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Result
              ]
            )
          )
        end
        attr_reader :results

        sig do
          params(
            results:
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Result::OrHash
              ]
          ).void
        end
        attr_writer :results

        # Pass-rate counts across all of the rule's entities, independent of any status
        # filter applied to the request.
        sig do
          returns(
            T.nilable(
              Openlayer::Models::Governance::RuleUpdateResponse::ResultsSummary
            )
          )
        end
        attr_reader :results_summary

        sig do
          params(
            results_summary:
              T.nilable(
                Openlayer::Models::Governance::RuleUpdateResponse::ResultsSummary::OrHash
              )
          ).void
        end
        attr_writer :results_summary

        # The rule tags associated with the rule.
        sig do
          returns(
            T.nilable(
              T::Array[Openlayer::Models::Governance::RuleUpdateResponse::Tag]
            )
          )
        end
        attr_accessor :tags

        sig do
          params(
            id: String,
            date_created: Time,
            date_updated: Time,
            name: String,
            scope:
              Openlayer::Models::Governance::RuleUpdateResponse::Scope::OrSymbol,
            type:
              Openlayer::Models::Governance::RuleUpdateResponse::Type::OrSymbol,
            workspace_id: String,
            assignee_id: T.nilable(String),
            automation_params: T.nilable(T::Hash[Symbol, T.anything]),
            automation_type: T.nilable(String),
            deactivated: T::Boolean,
            description: T.nilable(String),
            evidence_type:
              T.nilable(
                Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::OrSymbol
              ),
            frameworks:
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Framework::OrHash
              ],
            immutable: T::Boolean,
            renewal_cadence_days: T.nilable(Integer),
            results:
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Result::OrHash
              ],
            results_summary:
              T.nilable(
                Openlayer::Models::Governance::RuleUpdateResponse::ResultsSummary::OrHash
              ),
            tags:
              T.nilable(
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Tag::OrHash
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The rule id.
          id:,
          # The creation date.
          date_created:,
          # The last update date.
          date_updated:,
          # The rule name.
          name:,
          # Whether the rule is evaluated once for the whole workspace, or once per project
          # the rule's frameworks apply to.
          scope:,
          # `platform` rules are evaluated automatically from the state of your Openlayer
          # workspace. `evidence` rules are satisfied by attaching evidence.
          type:,
          # The id of the workspace the rule belongs to.
          workspace_id:,
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
          # The frameworks that include this rule.
          frameworks: nil,
          # Whether the rule is managed by Openlayer and cannot be edited.
          immutable: nil,
          # How often evidence must be renewed, in days. Once evidence is older than this,
          # the rule result becomes `due_soon` and then `failing`.
          renewal_cadence_days: nil,
          # The rule's results, one per entity the rule is evaluated against. Only returned
          # when `includeResults` is `true`.
          results: nil,
          # Pass-rate counts across all of the rule's entities, independent of any status
          # filter applied to the request.
          results_summary: nil,
          # The rule tags associated with the rule.
          tags: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              date_created: Time,
              date_updated: Time,
              name: String,
              scope:
                Openlayer::Models::Governance::RuleUpdateResponse::Scope::TaggedSymbol,
              type:
                Openlayer::Models::Governance::RuleUpdateResponse::Type::TaggedSymbol,
              workspace_id: String,
              assignee_id: T.nilable(String),
              automation_params: T.nilable(T::Hash[Symbol, T.anything]),
              automation_type: T.nilable(String),
              deactivated: T::Boolean,
              description: T.nilable(String),
              evidence_type:
                T.nilable(
                  Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
                ),
              frameworks:
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework
                ],
              immutable: T::Boolean,
              renewal_cadence_days: T.nilable(Integer),
              results:
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result
                ],
              results_summary:
                T.nilable(
                  Openlayer::Models::Governance::RuleUpdateResponse::ResultsSummary
                ),
              tag_ids: T.nilable(T::Array[String]),
              tags:
                T.nilable(
                  T::Array[
                    Openlayer::Models::Governance::RuleUpdateResponse::Tag
                  ]
                )
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
              T.all(
                Symbol,
                Openlayer::Models::Governance::RuleUpdateResponse::Scope
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROJECT =
            T.let(
              :project,
              Openlayer::Models::Governance::RuleUpdateResponse::Scope::TaggedSymbol
            )
          WORKSPACE =
            T.let(
              :workspace,
              Openlayer::Models::Governance::RuleUpdateResponse::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Scope::TaggedSymbol
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
              T.all(
                Symbol,
                Openlayer::Models::Governance::RuleUpdateResponse::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLATFORM =
            T.let(
              :platform,
              Openlayer::Models::Governance::RuleUpdateResponse::Type::TaggedSymbol
            )
          EVIDENCE =
            T.let(
              :evidence,
              Openlayer::Models::Governance::RuleUpdateResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::Type::TaggedSymbol
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
                Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOCUMENT =
            T.let(
              :document,
              Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
            )
          CATEGORY_VALUE =
            T.let(
              :categoryValue,
              Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Framework < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::RuleUpdateResponse::Framework,
                Openlayer::Internal::AnyHash
              )
            end

          # The icon shown for the framework.
          sig do
            returns(
              T.nilable(
                Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar
              )
            )
          end
          attr_reader :avatar

          sig do
            params(
              avatar:
                T.nilable(
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::OrHash
                )
            ).void
          end
          attr_writer :avatar

          # Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
          # `iso_42001`, `nist_ai_rmf`, or `traiga`. `null` for frameworks you create
          # yourself.
          sig { returns(T.nilable(String)) }
          attr_accessor :built_in_slug

          # Whether the framework is active. Rules of a disabled framework are not evaluated
          # and do not count towards compliance.
          sig { returns(T::Boolean) }
          attr_accessor :enabled

          # The framework name.
          sig { returns(String) }
          attr_accessor :name

          # The framework id.
          sig { returns(String) }
          attr_accessor :id

          sig do
            params(
              id: String,
              avatar:
                T.nilable(
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::OrHash
                ),
              built_in_slug: T.nilable(String),
              enabled: T::Boolean,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The framework id.
            id:,
            # The icon shown for the framework.
            avatar:,
            # Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
            # `iso_42001`, `nist_ai_rmf`, or `traiga`. `null` for frameworks you create
            # yourself.
            built_in_slug:,
            # Whether the framework is active. Rules of a disabled framework are not evaluated
            # and do not count towards compliance.
            enabled:,
            # The framework name.
            name:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                avatar:
                  T.nilable(
                    Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar
                  ),
                built_in_slug: T.nilable(String),
                enabled: T::Boolean,
                name: String
              }
            )
          end
          def to_hash
          end

          class Avatar < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(String) }
            attr_accessor :value

            # The icon shown for the framework.
            sig do
              params(
                type:
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::OrSymbol,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(type:, value:)
            end

            sig do
              override.returns(
                {
                  type:
                    Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::TaggedSymbol,
                  value: String
                }
              )
            end
            def to_hash
            end

            module Type
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMOJI =
                T.let(
                  :emoji,
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::TaggedSymbol
                )
              IMAGE_URL =
                T.let(
                  :imageUrl,
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::TaggedSymbol
                )
              BUILTIN_IMAGE =
                T.let(
                  :builtinImage,
                  Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Governance::RuleUpdateResponse::Framework::Avatar::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Result < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::RuleUpdateResponse::Result,
                Openlayer::Internal::AnyHash
              )
            end

          # Whether this result is excluded from compliance calculations.
          sig { returns(T::Boolean) }
          attr_accessor :deactivated

          # The compliance status of the rule for this entity.
          sig do
            returns(
              Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The user responsible for this result.
          sig { returns(T.nilable(String)) }
          attr_accessor :assignee_id

          # Rule results that must pass before this one can be satisfied.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy
                ]
              )
            )
          end
          attr_reader :blocked_by

          sig do
            params(
              blocked_by:
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::OrHash
                ]
            ).void
          end
          attr_writer :blocked_by

          # Rule results that this one blocks.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking
                ]
              )
            )
          end
          attr_reader :blocking

          sig do
            params(
              blocking:
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::OrHash
                ]
            ).void
          end
          attr_writer :blocking

          # Why the result was excluded.
          sig { returns(T.nilable(String)) }
          attr_accessor :deactivated_reason

          # A human-readable explanation of the status.
          sig { returns(T.nilable(String)) }
          attr_accessor :status_message

          # The rule result id.
          sig { returns(String) }
          attr_accessor :id

          # The creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The last update date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # The rule this result belongs to.
          sig { returns(String) }
          attr_accessor :rule_id

          # The id of the workspace the rule result belongs to.
          sig { returns(String) }
          attr_accessor :workspace_id

          # When the rule was last evaluated. Platform rules only.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_last_evaluated

          # When the most recent piece of evidence was attached. Evidence rules only.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_of_latest_evidence

          # When the rule will next be evaluated. Platform rules only.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_of_next_evaluation

          # When the evidence must be renewed. Evidence rules with a renewal cadence only.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_of_renewal

          # The project this result was evaluated for. `null` for workspace-scoped rules.
          sig { returns(T.nilable(String)) }
          attr_accessor :project_id

          sig do
            params(
              id: String,
              date_created: Time,
              date_updated: Time,
              deactivated: T::Boolean,
              rule_id: String,
              status:
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::OrSymbol,
              workspace_id: String,
              assignee_id: T.nilable(String),
              blocked_by:
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::OrHash
                ],
              blocking:
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::OrHash
                ],
              date_last_evaluated: T.nilable(Time),
              date_of_latest_evidence: T.nilable(Time),
              date_of_next_evaluation: T.nilable(Time),
              date_of_renewal: T.nilable(Time),
              deactivated_reason: T.nilable(String),
              project_id: T.nilable(String),
              status_message: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The rule result id.
            id:,
            # The creation date.
            date_created:,
            # The last update date.
            date_updated:,
            # Whether this result is excluded from compliance calculations.
            deactivated:,
            # The rule this result belongs to.
            rule_id:,
            # The compliance status of the rule for this entity.
            status:,
            # The id of the workspace the rule result belongs to.
            workspace_id:,
            # The user responsible for this result.
            assignee_id: nil,
            # Rule results that must pass before this one can be satisfied.
            blocked_by: nil,
            # Rule results that this one blocks.
            blocking: nil,
            # When the rule was last evaluated. Platform rules only.
            date_last_evaluated: nil,
            # When the most recent piece of evidence was attached. Evidence rules only.
            date_of_latest_evidence: nil,
            # When the rule will next be evaluated. Platform rules only.
            date_of_next_evaluation: nil,
            # When the evidence must be renewed. Evidence rules with a renewal cadence only.
            date_of_renewal: nil,
            # Why the result was excluded.
            deactivated_reason: nil,
            # The project this result was evaluated for. `null` for workspace-scoped rules.
            project_id: nil,
            # A human-readable explanation of the status.
            status_message: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                date_created: Time,
                date_updated: Time,
                deactivated: T::Boolean,
                rule_id: String,
                status:
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol,
                workspace_id: String,
                assignee_id: T.nilable(String),
                blocked_by:
                  T::Array[
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy
                  ],
                blocking:
                  T::Array[
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking
                  ],
                date_last_evaluated: T.nilable(Time),
                date_of_latest_evidence: T.nilable(Time),
                date_of_next_evaluation: T.nilable(Time),
                date_of_renewal: T.nilable(Time),
                deactivated_reason: T.nilable(String),
                project_id: T.nilable(String),
                status_message: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The compliance status of the rule for this entity.
          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class BlockedBy < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The compliance status of the rule for this entity.
            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::OrSymbol
              ).void
            end
            attr_writer :status

            sig do
              params(
                id: String,
                status:
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              # The compliance status of the rule for this entity.
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  status:
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The compliance status of the rule for this entity.
            module Status
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RUNNING =
                T.let(
                  :running,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              PASSING =
                T.let(
                  :passing,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              FAILING =
                T.let(
                  :failing,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              SKIPPED =
                T.let(
                  :skipped,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              ERROR =
                T.let(
                  :error,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )
              DUE_SOON =
                T.let(
                  :due_soon,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::BlockedBy::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Blocking < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The compliance status of the rule for this entity.
            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::OrSymbol
              ).void
            end
            attr_writer :status

            sig do
              params(
                id: String,
                status:
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              # The compliance status of the rule for this entity.
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  status:
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # The compliance status of the rule for this entity.
            module Status
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RUNNING =
                T.let(
                  :running,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              PASSING =
                T.let(
                  :passing,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              FAILING =
                T.let(
                  :failing,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              SKIPPED =
                T.let(
                  :skipped,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              ERROR =
                T.let(
                  :error,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )
              DUE_SOON =
                T.let(
                  :due_soon,
                  Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Governance::RuleUpdateResponse::Result::Blocking::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class ResultsSummary < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::RuleUpdateResponse::ResultsSummary,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :passing

          sig { params(passing: Integer).void }
          attr_writer :passing

          sig { returns(T.nilable(Integer)) }
          attr_reader :total

          sig { params(total: Integer).void }
          attr_writer :total

          # Pass-rate counts across all of the rule's entities, independent of any status
          # filter applied to the request.
          sig do
            params(passing: Integer, total: Integer).returns(T.attached_class)
          end
          def self.new(passing: nil, total: nil)
          end

          sig { override.returns({ passing: Integer, total: Integer }) }
          def to_hash
          end
        end

        class Tag < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::RuleUpdateResponse::Tag,
                Openlayer::Internal::AnyHash
              )
            end

          # The tag name.
          sig { returns(String) }
          attr_accessor :name

          # The color the tag is displayed with.
          sig { returns(T.nilable(String)) }
          attr_accessor :color

          # The rule tag id.
          sig { returns(String) }
          attr_accessor :id

          # The user who created the tag. `null` for tags that ship with Openlayer.
          sig { returns(T.nilable(String)) }
          attr_accessor :creator_id

          # The creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The last update date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # Whether the tag is managed by Openlayer and cannot be edited or deleted.
          sig { returns(T::Boolean) }
          attr_accessor :immutable

          # The id of the workspace the tag belongs to.
          sig { returns(String) }
          attr_accessor :workspace_id

          sig do
            params(
              id: String,
              creator_id: T.nilable(String),
              date_created: Time,
              date_updated: Time,
              immutable: T::Boolean,
              name: String,
              workspace_id: String,
              color: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The rule tag id.
            id:,
            # The user who created the tag. `null` for tags that ship with Openlayer.
            creator_id:,
            # The creation date.
            date_created:,
            # The last update date.
            date_updated:,
            # Whether the tag is managed by Openlayer and cannot be edited or deleted.
            immutable:,
            # The tag name.
            name:,
            # The id of the workspace the tag belongs to.
            workspace_id:,
            # The color the tag is displayed with.
            color: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                creator_id: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                immutable: T::Boolean,
                name: String,
                workspace_id: String,
                color: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
