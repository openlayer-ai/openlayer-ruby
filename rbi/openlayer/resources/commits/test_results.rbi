# typed: strong

module Openlayer
  module Resources
    class Commits
      class TestResults
        # List the test results for a project commit (project version).
        sig do
          params(
            project_version_id: String,
            include_archived: T::Boolean,
            page: Integer,
            per_page: Integer,
            status: Openlayer::Commits::TestResultListParams::Status::OrSymbol,
            type: Openlayer::Commits::TestResultListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Commits::TestResultListResponse)
        end
        def list(
          # The project version (commit) id.
          project_version_id,
          # Filter for archived tests.
          include_archived: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Filter list of test results by status. Available statuses are `running`,
          # `passing`, `failing`, `skipped`, and `error`.
          status: nil,
          # Filter objects by test type. Available types are `integrity`, `consistency`,
          # `performance`, `fairness`, and `robustness`.
          type: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Openlayer::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
