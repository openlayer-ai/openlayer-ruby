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

      # Create a project in your workspace.
      #
      # @overload create(name:, task_type:, description: nil, request_options: {})
      #
      # @param name [String] The project name.
      #
      # @param task_type [Symbol, Openlayer::Models::ProjectCreateParams::TaskType] The task type of the project.
      #
      # @param description [String, nil] The project description.
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
        @client.request(
          method: :get,
          path: "projects",
          query: parsed.transform_keys(per_page: "perPage", task_type: "taskType"),
          model: Openlayer::Models::ProjectListResponse,
          options: options
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
