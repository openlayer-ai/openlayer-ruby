# frozen_string_literal: true

module Openlayer
  module Resources
    class Commits
      class TestResults
        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Commits::TestResultListParams} for more details.
        #
        # List the test results for a project commit (project version).
        #
        # @overload list(project_version_id, include_archived: nil, page: nil, per_page: nil, status: nil, type: nil, request_options: {})
        #
        # @param project_version_id [String] The project version (commit) id.
        #
        # @param include_archived [Boolean] Filter for archived tests.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param status [Symbol, Openlayer::Models::Commits::TestResultListParams::Status] Filter list of test results by status. Available statuses are `running`, `passin
        #
        # @param type [Symbol, Openlayer::Models::Commits::TestResultListParams::Type] Filter objects by test type. Available types are `integrity`, `consistency`, `pe
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Commits::TestResultListResponse]
        #
        # @see Openlayer::Models::Commits::TestResultListParams
        def list(project_version_id, params = {})
          parsed, options = Openlayer::Commits::TestResultListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["versions/%1$s/results", project_version_id],
            query: parsed.transform_keys(include_archived: "includeArchived", per_page: "perPage"),
            model: Openlayer::Models::Commits::TestResultListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Openlayer::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
