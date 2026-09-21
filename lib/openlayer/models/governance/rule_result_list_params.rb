# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleResults#list
      class RuleResultListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute workspace_id
        #
        #   @return [String]
        required :workspace_id, String

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

        # @!attribute rule_id
        #   Only include results of this rule.
        #
        #   @return [String, nil]
        optional :rule_id, String

        # @!attribute scope
        #   Only include rules with this scope.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleResultListParams::Scope, nil]
        optional :scope, enum: -> { Openlayer::Governance::RuleResultListParams::Scope }

        # @!attribute search_query
        #   Filter by a free-text search over names and descriptions.
        #
        #   @return [String, nil]
        optional :search_query, String

        # @!attribute status
        #   Only include items whose rule result has this compliance status.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleResultListParams::Status, nil]
        optional :status, enum: -> { Openlayer::Governance::RuleResultListParams::Status }

        # @!attribute type
        #   Only include rules of this type.
        #
        #   @return [Symbol, Openlayer::Models::Governance::RuleResultListParams::Type, nil]
        optional :type, enum: -> { Openlayer::Governance::RuleResultListParams::Type }

        # @!method initialize(workspace_id:, enabled_framework_only: nil, framework_id: nil, include_unframed: nil, page: nil, per_page: nil, project_id: nil, rule_id: nil, scope: nil, search_query: nil, status: nil, type: nil, request_options: {})
        #   @param workspace_id [String]
        #
        #   @param enabled_framework_only [Boolean] Only include items belonging to at least one enabled framework.
        #
        #   @param framework_id [String] Only include items belonging to this framework.
        #
        #   @param include_unframed [Boolean] Whether to include rules that are not part of any framework.
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param project_id [String] Only include items that apply to this project.
        #
        #   @param rule_id [String] Only include results of this rule.
        #
        #   @param scope [Symbol, Openlayer::Models::Governance::RuleResultListParams::Scope] Only include rules with this scope.
        #
        #   @param search_query [String] Filter by a free-text search over names and descriptions.
        #
        #   @param status [Symbol, Openlayer::Models::Governance::RuleResultListParams::Status] Only include items whose rule result has this compliance status.
        #
        #   @param type [Symbol, Openlayer::Models::Governance::RuleResultListParams::Type] Only include rules of this type.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # Only include rules with this scope.
        module Scope
          extend Openlayer::Internal::Type::Enum

          PROJECT = :project
          WORKSPACE = :workspace

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
