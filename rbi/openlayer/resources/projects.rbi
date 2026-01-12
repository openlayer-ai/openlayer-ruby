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
          description: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::ProjectCreateResponse)
      end
      def create(
        # The project name.
        name:,
        # The task type of the project.
        task_type:,
        # The project description.
        description: nil,
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
