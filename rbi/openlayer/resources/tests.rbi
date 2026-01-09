# typed: strong

module Openlayer
  module Resources
    class Tests
      # Triggers one-off evaluation of a specific monitoring test for a custom timestamp
      # range. This allows evaluating tests for historical data or custom time periods
      # outside the regular evaluation window schedule. It also allows overwriting the
      # existing test results.
      sig do
        params(
          test_id: String,
          end_timestamp: Integer,
          start_timestamp: Integer,
          inference_pipeline_id: String,
          overwrite_results: T::Boolean,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::TestEvaluateResponse)
      end
      def evaluate(
        # The test id.
        test_id,
        # End timestamp in seconds (Unix epoch)
        end_timestamp:,
        # Start timestamp in seconds (Unix epoch)
        start_timestamp:,
        # ID of the inference pipeline to evaluate. If not provided, all inference
        # pipelines the test applies to will be evaluated.
        inference_pipeline_id: nil,
        # Whether to overwrite existing test results
        overwrite_results: nil,
        request_options: {}
      )
      end

      # List the test results for a test.
      sig do
        params(
          test_id: String,
          end_timestamp: Float,
          include_insights: T::Boolean,
          inference_pipeline_id: T.nilable(String),
          page: Integer,
          per_page: Integer,
          project_version_id: T.nilable(String),
          start_timestamp: Float,
          status: T::Array[String],
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::TestListResultsResponse)
      end
      def list_results(
        # The test id.
        test_id,
        # Filter for results that use data starting before the end timestamp.
        end_timestamp: nil,
        # Include the insights linked to each test result
        include_insights: nil,
        # Retrive test results for a specific inference pipeline.
        inference_pipeline_id: nil,
        # The page to return in a paginated query.
        page: nil,
        # Maximum number of items to return per page.
        per_page: nil,
        # Retrive test results for a specific project version.
        project_version_id: nil,
        # Filter for results that use data ending after the start timestamp.
        start_timestamp: nil,
        # Filter by status(es).
        status: nil,
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
