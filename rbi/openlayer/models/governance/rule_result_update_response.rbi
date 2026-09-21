# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleResultUpdateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::RuleResultUpdateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # Whether this result is excluded from compliance calculations.
        sig { returns(T::Boolean) }
        attr_accessor :deactivated

        # The compliance status of the rule for this entity.
        sig do
          returns(
            Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy
              ]
            )
          )
        end
        attr_reader :blocked_by

        sig do
          params(
            blocked_by:
              T::Array[
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::OrHash
              ]
          ).void
        end
        attr_writer :blocked_by

        # Rule results that this one blocks.
        sig do
          returns(
            T.nilable(
              T::Array[
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking
              ]
            )
          )
        end
        attr_reader :blocking

        sig do
          params(
            blocking:
              T::Array[
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::OrHash
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
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::OrSymbol,
            workspace_id: String,
            assignee_id: T.nilable(String),
            blocked_by:
              T::Array[
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::OrHash
              ],
            blocking:
              T::Array[
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::OrHash
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol,
              workspace_id: String,
              assignee_id: T.nilable(String),
              blocked_by:
                T::Array[
                  Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy
                ],
              blocking:
                T::Array[
                  Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(
              :running,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )
          PASSING =
            T.let(
              :passing,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )
          FAILING =
            T.let(
              :failing,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )
          DUE_SOON =
            T.let(
              :due_soon,
              Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Governance::RuleResultUpdateResponse::Status::TaggedSymbol
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy,
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              status:
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::OrSymbol
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
                  Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
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
                  Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy::Status::TaggedSymbol
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking,
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
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              status:
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::OrSymbol
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
                  Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
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
                  Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking::Status::TaggedSymbol
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
end
