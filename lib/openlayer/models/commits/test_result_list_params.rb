# frozen_string_literal: true

module Openlayer
  module Models
    module Commits
      # @see Openlayer::Resources::Commits::TestResults#list
      class TestResultListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute include_archived
        #   Filter for archived tests.
        #
        #   @return [Boolean, nil]
        optional :include_archived, Openlayer::Internal::Type::Boolean

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

        # @!attribute status
        #   Filter list of test results by status. Available statuses are `running`,
        #   `passing`, `failing`, `skipped`, and `error`.
        #
        #   @return [Symbol, Openlayer::Models::Commits::TestResultListParams::Status, nil]
        optional :status, enum: -> { Openlayer::Commits::TestResultListParams::Status }

        # @!attribute type
        #   Filter objects by test type. Available types are `integrity`, `consistency`,
        #   `performance`, `fairness`, and `robustness`.
        #
        #   @return [Symbol, Openlayer::Models::Commits::TestResultListParams::Type, nil]
        optional :type, enum: -> { Openlayer::Commits::TestResultListParams::Type }

        # @!method initialize(include_archived: nil, page: nil, per_page: nil, status: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Commits::TestResultListParams} for more details.
        #
        #   @param include_archived [Boolean] Filter for archived tests.
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param status [Symbol, Openlayer::Models::Commits::TestResultListParams::Status] Filter list of test results by status. Available statuses are `running`, `passin
        #
        #   @param type [Symbol, Openlayer::Models::Commits::TestResultListParams::Type] Filter objects by test type. Available types are `integrity`, `consistency`, `pe
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # Filter list of test results by status. Available statuses are `running`,
        # `passing`, `failing`, `skipped`, and `error`.
        module Status
          extend Openlayer::Internal::Type::Enum

          RUNNING = :running
          PASSING = :passing
          FAILING = :failing
          SKIPPED = :skipped
          ERROR = :error

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
