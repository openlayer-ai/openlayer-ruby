# typed: strong

module Openlayer
  module Resources
    class Projects
      class Tests
        # Create a test.
        sig do
          params(
            project_id: String,
            description: T.nilable(T.anything),
            name: String,
            subtype: Openlayer::Projects::TestCreateParams::Subtype::OrSymbol,
            thresholds:
              T::Array[
                Openlayer::Projects::TestCreateParams::Threshold::OrHash
              ],
            type: Openlayer::Projects::TestCreateParams::Type::OrSymbol,
            archived: T::Boolean,
            delay_window: T.nilable(Float),
            evaluation_window: T.nilable(Float),
            uses_ml_model: T::Boolean,
            uses_production_data: T::Boolean,
            uses_reference_dataset: T::Boolean,
            uses_training_dataset: T::Boolean,
            uses_validation_dataset: T::Boolean,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Projects::TestCreateResponse)
        end
        def create(
          # The project id.
          project_id,
          # The test description.
          description:,
          # The test name.
          name:,
          # The test subtype.
          subtype:,
          thresholds:,
          # The test type.
          type:,
          # Whether the test is archived.
          archived: nil,
          # The delay window in seconds. Only applies to tests that use production data.
          delay_window: nil,
          # The evaluation window in seconds. Only applies to tests that use production
          # data.
          evaluation_window: nil,
          # Whether the test uses an ML model.
          uses_ml_model: nil,
          # Whether the test uses production data (monitoring mode only).
          uses_production_data: nil,
          # Whether the test uses a reference dataset (monitoring mode only).
          uses_reference_dataset: nil,
          # Whether the test uses a training dataset.
          uses_training_dataset: nil,
          # Whether the test uses a validation dataset.
          uses_validation_dataset: nil,
          request_options: {}
        )
        end

        # Update tests.
        sig do
          params(
            project_id: String,
            payloads:
              T::Array[Openlayer::Projects::TestUpdateParams::Payload::OrHash],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Projects::TestUpdateResponse)
        end
        def update(
          # The project id.
          project_id,
          payloads:,
          request_options: {}
        )
        end

        # List tests under a project.
        sig do
          params(
            project_id: String,
            include_archived: T::Boolean,
            origin_version_id: T.nilable(String),
            page: Integer,
            per_page: Integer,
            suggested: T::Boolean,
            type: Openlayer::Projects::TestListParams::Type::OrSymbol,
            uses_production_data: T.nilable(T::Boolean),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Projects::TestListResponse)
        end
        def list(
          # The project id.
          project_id,
          # Filter for archived tests.
          include_archived: nil,
          # Retrive tests created by a specific project version.
          origin_version_id: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Filter for suggested tests.
          suggested: nil,
          # Filter objects by test type. Available types are `integrity`, `consistency`,
          # `performance`, `fairness`, and `robustness`.
          type: nil,
          # Retrive tests with usesProductionData (monitoring).
          uses_production_data: nil,
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
