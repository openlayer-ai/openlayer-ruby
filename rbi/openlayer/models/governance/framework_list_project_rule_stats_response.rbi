# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkListProjectRuleStatsResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item
            ]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item
                ]
            }
          )
        end
        def to_hash
        end

        class Item < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          # The project id.
          sig { returns(String) }
          attr_accessor :project_id

          # The project name.
          sig { returns(String) }
          attr_accessor :project_name

          # The project's task type.
          sig { returns(String) }
          attr_accessor :task_type

          # The total number of rule results.
          sig { returns(Integer) }
          attr_accessor :total

          # The number of rule results whose evidence is about to expire.
          sig { returns(Integer) }
          attr_accessor :total_due_soon

          # The number of rule results that errored during evaluation.
          sig { returns(Integer) }
          attr_accessor :total_error

          # The number of failing rule results.
          sig { returns(Integer) }
          attr_accessor :total_failing

          # The number of passing rule results.
          sig { returns(Integer) }
          attr_accessor :total_passing

          # The number of rule results that have not been satisfied yet.
          sig { returns(Integer) }
          attr_accessor :total_pending

          # The number of rule results currently being evaluated.
          sig { returns(Integer) }
          attr_accessor :total_running

          # The number of skipped rule results.
          sig { returns(Integer) }
          attr_accessor :total_skipped

          # The same counts, broken down by the type of the rule each result belongs to.
          sig do
            returns(
              T.nilable(
                Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType
              )
            )
          end
          attr_reader :by_rule_type

          sig do
            params(
              by_rule_type:
                Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::OrHash
            ).void
          end
          attr_writer :by_rule_type

          sig do
            params(
              project_id: String,
              project_name: String,
              task_type: String,
              total: Integer,
              total_due_soon: Integer,
              total_error: Integer,
              total_failing: Integer,
              total_passing: Integer,
              total_pending: Integer,
              total_running: Integer,
              total_skipped: Integer,
              by_rule_type:
                Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The project id.
            project_id:,
            # The project name.
            project_name:,
            # The project's task type.
            task_type:,
            # The total number of rule results.
            total:,
            # The number of rule results whose evidence is about to expire.
            total_due_soon:,
            # The number of rule results that errored during evaluation.
            total_error:,
            # The number of failing rule results.
            total_failing:,
            # The number of passing rule results.
            total_passing:,
            # The number of rule results that have not been satisfied yet.
            total_pending:,
            # The number of rule results currently being evaluated.
            total_running:,
            # The number of skipped rule results.
            total_skipped:,
            # The same counts, broken down by the type of the rule each result belongs to.
            by_rule_type: nil
          )
          end

          sig do
            override.returns(
              {
                project_id: String,
                project_name: String,
                task_type: String,
                total: Integer,
                total_due_soon: Integer,
                total_error: Integer,
                total_failing: Integer,
                total_passing: Integer,
                total_pending: Integer,
                total_running: Integer,
                total_skipped: Integer,
                by_rule_type:
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType
              }
            )
          end
          def to_hash
          end

          class ByRuleType < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence
                )
              )
            end
            attr_reader :evidence

            sig do
              params(
                evidence:
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence::OrHash
              ).void
            end
            attr_writer :evidence

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform
                )
              )
            end
            attr_reader :platform

            sig do
              params(
                platform:
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform::OrHash
              ).void
            end
            attr_writer :platform

            # The same counts, broken down by the type of the rule each result belongs to.
            sig do
              params(
                evidence:
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence::OrHash,
                platform:
                  Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform::OrHash
              ).returns(T.attached_class)
            end
            def self.new(evidence: nil, platform: nil)
            end

            sig do
              override.returns(
                {
                  evidence:
                    Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence,
                  platform:
                    Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform
                }
              )
            end
            def to_hash
            end

            class Evidence < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence,
                    Openlayer::Internal::AnyHash
                  )
                end

              # The total number of rule results.
              sig { returns(Integer) }
              attr_accessor :total

              # The number of rule results whose evidence is about to expire.
              sig { returns(Integer) }
              attr_accessor :total_due_soon

              # The number of rule results that errored during evaluation.
              sig { returns(Integer) }
              attr_accessor :total_error

              # The number of failing rule results.
              sig { returns(Integer) }
              attr_accessor :total_failing

              # The number of passing rule results.
              sig { returns(Integer) }
              attr_accessor :total_passing

              # The number of rule results that have not been satisfied yet.
              sig { returns(Integer) }
              attr_accessor :total_pending

              # The number of rule results currently being evaluated.
              sig { returns(Integer) }
              attr_accessor :total_running

              # The number of skipped rule results.
              sig { returns(Integer) }
              attr_accessor :total_skipped

              sig do
                params(
                  total: Integer,
                  total_due_soon: Integer,
                  total_error: Integer,
                  total_failing: Integer,
                  total_passing: Integer,
                  total_pending: Integer,
                  total_running: Integer,
                  total_skipped: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The total number of rule results.
                total:,
                # The number of rule results whose evidence is about to expire.
                total_due_soon:,
                # The number of rule results that errored during evaluation.
                total_error:,
                # The number of failing rule results.
                total_failing:,
                # The number of passing rule results.
                total_passing:,
                # The number of rule results that have not been satisfied yet.
                total_pending:,
                # The number of rule results currently being evaluated.
                total_running:,
                # The number of skipped rule results.
                total_skipped:
              )
              end

              sig do
                override.returns(
                  {
                    total: Integer,
                    total_due_soon: Integer,
                    total_error: Integer,
                    total_failing: Integer,
                    total_passing: Integer,
                    total_pending: Integer,
                    total_running: Integer,
                    total_skipped: Integer
                  }
                )
              end
              def to_hash
              end
            end

            class Platform < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform,
                    Openlayer::Internal::AnyHash
                  )
                end

              # The total number of rule results.
              sig { returns(Integer) }
              attr_accessor :total

              # The number of rule results whose evidence is about to expire.
              sig { returns(Integer) }
              attr_accessor :total_due_soon

              # The number of rule results that errored during evaluation.
              sig { returns(Integer) }
              attr_accessor :total_error

              # The number of failing rule results.
              sig { returns(Integer) }
              attr_accessor :total_failing

              # The number of passing rule results.
              sig { returns(Integer) }
              attr_accessor :total_passing

              # The number of rule results that have not been satisfied yet.
              sig { returns(Integer) }
              attr_accessor :total_pending

              # The number of rule results currently being evaluated.
              sig { returns(Integer) }
              attr_accessor :total_running

              # The number of skipped rule results.
              sig { returns(Integer) }
              attr_accessor :total_skipped

              sig do
                params(
                  total: Integer,
                  total_due_soon: Integer,
                  total_error: Integer,
                  total_failing: Integer,
                  total_passing: Integer,
                  total_pending: Integer,
                  total_running: Integer,
                  total_skipped: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The total number of rule results.
                total:,
                # The number of rule results whose evidence is about to expire.
                total_due_soon:,
                # The number of rule results that errored during evaluation.
                total_error:,
                # The number of failing rule results.
                total_failing:,
                # The number of passing rule results.
                total_passing:,
                # The number of rule results that have not been satisfied yet.
                total_pending:,
                # The number of rule results currently being evaluated.
                total_running:,
                # The number of skipped rule results.
                total_skipped:
              )
              end

              sig do
                override.returns(
                  {
                    total: Integer,
                    total_due_soon: Integer,
                    total_error: Integer,
                    total_failing: Integer,
                    total_passing: Integer,
                    total_pending: Integer,
                    total_running: Integer,
                    total_skipped: Integer
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
  end
end
