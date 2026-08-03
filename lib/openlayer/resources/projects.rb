# frozen_string_literal: true

module Openlayer
  module Resources
    class Projects
      # @return [Openlayer::Resources::Projects::Commits]
      attr_reader :commits

      # @return [Openlayer::Resources::Projects::InferencePipelines]
      attr_reader :inference_pipelines

      # @return [Openlayer::Resources::Projects::Tests]
      attr_reader :tests

      # Some parameter documentations has been truncated, see
      # {Openlayer::Models::ProjectCreateParams} for more details.
      #
      # Create a project in your workspace.
      #
      # @overload create(name:, task_type:, data_retention_days: nil, description: nil, model_developer: nil, model_types: nil, purpose: nil, request_options: {})
      #
      # @param name [String] The project name.
      #
      # @param task_type [Symbol, Openlayer::Models::ProjectCreateParams::TaskType] The task type of the project.
      #
      # @param data_retention_days [Integer, nil] Number of days to retain monitoring data for this project. Null means data is re
      #
      # @param description [String, nil] The project description.
      #
      # @param model_developer [String, nil] Who developed the model used in this project.
      #
      # @param model_types [Array<String>, nil] The kinds of model used in this project.
      #
      # @param purpose [String, nil] What the system in this project is intended to do.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::ProjectCreateResponse]
      #
      # @see Openlayer::Models::ProjectCreateParams
      def create(params)
        parsed, options = Openlayer::ProjectCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "projects",
          body: parsed,
          model: Openlayer::Models::ProjectCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Openlayer::Models::ProjectUpdateParams} for more details.
      #
      # Update a project's metadata.
      #
      # @overload update(project_id, data_retention_days: nil, description: nil, model_developer: nil, model_types: nil, name: nil, purpose: nil, request_options: {})
      #
      # @param project_id [String] The project id.
      #
      # @param data_retention_days [Integer, nil] Number of days to retain monitoring data for this project. Null means data is re
      #
      # @param description [String, nil] The project description.
      #
      # @param model_developer [String, nil] Who developed the model used in this project.
      #
      # @param model_types [Array<String>, nil] The kinds of model used in this project.
      #
      # @param name [String] The project name.
      #
      # @param purpose [String, nil] What the system in this project is intended to do.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::ProjectUpdateResponse]
      #
      # @see Openlayer::Models::ProjectUpdateParams
      def update(project_id, params = {})
        parsed, options = Openlayer::ProjectUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["projects/%1$s", project_id],
          body: parsed,
          model: Openlayer::Models::ProjectUpdateResponse,
          options: options
        )
      end

      # List your workspace's projects.
      #
      # @overload list(name: nil, page: nil, per_page: nil, task_type: nil, request_options: {})
      #
      # @param name [String] Filter list of items by project name.
      #
      # @param page [Integer] The page to return in a paginated query.
      #
      # @param per_page [Integer] Maximum number of items to return per page.
      #
      # @param task_type [Symbol, Openlayer::Models::ProjectListParams::TaskType] Filter list of items by task type.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::ProjectListResponse]
      #
      # @see Openlayer::Models::ProjectListParams
      def list(params = {})
        parsed, options = Openlayer::ProjectListParams.dump_request(params)
        query = Openlayer::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "projects",
          query: query.transform_keys(per_page: "perPage", task_type: "taskType"),
          model: Openlayer::Models::ProjectListResponse,
          options: options
        )
      end

      # Delete a project by its ID.
      #
      # @overload delete(project_id, request_options: {})
      #
      # @param project_id [String] The project id.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Openlayer::Models::ProjectDeleteParams
      def delete(project_id, params = {})
        @client.request(
          method: :delete,
          path: ["projects/%1$s", project_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
        @commits = Openlayer::Resources::Projects::Commits.new(client: client)
        @inference_pipelines = Openlayer::Resources::Projects::InferencePipelines.new(client: client)
        @tests = Openlayer::Resources::Projects::Tests.new(client: client)
      end
    end
  end
end
