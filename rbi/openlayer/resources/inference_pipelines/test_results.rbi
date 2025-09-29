# typed: strong

module Openlayer
  module Resources
    class InferencePipelines
      class TestResults
        # List the latest test results for an inference pipeline.
        sig do
          params(
            inference_pipeline_id: String,
            page: Integer,
            per_page: Integer,
            status:
              Openlayer::InferencePipelines::TestResultListParams::Status::OrSymbol,
            type:
              Openlayer::InferencePipelines::TestResultListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            Openlayer::Models::InferencePipelines::TestResultListResponse
          )
        end
        def list(
          # The inference pipeline id (a UUID).
          inference_pipeline_id,
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
