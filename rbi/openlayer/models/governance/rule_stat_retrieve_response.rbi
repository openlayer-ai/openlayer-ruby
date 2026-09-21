# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleStatRetrieveResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::RuleStatRetrieveResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # Counts of rule results, after any filters in the request, with breakdowns by the
        # type and scope of the rule each result belongs to.
        sig do
          returns(
            Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults
          )
        end
        attr_reader :rule_results

        sig do
          params(
            rule_results:
              Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::OrHash
          ).void
        end
        attr_writer :rule_results

        # Counts of the rules themselves, after any filters in the request.
        sig do
          returns(
            Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules
          )
        end
        attr_reader :rules

        sig do
          params(
            rules:
              Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::OrHash
          ).void
        end
        attr_writer :rules

        sig do
          params(
            rule_results:
              Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::OrHash,
            rules:
              Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Counts of rule results, after any filters in the request, with breakdowns by the
          # type and scope of the rule each result belongs to.
          rule_results:,
          # Counts of the rules themselves, after any filters in the request.
          rules:
        )
        end

        sig do
          override.returns(
            {
              rule_results:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults,
              rules:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules
            }
          )
        end
        def to_hash
        end

        class RuleResults < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults,
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
            returns(
              T.nilable(
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope
              )
            )
          end
          attr_reader :by_rule_scope

          sig do
            params(
              by_rule_scope:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::OrHash
            ).void
          end
          attr_writer :by_rule_scope

          sig do
            returns(
              T.nilable(
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType
              )
            )
          end
          attr_reader :by_rule_type

          sig do
            params(
              by_rule_type:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::OrHash
            ).void
          end
          attr_writer :by_rule_type

          # Counts of rule results, after any filters in the request, with breakdowns by the
          # type and scope of the rule each result belongs to.
          sig do
            params(
              total: Integer,
              total_due_soon: Integer,
              total_error: Integer,
              total_failing: Integer,
              total_passing: Integer,
              total_pending: Integer,
              total_running: Integer,
              total_skipped: Integer,
              by_rule_scope:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::OrHash,
              by_rule_type:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::OrHash
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
            total_skipped:,
            by_rule_scope: nil,
            by_rule_type: nil
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
                total_skipped: Integer,
                by_rule_scope:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope,
                by_rule_type:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType
              }
            )
          end
          def to_hash
          end

          class ByRuleScope < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project
                )
              )
            end
            attr_reader :project

            sig do
              params(
                project:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project::OrHash
              ).void
            end
            attr_writer :project

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace
                )
              )
            end
            attr_reader :workspace

            sig do
              params(
                workspace:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace::OrHash
              ).void
            end
            attr_writer :workspace

            sig do
              params(
                project:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project::OrHash,
                workspace:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace::OrHash
              ).returns(T.attached_class)
            end
            def self.new(project: nil, workspace: nil)
            end

            sig do
              override.returns(
                {
                  project:
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project,
                  workspace:
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace
                }
              )
            end
            def to_hash
            end

            class Project < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project,
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

            class Workspace < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace,
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

          class ByRuleType < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence
                )
              )
            end
            attr_reader :evidence

            sig do
              params(
                evidence:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence::OrHash
              ).void
            end
            attr_writer :evidence

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform
                )
              )
            end
            attr_reader :platform

            sig do
              params(
                platform:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform::OrHash
              ).void
            end
            attr_writer :platform

            sig do
              params(
                evidence:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence::OrHash,
                platform:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform::OrHash
              ).returns(T.attached_class)
            end
            def self.new(evidence: nil, platform: nil)
            end

            sig do
              override.returns(
                {
                  evidence:
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence,
                  platform:
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform
                }
              )
            end
            def to_hash
            end

            class Evidence < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence,
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
                    Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform,
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

        class Rules < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules,
                Openlayer::Internal::AnyHash
              )
            end

          # Rule counts by scope.
          sig do
            returns(
              T.nilable(
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope
              )
            )
          end
          attr_reader :by_scope

          sig do
            params(
              by_scope:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope::OrHash
            ).void
          end
          attr_writer :by_scope

          # Rule counts by type.
          sig do
            returns(
              T.nilable(
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType
              )
            )
          end
          attr_reader :by_type

          sig do
            params(
              by_type:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType::OrHash
            ).void
          end
          attr_writer :by_type

          # The total number of rules.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total

          sig { params(total: Integer).void }
          attr_writer :total

          # Counts of the rules themselves, after any filters in the request.
          sig do
            params(
              by_scope:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope::OrHash,
              by_type:
                Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType::OrHash,
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Rule counts by scope.
            by_scope: nil,
            # Rule counts by type.
            by_type: nil,
            # The total number of rules.
            total: nil
          )
          end

          sig do
            override.returns(
              {
                by_scope:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope,
                by_type:
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType,
                total: Integer
              }
            )
          end
          def to_hash
          end

          class ByScope < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :project

            sig { params(project: Integer).void }
            attr_writer :project

            sig { returns(T.nilable(Integer)) }
            attr_reader :workspace

            sig { params(workspace: Integer).void }
            attr_writer :workspace

            # Rule counts by scope.
            sig do
              params(project: Integer, workspace: Integer).returns(
                T.attached_class
              )
            end
            def self.new(project: nil, workspace: nil)
            end

            sig { override.returns({ project: Integer, workspace: Integer }) }
            def to_hash
            end
          end

          class ByType < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :evidence

            sig { params(evidence: Integer).void }
            attr_writer :evidence

            sig { returns(T.nilable(Integer)) }
            attr_reader :platform

            sig { params(platform: Integer).void }
            attr_writer :platform

            # Rule counts by type.
            sig do
              params(evidence: Integer, platform: Integer).returns(
                T.attached_class
              )
            end
            def self.new(evidence: nil, platform: nil)
            end

            sig { override.returns({ evidence: Integer, platform: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
