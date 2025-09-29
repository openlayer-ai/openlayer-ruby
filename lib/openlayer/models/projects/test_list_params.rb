# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::Tests#list
      class TestListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute include_archived
        #   Filter for archived tests.
        #
        #   @return [Boolean, nil]
        optional :include_archived, Openlayer::Internal::Type::Boolean

        # @!attribute origin_version_id
        #   Retrive tests created by a specific project version.
        #
        #   @return [String, nil]
        optional :origin_version_id, String, nil?: true

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

        # @!attribute suggested
        #   Filter for suggested tests.
        #
        #   @return [Boolean, nil]
        optional :suggested, Openlayer::Internal::Type::Boolean

        # @!attribute type
        #   Filter objects by test type. Available types are `integrity`, `consistency`,
        #   `performance`, `fairness`, and `robustness`.
        #
        #   @return [Symbol, Openlayer::Models::Projects::TestListParams::Type, nil]
        optional :type, enum: -> { Openlayer::Projects::TestListParams::Type }

        # @!attribute uses_production_data
        #   Retrive tests with usesProductionData (monitoring).
        #
        #   @return [Boolean, nil]
        optional :uses_production_data, Openlayer::Internal::Type::Boolean, nil?: true

        # @!method initialize(include_archived: nil, origin_version_id: nil, page: nil, per_page: nil, suggested: nil, type: nil, uses_production_data: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Projects::TestListParams} for more details.
        #
        #   @param include_archived [Boolean] Filter for archived tests.
        #
        #   @param origin_version_id [String, nil] Retrive tests created by a specific project version.
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param suggested [Boolean] Filter for suggested tests.
        #
        #   @param type [Symbol, Openlayer::Models::Projects::TestListParams::Type] Filter objects by test type. Available types are `integrity`, `consistency`, `pe
        #
        #   @param uses_production_data [Boolean, nil] Retrive tests with usesProductionData (monitoring).
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # Filter objects by test type. Available types are `integrity`, `consistency`,
        # `performance`, `fairness`, and `robustness`.
        module Type
          extend Openlayer::Internal::Type::Enum

          INTEGRITY = :integrity
          CONSISTENCY = :consistency
          PERFORMANCE = :performance
          FAIRNESS = :fairness
          ROBUSTNESS = :robustness

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
