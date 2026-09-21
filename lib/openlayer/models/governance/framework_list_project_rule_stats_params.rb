# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#list_project_rule_stats
      class FrameworkListProjectRuleStatsParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute framework_id
        #
        #   @return [String]
        required :framework_id, String

        # @!attribute asc
        #   Whether to sort in ascending order.
        #
        #   @return [Boolean, nil]
        optional :asc, Openlayer::Internal::Type::Boolean

        # @!attribute page
        #   The page to return in a paginated query.
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute per_page
        #   Maximum number of items to return per page.
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!attribute sort_column
        #   The column to sort on.
        #
        #   @return [Symbol, Openlayer::Models::Governance::FrameworkListProjectRuleStatsParams::SortColumn, nil]
        optional :sort_column, enum: -> { Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn }

        # @!method initialize(framework_id:, asc: nil, page: nil, per_page: nil, sort_column: nil, request_options: {})
        #   @param framework_id [String]
        #
        #   @param asc [Boolean] Whether to sort in ascending order.
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param sort_column [Symbol, Openlayer::Models::Governance::FrameworkListProjectRuleStatsParams::SortColumn] The column to sort on.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # The column to sort on.
        module SortColumn
          extend Openlayer::Internal::Type::Enum

          PROJECT_NAME = :projectName
          TOTAL = :total
          OVERALL_COMPLETION = :overallCompletion
          TOTAL_PASSING = :totalPassing
          TOTAL_FAILING = :totalFailing
          TOTAL_SKIPPED = :totalSkipped
          TOTAL_RUNNING = :totalRunning
          TOTAL_ERROR = :totalError
          TOTAL_PENDING = :totalPending
          TOTAL_DUE_SOON = :totalDueSoon

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
