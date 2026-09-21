# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#list
      class FrameworkListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute workspace_id
        #
        #   @return [String]
        required :workspace_id, String

        # @!attribute asc
        #   Whether to sort in ascending order.
        #
        #   @return [Boolean, nil]
        optional :asc, Openlayer::Internal::Type::Boolean

        # @!attribute completion_operator
        #   How to compare each framework's completion percentage with `completionValue`.
        #   Must be sent together with `completionValue`.
        #
        #   @return [Symbol, Openlayer::Models::Governance::FrameworkListParams::CompletionOperator, nil]
        optional :completion_operator, enum: -> { Openlayer::Governance::FrameworkListParams::CompletionOperator }

        # @!attribute completion_value
        #   The completion percentage to compare against, from 0 to 100.
        #
        #   @return [Integer, nil]
        optional :completion_value, Integer

        # @!attribute enabled
        #   Only include frameworks that are enabled (or disabled).
        #
        #   @return [Boolean, nil]
        optional :enabled, Openlayer::Internal::Type::Boolean

        # @!attribute include_rule_stats
        #   Whether to include a `ruleStats` object on each framework, with its rule result
        #   status counts and its per-project completion buckets. Computed over the returned
        #   page only.
        #
        #   @return [Boolean, nil]
        optional :include_rule_stats, Openlayer::Internal::Type::Boolean

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

        # @!attribute project_id
        #   Only include items that apply to this project.
        #
        #   @return [String, nil]
        optional :project_id, String

        # @!attribute search_query
        #   Filter by a free-text search over names and descriptions.
        #
        #   @return [String, nil]
        optional :search_query, String

        # @!attribute sort_column
        #   The column to sort on.
        #
        #   @return [Symbol, Openlayer::Models::Governance::FrameworkListParams::SortColumn, nil]
        optional :sort_column, enum: -> { Openlayer::Governance::FrameworkListParams::SortColumn }

        # @!attribute tags
        #   Only include frameworks carrying all of these tags.
        #
        #   @return [Array<String>, nil]
        optional :tags, Openlayer::Internal::Type::ArrayOf[String]

        # @!method initialize(workspace_id:, asc: nil, completion_operator: nil, completion_value: nil, enabled: nil, include_rule_stats: nil, page: nil, per_page: nil, project_id: nil, search_query: nil, sort_column: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::FrameworkListParams} for more details.
        #
        #   @param workspace_id [String]
        #
        #   @param asc [Boolean] Whether to sort in ascending order.
        #
        #   @param completion_operator [Symbol, Openlayer::Models::Governance::FrameworkListParams::CompletionOperator] How to compare each framework's completion percentage with `completionValue`. Mu
        #
        #   @param completion_value [Integer] The completion percentage to compare against, from 0 to 100.
        #
        #   @param enabled [Boolean] Only include frameworks that are enabled (or disabled).
        #
        #   @param include_rule_stats [Boolean] Whether to include a `ruleStats` object on each framework, with its rule result
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param project_id [String] Only include items that apply to this project.
        #
        #   @param search_query [String] Filter by a free-text search over names and descriptions.
        #
        #   @param sort_column [Symbol, Openlayer::Models::Governance::FrameworkListParams::SortColumn] The column to sort on.
        #
        #   @param tags [Array<String>] Only include frameworks carrying all of these tags.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # How to compare each framework's completion percentage with `completionValue`.
        # Must be sent together with `completionValue`.
        module CompletionOperator
          extend Openlayer::Internal::Type::Enum

          IS = :is
          GREATER = :>
          GREATER_OR_EQUALS = :">="
          LESS = :<
          LESS_OR_EQUALS = :"<="
          NOT_EQUALS = :"!="

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The column to sort on.
        module SortColumn
          extend Openlayer::Internal::Type::Enum

          NAME = :name
          ENABLED = :enabled
          DATE_CREATED = :dateCreated
          DATE_UPDATED = :dateUpdated
          OVERALL_COMPLETION = :overallCompletion
          PROJECT_COMPLETION_BUCKETS = :projectCompletionBuckets

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
