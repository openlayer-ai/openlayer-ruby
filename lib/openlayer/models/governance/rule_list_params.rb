# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Rules#list
      class RuleListParams < Openlayer::Internal::Type::BaseModel
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

        # @!attribute assignee_id
        #   Only include rules assigned to this user.
        #
        #   @return [String, nil]
        optional :assignee_id, String

        # @!attribute deactivated
        #   Only include rules that are deactivated (or active).
        #
        #   @return [Boolean, nil]
        optional :deactivated, Openlayer::Internal::Type::Boolean

        # @!attribute enabled_framework_only
        #   Only include items belonging to at least one enabled framework.
        #
        #   @return [Boolean, nil]
        optional :enabled_framework_only, Openlayer::Internal::Type::Boolean

        # @!attribute framework_id
        #   Only include items belonging to this framework.
        #
        #   @return [String, nil]
        optional :framework_id, String

        # @!attribute group
        #   Only include rules in one bucket of the compliance workflow. `open` covers rules
        #   that still need attention, `done` covers rules that are fully satisfied, and
        #   `excluded` covers rules that have been deactivated.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleListParams::Group, nil]
        optional :group, enum: -> { Openlayer::Governance::RuleListParams::Group }

        # @!attribute include_results
        #   Whether to include each rule's results inline, in a `results` array.
        #
        #   @return [Boolean, nil]
        optional :include_results, Openlayer::Internal::Type::Boolean

        # @!attribute include_unframed
        #   Whether to include rules that are not part of any framework.
        #
        #   @return [Boolean, nil]
        optional :include_unframed, Openlayer::Internal::Type::Boolean

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

        # @!attribute scope
        #   Only include rules with this scope.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleListParams::Scope, nil]
        optional :scope, enum: -> { Openlayer::Governance::RuleListParams::Scope }

        # @!attribute search_query
        #   Filter by a free-text search over names and descriptions.
        #
        #   @return [String, nil]
        optional :search_query, String

        # @!attribute sort_by
        #   The field to sort on.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleListParams::SortBy, nil]
        optional :sort_by, enum: -> { Openlayer::Governance::RuleListParams::SortBy }

        # @!attribute status
        #   Only include items whose rule result has this compliance status.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleListParams::Status, nil]
        optional :status, enum: -> { Openlayer::Governance::RuleListParams::Status }

        # @!attribute tags
        #   Only include rules carrying all of these rule tags. Pass tag ids, which you can
        #   look up with [List rule tags](/api-reference/rest/governance/list-rule-tags).
        #
        #   @return [Array<String>, nil]
        optional :tags, Openlayer::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   Only include rules of this type.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleListParams::Type, nil]
        optional :type, enum: -> { Openlayer::Governance::RuleListParams::Type }

        # @!method initialize(workspace_id:, asc: nil, assignee_id: nil, deactivated: nil, enabled_framework_only: nil, framework_id: nil, group: nil, include_results: nil, include_unframed: nil, page: nil, per_page: nil, project_id: nil, scope: nil, search_query: nil, sort_by: nil, status: nil, tags: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleListParams} for more details.
        #
        #   @param workspace_id [String]
        #
        #   @param asc [Boolean] Whether to sort in ascending order.
        #
        #   @param assignee_id [String] Only include rules assigned to this user.
        #
        #   @param deactivated [Boolean] Only include rules that are deactivated (or active).
        #
        #   @param enabled_framework_only [Boolean] Only include items belonging to at least one enabled framework.
        #
        #   @param framework_id [String] Only include items belonging to this framework.
        #
        #   @param group [Symbol, Openlayer::Models::Governance::RuleListParams::Group] Only include rules in one bucket of the compliance workflow. `open` covers rules
        #
        #   @param include_results [Boolean] Whether to include each rule's results inline, in a `results` array.
        #
        #   @param include_unframed [Boolean] Whether to include rules that are not part of any framework.
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param project_id [String] Only include items that apply to this project.
        #
        #   @param scope [Symbol, Openlayer::Models::Governance::RuleListParams::Scope] Only include rules with this scope.
        #
        #   @param search_query [String] Filter by a free-text search over names and descriptions.
        #
        #   @param sort_by [Symbol, Openlayer::Models::Governance::RuleListParams::SortBy] The field to sort on.
        #
        #   @param status [Symbol, Openlayer::Models::Governance::RuleListParams::Status] Only include items whose rule result has this compliance status.
        #
        #   @param tags [Array<String>] Only include rules carrying all of these rule tags. Pass tag ids, which you can
        #
        #   @param type [Symbol, Openlayer::Models::Governance::RuleListParams::Type] Only include rules of this type.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # Only include rules in one bucket of the compliance workflow. `open` covers rules
        # that still need attention, `done` covers rules that are fully satisfied, and
        # `excluded` covers rules that have been deactivated.
        module Group
          extend Openlayer::Internal::Type::Enum

          OPEN = :open
          EXCLUDED = :excluded
          DONE = :done

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Only include rules with this scope.
        module Scope
          extend Openlayer::Internal::Type::Enum

          PROJECT = :project
          WORKSPACE = :workspace

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The field to sort on.
        module SortBy
          extend Openlayer::Internal::Type::Enum

          NAME = :name
          STATUS = :status
          FRAMEWORKS = :frameworks
          SCOPE = :scope
          DATE_CREATED = :dateCreated

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Only include items whose rule result has this compliance status.
        module Status
          extend Openlayer::Internal::Type::Enum

          RUNNING = :running
          PASSING = :passing
          FAILING = :failing
          SKIPPED = :skipped
          ERROR = :error
          PENDING = :pending
          DUE_SOON = :due_soon

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Only include rules of this type.
        module Type
          extend Openlayer::Internal::Type::Enum

          PLATFORM = :platform
          EVIDENCE = :evidence

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
