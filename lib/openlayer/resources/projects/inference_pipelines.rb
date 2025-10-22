# frozen_string_literal: true

module Openlayer
  module Resources
    class Projects
      class InferencePipelines
        # Create an inference pipeline in a project.
        #
        # @overload create(project_id, description:, name:, data_backend: nil, project: nil, workspace: nil, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param description [String, nil] The inference pipeline description.
        #
        # @param name [String] The inference pipeline name.
        #
        # @param data_backend [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5, nil]
        #
        # @param project [Openlayer::Models::Projects::InferencePipelineCreateParams::Project, nil]
        #
        # @param workspace [Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace, nil]
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::InferencePipelineCreateResponse]
        #
        # @see Openlayer::Models::Projects::InferencePipelineCreateParams
        def create(project_id, params)
          parsed, options = Openlayer::Projects::InferencePipelineCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["projects/%1$s/inference-pipelines", project_id],
            body: parsed,
            model: Openlayer::Models::Projects::InferencePipelineCreateResponse,
            options: options
          )
        end

        # List the inference pipelines in a project.
        #
        # @overload list(project_id, name: nil, page: nil, per_page: nil, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param name [String] Filter list of items by name.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::InferencePipelineListResponse]
        #
        # @see Openlayer::Models::Projects::InferencePipelineListParams
        def list(project_id, params = {})
          parsed, options = Openlayer::Projects::InferencePipelineListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["projects/%1$s/inference-pipelines", project_id],
            query: parsed.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Projects::InferencePipelineListResponse,
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
