# typed: strong

module Openlayer
  module Resources
    class Projects
      sig { returns(Openlayer::Resources::Projects::Commits) }
      attr_reader :commits

      sig { returns(Openlayer::Resources::Projects::InferencePipelines) }
      attr_reader :inference_pipelines

      sig { returns(Openlayer::Resources::Projects::Tests) }
      attr_reader :tests

      # Create a project in your workspace.
      sig do
        params(
          name: String,
          task_type: Openlayer::ProjectCreateParams::TaskType::OrSymbol,
          data_retention_days: T.nilable(Integer),
          description: T.nilable(String),
          model_developer: T.nilable(String),
          model_types: T.nilable(T::Array[String]),
          purpose: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::ProjectCreateResponse)
      end
      def create(
        # The project name.
        name:,
        # The task type of the project.
        task_type:,
        # Number of days to retain monitoring data for this project. Null means data is
        # retained indefinitely.
        data_retention_days: nil,
        # The project description.
        description: nil,
        # Who developed the model used in this project.
        model_developer: nil,
        # The kinds of model used in this project.
        model_types: nil,
        # What the system in this project is intended to do.
        purpose: nil,
        request_options: {}
      )
      end

      # Update a project's metadata.
      sig do
        params(
          project_id: String,
          data_retention_days: T.nilable(Integer),
          description: T.nilable(String),
          model_developer: T.nilable(String),
          model_types: T.nilable(T::Array[String]),
          name: String,
          purpose: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::ProjectUpdateResponse)
      end
      def update(
        # The project id.
        project_id,
        # Number of days to retain monitoring data for this project. Null means data is
        # retained indefinitely.
        data_retention_days: nil,
        # The project description.
        description: nil,
        # Who developed the model used in this project.
        model_developer: nil,
        # The kinds of model used in this project.
        model_types: nil,
        # The project name.
        name: nil,
        # What the system in this project is intended to do.
        purpose: nil,
        request_options: {}
      )
      end

      # List your workspace's projects.
      sig do
        params(
          name: String,
          page: Integer,
          per_page: Integer,
          task_type: Openlayer::ProjectListParams::TaskType::OrSymbol,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::ProjectListResponse)
      end
      def list(
        # Filter list of items by project name.
        name: nil,
        # The page to return in a paginated query.
        page: nil,
        # Maximum number of items to return per page.
        per_page: nil,
        # Filter list of items by task type.
        task_type: nil,
        request_options: {}
      )
      end

      # Delete a project by its ID.
      sig do
        params(
          project_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The project id.
        project_id,
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
