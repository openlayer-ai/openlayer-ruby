# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleStats#retrieve
      class RuleStatRetrieveResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute rule_results
        #   Counts of rule results, after any filters in the request, with breakdowns by the
        #   type and scope of the rule each result belongs to.
        #
        #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults]
        required :rule_results,
                 -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults },
                 api_name: :ruleResults

        # @!attribute rules
        #   Counts of the rules themselves, after any filters in the request.
        #
        #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules]
        required :rules, -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules }

        # @!method initialize(rule_results:, rules:)
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleStatRetrieveResponse} for more details.
        #
        #   @param rule_results [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults] Counts of rule results, after any filters in the request, with breakdowns by the
        #
        #   @param rules [Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules] Counts of the rules themselves, after any filters in the request.

        # @see Openlayer::Models::Governance::RuleStatRetrieveResponse#rule_results
        class RuleResults < Openlayer::Internal::Type::BaseModel
          # @!attribute total
          #   The total number of rule results.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute total_due_soon
          #   The number of rule results whose evidence is about to expire.
          #
          #   @return [Integer]
          required :total_due_soon, Integer, api_name: :totalDueSoon

          # @!attribute total_error
          #   The number of rule results that errored during evaluation.
          #
          #   @return [Integer]
          required :total_error, Integer, api_name: :totalError

          # @!attribute total_failing
          #   The number of failing rule results.
          #
          #   @return [Integer]
          required :total_failing, Integer, api_name: :totalFailing

          # @!attribute total_passing
          #   The number of passing rule results.
          #
          #   @return [Integer]
          required :total_passing, Integer, api_name: :totalPassing

          # @!attribute total_pending
          #   The number of rule results that have not been satisfied yet.
          #
          #   @return [Integer]
          required :total_pending, Integer, api_name: :totalPending

          # @!attribute total_running
          #   The number of rule results currently being evaluated.
          #
          #   @return [Integer]
          required :total_running, Integer, api_name: :totalRunning

          # @!attribute total_skipped
          #   The number of skipped rule results.
          #
          #   @return [Integer]
          required :total_skipped, Integer, api_name: :totalSkipped

          # @!attribute by_rule_scope
          #
          #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope, nil]
          optional :by_rule_scope,
                   -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope },
                   api_name: :byRuleScope

          # @!attribute by_rule_type
          #
          #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType, nil]
          optional :by_rule_type,
                   -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType },
                   api_name: :byRuleType

          # @!method initialize(total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:, by_rule_scope: nil, by_rule_type: nil)
          #   Counts of rule results, after any filters in the request, with breakdowns by the
          #   type and scope of the rule each result belongs to.
          #
          #   @param total [Integer] The total number of rule results.
          #
          #   @param total_due_soon [Integer] The number of rule results whose evidence is about to expire.
          #
          #   @param total_error [Integer] The number of rule results that errored during evaluation.
          #
          #   @param total_failing [Integer] The number of failing rule results.
          #
          #   @param total_passing [Integer] The number of passing rule results.
          #
          #   @param total_pending [Integer] The number of rule results that have not been satisfied yet.
          #
          #   @param total_running [Integer] The number of rule results currently being evaluated.
          #
          #   @param total_skipped [Integer] The number of skipped rule results.
          #
          #   @param by_rule_scope [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope]
          #
          #   @param by_rule_type [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType]

          # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults#by_rule_scope
          class ByRuleScope < Openlayer::Internal::Type::BaseModel
            # @!attribute project
            #
            #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project, nil]
            optional :project,
                     -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project }

            # @!attribute workspace
            #
            #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace, nil]
            optional :workspace,
                     -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace }

            # @!method initialize(project: nil, workspace: nil)
            #   @param project [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Project]
            #   @param workspace [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope::Workspace]

            # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope#project
            class Project < Openlayer::Internal::Type::BaseModel
              # @!attribute total
              #   The total number of rule results.
              #
              #   @return [Integer]
              required :total, Integer

              # @!attribute total_due_soon
              #   The number of rule results whose evidence is about to expire.
              #
              #   @return [Integer]
              required :total_due_soon, Integer, api_name: :totalDueSoon

              # @!attribute total_error
              #   The number of rule results that errored during evaluation.
              #
              #   @return [Integer]
              required :total_error, Integer, api_name: :totalError

              # @!attribute total_failing
              #   The number of failing rule results.
              #
              #   @return [Integer]
              required :total_failing, Integer, api_name: :totalFailing

              # @!attribute total_passing
              #   The number of passing rule results.
              #
              #   @return [Integer]
              required :total_passing, Integer, api_name: :totalPassing

              # @!attribute total_pending
              #   The number of rule results that have not been satisfied yet.
              #
              #   @return [Integer]
              required :total_pending, Integer, api_name: :totalPending

              # @!attribute total_running
              #   The number of rule results currently being evaluated.
              #
              #   @return [Integer]
              required :total_running, Integer, api_name: :totalRunning

              # @!attribute total_skipped
              #   The number of skipped rule results.
              #
              #   @return [Integer]
              required :total_skipped, Integer, api_name: :totalSkipped

              # @!method initialize(total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:)
              #   @param total [Integer] The total number of rule results.
              #
              #   @param total_due_soon [Integer] The number of rule results whose evidence is about to expire.
              #
              #   @param total_error [Integer] The number of rule results that errored during evaluation.
              #
              #   @param total_failing [Integer] The number of failing rule results.
              #
              #   @param total_passing [Integer] The number of passing rule results.
              #
              #   @param total_pending [Integer] The number of rule results that have not been satisfied yet.
              #
              #   @param total_running [Integer] The number of rule results currently being evaluated.
              #
              #   @param total_skipped [Integer] The number of skipped rule results.
            end

            # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleScope#workspace
            class Workspace < Openlayer::Internal::Type::BaseModel
              # @!attribute total
              #   The total number of rule results.
              #
              #   @return [Integer]
              required :total, Integer

              # @!attribute total_due_soon
              #   The number of rule results whose evidence is about to expire.
              #
              #   @return [Integer]
              required :total_due_soon, Integer, api_name: :totalDueSoon

              # @!attribute total_error
              #   The number of rule results that errored during evaluation.
              #
              #   @return [Integer]
              required :total_error, Integer, api_name: :totalError

              # @!attribute total_failing
              #   The number of failing rule results.
              #
              #   @return [Integer]
              required :total_failing, Integer, api_name: :totalFailing

              # @!attribute total_passing
              #   The number of passing rule results.
              #
              #   @return [Integer]
              required :total_passing, Integer, api_name: :totalPassing

              # @!attribute total_pending
              #   The number of rule results that have not been satisfied yet.
              #
              #   @return [Integer]
              required :total_pending, Integer, api_name: :totalPending

              # @!attribute total_running
              #   The number of rule results currently being evaluated.
              #
              #   @return [Integer]
              required :total_running, Integer, api_name: :totalRunning

              # @!attribute total_skipped
              #   The number of skipped rule results.
              #
              #   @return [Integer]
              required :total_skipped, Integer, api_name: :totalSkipped

              # @!method initialize(total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:)
              #   @param total [Integer] The total number of rule results.
              #
              #   @param total_due_soon [Integer] The number of rule results whose evidence is about to expire.
              #
              #   @param total_error [Integer] The number of rule results that errored during evaluation.
              #
              #   @param total_failing [Integer] The number of failing rule results.
              #
              #   @param total_passing [Integer] The number of passing rule results.
              #
              #   @param total_pending [Integer] The number of rule results that have not been satisfied yet.
              #
              #   @param total_running [Integer] The number of rule results currently being evaluated.
              #
              #   @param total_skipped [Integer] The number of skipped rule results.
            end
          end

          # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults#by_rule_type
          class ByRuleType < Openlayer::Internal::Type::BaseModel
            # @!attribute evidence
            #
            #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence, nil]
            optional :evidence,
                     -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence }

            # @!attribute platform
            #
            #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform, nil]
            optional :platform,
                     -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform }

            # @!method initialize(evidence: nil, platform: nil)
            #   @param evidence [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Evidence]
            #   @param platform [Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType::Platform]

            # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType#evidence
            class Evidence < Openlayer::Internal::Type::BaseModel
              # @!attribute total
              #   The total number of rule results.
              #
              #   @return [Integer]
              required :total, Integer

              # @!attribute total_due_soon
              #   The number of rule results whose evidence is about to expire.
              #
              #   @return [Integer]
              required :total_due_soon, Integer, api_name: :totalDueSoon

              # @!attribute total_error
              #   The number of rule results that errored during evaluation.
              #
              #   @return [Integer]
              required :total_error, Integer, api_name: :totalError

              # @!attribute total_failing
              #   The number of failing rule results.
              #
              #   @return [Integer]
              required :total_failing, Integer, api_name: :totalFailing

              # @!attribute total_passing
              #   The number of passing rule results.
              #
              #   @return [Integer]
              required :total_passing, Integer, api_name: :totalPassing

              # @!attribute total_pending
              #   The number of rule results that have not been satisfied yet.
              #
              #   @return [Integer]
              required :total_pending, Integer, api_name: :totalPending

              # @!attribute total_running
              #   The number of rule results currently being evaluated.
              #
              #   @return [Integer]
              required :total_running, Integer, api_name: :totalRunning

              # @!attribute total_skipped
              #   The number of skipped rule results.
              #
              #   @return [Integer]
              required :total_skipped, Integer, api_name: :totalSkipped

              # @!method initialize(total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:)
              #   @param total [Integer] The total number of rule results.
              #
              #   @param total_due_soon [Integer] The number of rule results whose evidence is about to expire.
              #
              #   @param total_error [Integer] The number of rule results that errored during evaluation.
              #
              #   @param total_failing [Integer] The number of failing rule results.
              #
              #   @param total_passing [Integer] The number of passing rule results.
              #
              #   @param total_pending [Integer] The number of rule results that have not been satisfied yet.
              #
              #   @param total_running [Integer] The number of rule results currently being evaluated.
              #
              #   @param total_skipped [Integer] The number of skipped rule results.
            end

            # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults::ByRuleType#platform
            class Platform < Openlayer::Internal::Type::BaseModel
              # @!attribute total
              #   The total number of rule results.
              #
              #   @return [Integer]
              required :total, Integer

              # @!attribute total_due_soon
              #   The number of rule results whose evidence is about to expire.
              #
              #   @return [Integer]
              required :total_due_soon, Integer, api_name: :totalDueSoon

              # @!attribute total_error
              #   The number of rule results that errored during evaluation.
              #
              #   @return [Integer]
              required :total_error, Integer, api_name: :totalError

              # @!attribute total_failing
              #   The number of failing rule results.
              #
              #   @return [Integer]
              required :total_failing, Integer, api_name: :totalFailing

              # @!attribute total_passing
              #   The number of passing rule results.
              #
              #   @return [Integer]
              required :total_passing, Integer, api_name: :totalPassing

              # @!attribute total_pending
              #   The number of rule results that have not been satisfied yet.
              #
              #   @return [Integer]
              required :total_pending, Integer, api_name: :totalPending

              # @!attribute total_running
              #   The number of rule results currently being evaluated.
              #
              #   @return [Integer]
              required :total_running, Integer, api_name: :totalRunning

              # @!attribute total_skipped
              #   The number of skipped rule results.
              #
              #   @return [Integer]
              required :total_skipped, Integer, api_name: :totalSkipped

              # @!method initialize(total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:)
              #   @param total [Integer] The total number of rule results.
              #
              #   @param total_due_soon [Integer] The number of rule results whose evidence is about to expire.
              #
              #   @param total_error [Integer] The number of rule results that errored during evaluation.
              #
              #   @param total_failing [Integer] The number of failing rule results.
              #
              #   @param total_passing [Integer] The number of passing rule results.
              #
              #   @param total_pending [Integer] The number of rule results that have not been satisfied yet.
              #
              #   @param total_running [Integer] The number of rule results currently being evaluated.
              #
              #   @param total_skipped [Integer] The number of skipped rule results.
            end
          end
        end

        # @see Openlayer::Models::Governance::RuleStatRetrieveResponse#rules
        class Rules < Openlayer::Internal::Type::BaseModel
          # @!attribute by_scope
          #   Rule counts by scope.
          #
          #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope, nil]
          optional :by_scope,
                   -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope },
                   api_name: :byScope

          # @!attribute by_type
          #   Rule counts by type.
          #
          #   @return [Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType, nil]
          optional :by_type,
                   -> { Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType },
                   api_name: :byType

          # @!attribute total
          #   The total number of rules.
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!method initialize(by_scope: nil, by_type: nil, total: nil)
          #   Counts of the rules themselves, after any filters in the request.
          #
          #   @param by_scope [Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByScope] Rule counts by scope.
          #
          #   @param by_type [Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules::ByType] Rule counts by type.
          #
          #   @param total [Integer] The total number of rules.

          # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules#by_scope
          class ByScope < Openlayer::Internal::Type::BaseModel
            # @!attribute project
            #
            #   @return [Integer, nil]
            optional :project, Integer

            # @!attribute workspace
            #
            #   @return [Integer, nil]
            optional :workspace, Integer

            # @!method initialize(project: nil, workspace: nil)
            #   Rule counts by scope.
            #
            #   @param project [Integer]
            #   @param workspace [Integer]
          end

          # @see Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules#by_type
          class ByType < Openlayer::Internal::Type::BaseModel
            # @!attribute evidence
            #
            #   @return [Integer, nil]
            optional :evidence, Integer

            # @!attribute platform
            #
            #   @return [Integer, nil]
            optional :platform, Integer

            # @!method initialize(evidence: nil, platform: nil)
            #   Rule counts by type.
            #
            #   @param evidence [Integer]
            #   @param platform [Integer]
          end
        end
      end
    end
  end
end
