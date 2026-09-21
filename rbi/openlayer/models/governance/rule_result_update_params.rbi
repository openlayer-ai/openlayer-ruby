# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleResultUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleResultUpdateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :rule_result_id

        # The user responsible for this result.
        sig { returns(T.nilable(String)) }
        attr_accessor :assignee_id

        # Rule results that must pass before this one can be satisfied.
        sig do
          returns(
            T.nilable(
              T::Array[Openlayer::Governance::RuleResultUpdateParams::BlockedBy]
            )
          )
        end
        attr_reader :blocked_by

        sig do
          params(
            blocked_by:
              T::Array[
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::OrHash
              ]
          ).void
        end
        attr_writer :blocked_by

        # Rule results that this one blocks.
        sig do
          returns(
            T.nilable(
              T::Array[Openlayer::Governance::RuleResultUpdateParams::Blocking]
            )
          )
        end
        attr_reader :blocking

        sig do
          params(
            blocking:
              T::Array[
                Openlayer::Governance::RuleResultUpdateParams::Blocking::OrHash
              ]
          ).void
        end
        attr_writer :blocking

        # Whether this result is excluded from compliance calculations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deactivated

        sig { params(deactivated: T::Boolean).void }
        attr_writer :deactivated

        # Why the result was excluded.
        sig { returns(T.nilable(String)) }
        attr_accessor :deactivated_reason

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
          ).returns(T.attached_class)
        end
        def self.new(
          rule_result_id:,
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

        sig do
          override.returns(
            {
              rule_result_id: String,
              assignee_id: T.nilable(String),
              blocked_by:
                T::Array[
                  Openlayer::Governance::RuleResultUpdateParams::BlockedBy
                ],
              blocking:
                T::Array[
                  Openlayer::Governance::RuleResultUpdateParams::Blocking
                ],
              deactivated: T::Boolean,
              deactivated_reason: T.nilable(String),
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        class BlockedBy < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy,
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
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              status:
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::OrSymbol
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
                  Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::OrSymbol
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
                  Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status::TaggedSymbol
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
                Openlayer::Governance::RuleResultUpdateParams::Blocking,
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
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              id: String,
              status:
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::OrSymbol
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
                  Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::OrSymbol
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
                  Openlayer::Governance::RuleResultUpdateParams::Blocking::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Governance::RuleResultUpdateParams::Blocking::Status::TaggedSymbol
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
