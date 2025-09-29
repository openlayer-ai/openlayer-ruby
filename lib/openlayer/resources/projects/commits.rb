# frozen_string_literal: true

module Openlayer
  module Resources
    class Projects
      class Commits
        # Create a new commit (project version) in a project.
        #
        # @overload create(project_id, commit:, storage_uri:, archived: nil, deployment_status: nil, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param commit [Openlayer::Models::Projects::CommitCreateParams::Commit] The details of a commit (project version).
        #
        # @param storage_uri [String] The storage URI where the commit bundle is stored.
        #
        # @param archived [Boolean, nil] Whether the commit is archived.
        #
        # @param deployment_status [String] The deployment status associated with the commit's model.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::CommitCreateResponse]
        #
        # @see Openlayer::Models::Projects::CommitCreateParams
        def create(project_id, params)
          parsed, options = Openlayer::Projects::CommitCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["projects/%1$s/versions", project_id],
            body: parsed,
            model: Openlayer::Models::Projects::CommitCreateResponse,
            options: options
          )
        end

        # List the commits (project versions) in a project.
        #
        # @overload list(project_id, page: nil, per_page: nil, request_options: {})
        #
        # @param project_id [String] The project id.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Projects::CommitListResponse]
        #
        # @see Openlayer::Models::Projects::CommitListParams
        def list(project_id, params = {})
          parsed, options = Openlayer::Projects::CommitListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["projects/%1$s/versions", project_id],
            query: parsed.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Projects::CommitListResponse,
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
