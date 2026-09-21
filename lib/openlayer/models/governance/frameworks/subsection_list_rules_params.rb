# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      module Frameworks
        # @see Openlayer::Resources::Governance::Frameworks::Subsections#list_rules
        class SubsectionListRulesParams < Openlayer::Internal::Type::BaseModel
          extend Openlayer::Internal::Type::RequestParameters::Converter
          include Openlayer::Internal::Type::RequestParameters

          # @!attribute framework_id
          #
          #   @return [String]
          required :framework_id, String

          # @!attribute subsection_id
          #
          #   @return [String]
          required :subsection_id, String

          # @!attribute include_results
          #   Whether to include each rule's results inline, in a `results` array.
          #
          #   @return [Boolean, nil]
          optional :include_results, Openlayer::Internal::Type::Boolean

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

          # @!attribute status
          #   Only include items whose rule result has this compliance status.
          #
          #   @return [Symbol, Openlayer::Models::Governance::Frameworks::SubsectionListRulesParams::Status, nil]
          optional :status, enum: -> { Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status }

          # @!method initialize(framework_id:, subsection_id:, include_results: nil, page: nil, per_page: nil, project_id: nil, status: nil, request_options: {})
          #   @param framework_id [String]
          #
          #   @param subsection_id [String]
          #
          #   @param include_results [Boolean] Whether to include each rule's results inline, in a `results` array.
          #
          #   @param page [Integer] The page to return in a paginated query.
          #
          #   @param per_page [Integer] Maximum number of items to return per page.
          #
          #   @param project_id [String] Only include items that apply to this project.
          #
          #   @param status [Symbol, Openlayer::Models::Governance::Frameworks::SubsectionListRulesParams::Status] Only include items whose rule result has this compliance status.
          #
          #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

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
        end
      end
    end
  end
end
