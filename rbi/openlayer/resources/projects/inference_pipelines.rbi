# typed: strong

module Openlayer
  module Resources
    class Projects
      class InferencePipelines
        # Create an inference pipeline in a project.
        sig do
          params(
            project_id: String,
            description: T.nilable(String),
            name: String,
            data_backend:
              T.nilable(
                T.any(
                  Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::OrHash,
                  Openlayer::Projects::InferencePipelineCreateParams::DataBackend::BackendType::OrHash,
                  Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::OrHash,
                  Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::OrHash,
                  Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::OrHash,
                  Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::OrHash
                )
              ),
            project:
              T.nilable(
                Openlayer::Projects::InferencePipelineCreateParams::Project::OrHash
              ),
            workspace:
              T.nilable(
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::OrHash
              ),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            Openlayer::Models::Projects::InferencePipelineCreateResponse
          )
        end
        def create(
          # The project id.
          project_id,
          # The inference pipeline description.
          description:,
          # The inference pipeline name.
          name:,
          data_backend: nil,
          project: nil,
          workspace: nil,
          request_options: {}
        )
        end

        # List the inference pipelines in a project.
        sig do
          params(
            project_id: String,
            name: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Projects::InferencePipelineListResponse)
        end
        def list(
          # The project id.
          project_id,
          # Filter list of items by name.
          name: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
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
