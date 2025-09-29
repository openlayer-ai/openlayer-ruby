# typed: strong

module Openlayer
  module Resources
    class Projects
      class Commits
        # Create a new commit (project version) in a project.
        sig do
          params(
            project_id: String,
            commit: Openlayer::Projects::CommitCreateParams::Commit::OrHash,
            storage_uri: String,
            archived: T.nilable(T::Boolean),
            deployment_status: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Projects::CommitCreateResponse)
        end
        def create(
          # The project id.
          project_id,
          # The details of a commit (project version).
          commit:,
          # The storage URI where the commit bundle is stored.
          storage_uri:,
          # Whether the commit is archived.
          archived: nil,
          # The deployment status associated with the commit's model.
          deployment_status: nil,
          request_options: {}
        )
        end

        # List the commits (project versions) in a project.
        sig do
          params(
            project_id: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Projects::CommitListResponse)
        end
        def list(
          # The project id.
          project_id,
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
