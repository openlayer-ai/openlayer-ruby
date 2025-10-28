# frozen_string_literal: true

module Openlayer
  module Resources
    class Projects
      class Tests
        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Projects::TestCreateParams} for more details.
        #
        # Create a test.
        #
        # @overload create(project_id, description:, name:, subtype:, thresholds:, type:, archived: nil, default_to_all_pipelines: nil, delay_window: nil, evaluation_window: nil, exclude_pipelines: nil, include_historical_data: nil, include_pipelines: nil, uses_ml_model: nil, uses_production_data: nil, uses_reference_dataset: nil, uses_training_dataset: nil, uses_validation_dataset: nil, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param description [Object, nil] The test description.
        #
        # @param name [String] The test name.
        #
        # @param subtype [Symbol, Openlayer::Models::Projects::TestCreateParams::Subtype] The test subtype.
        #
        # @param thresholds [Array<Openlayer::Models::Projects::TestCreateParams::Threshold>]
        #
        # @param type [Symbol, Openlayer::Models::Projects::TestCreateParams::Type] The test type.
        #
        # @param archived [Boolean] Whether the test is archived.
        #
        # @param default_to_all_pipelines [Boolean, nil] Whether to apply the test to all pipelines (data sources) or to a specific set o
        #
        # @param delay_window [Float, nil] The delay window in seconds. Only applies to tests that use production data.
        #
        # @param evaluation_window [Float, nil] The evaluation window in seconds. Only applies to tests that use production data
        #
        # @param exclude_pipelines [Array<String>, nil] Array of pipelines (data sources) to which the test should not be applied. Only
        #
        # @param include_historical_data [Boolean, nil] Whether to include historical data in the test result. Only applies to tests tha
        #
        # @param include_pipelines [Array<String>, nil] Array of pipelines (data sources) to which the test should be applied. Only appl
        #
        # @param uses_ml_model [Boolean] Whether the test uses an ML model.
        #
        # @param uses_production_data [Boolean] Whether the test uses production data (monitoring mode only).
        #
        # @param uses_reference_dataset [Boolean] Whether the test uses a reference dataset (monitoring mode only).
        #
        # @param uses_training_dataset [Boolean] Whether the test uses a training dataset.
        #
        # @param uses_validation_dataset [Boolean] Whether the test uses a validation dataset.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::TestCreateResponse]
        #
        # @see Openlayer::Models::Projects::TestCreateParams
        def create(project_id, params)
          parsed, options = Openlayer::Projects::TestCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["projects/%1$s/tests", project_id],
            body: parsed,
            model: Openlayer::Models::Projects::TestCreateResponse,
            options: options
          )
        end

        # Update tests.
        #
        # @overload update(project_id, payloads:, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param payloads [Array<Openlayer::Models::Projects::TestUpdateParams::Payload>]
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::TestUpdateResponse]
        #
        # @see Openlayer::Models::Projects::TestUpdateParams
        def update(project_id, params)
          parsed, options = Openlayer::Projects::TestUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["projects/%1$s/tests", project_id],
            body: parsed,
            model: Openlayer::Models::Projects::TestUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Projects::TestListParams} for more details.
        #
        # List tests under a project.
        #
        # @overload list(project_id, include_archived: nil, origin_version_id: nil, page: nil, per_page: nil, suggested: nil, type: nil, uses_production_data: nil, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param include_archived [Boolean] Filter for archived tests.
        #
        # @param origin_version_id [String, nil] Retrive tests created by a specific project version.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param suggested [Boolean] Filter for suggested tests.
        #
        # @param type [Symbol, Openlayer::Models::Projects::TestListParams::Type] Filter objects by test type. Available types are `integrity`, `consistency`, `pe
        #
        # @param uses_production_data [Boolean, nil] Retrive tests with usesProductionData (monitoring).
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::TestListResponse]
        #
        # @see Openlayer::Models::Projects::TestListParams
        def list(project_id, params = {})
          parsed, options = Openlayer::Projects::TestListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["projects/%1$s/tests", project_id],
            query: parsed.transform_keys(
              include_archived: "includeArchived",
              origin_version_id: "originVersionId",
              per_page: "perPage",
              uses_production_data: "usesProductionData"
            ),
            model: Openlayer::Models::Projects::TestListResponse,
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
