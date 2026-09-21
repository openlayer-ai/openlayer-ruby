# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#list_project_rule_stats
      class FrameworkListProjectRuleStatsResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item>]
        required :items,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item] }

        # @!method initialize(items:)
        #   @param items [Array<Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item>]

        class Item < Openlayer::Internal::Type::BaseModel
          # @!attribute project_id
          #   The project id.
          #
          #   @return [String]
          required :project_id, String, api_name: :projectId

          # @!attribute project_name
          #   The project name.
          #
          #   @return [String]
          required :project_name, String, api_name: :projectName

          # @!attribute task_type
          #   The project's task type.
          #
          #   @return [String]
          required :task_type, String, api_name: :taskType

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

          # @!attribute by_rule_type
          #   The same counts, broken down by the type of the rule each result belongs to.
          #
          #   @return [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType, nil]
          optional :by_rule_type,
                   -> { Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType },
                   api_name: :byRuleType

          # @!method initialize(project_id:, project_name:, task_type:, total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:, by_rule_type: nil)
          #   @param project_id [String] The project id.
          #
          #   @param project_name [String] The project name.
          #
          #   @param task_type [String] The project's task type.
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
          #   @param by_rule_type [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType] The same counts, broken down by the type of the rule each result belongs to.

          # @see Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item#by_rule_type
          class ByRuleType < Openlayer::Internal::Type::BaseModel
            # @!attribute evidence
            #
            #   @return [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence, nil]
            optional :evidence,
                     -> { Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence }

            # @!attribute platform
            #
            #   @return [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform, nil]
            optional :platform,
                     -> { Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform }

            # @!method initialize(evidence: nil, platform: nil)
            #   The same counts, broken down by the type of the rule each result belongs to.
            #
            #   @param evidence [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Evidence]
            #   @param platform [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType::Platform]

            # @see Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType#evidence
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

            # @see Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item::ByRuleType#platform
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
      end
    end
  end
end
