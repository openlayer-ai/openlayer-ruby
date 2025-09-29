# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Projects#create
    class ProjectCreateResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute name
      #   The project name.
      #
      #   @return [String]
      required :name, String

      # @!attribute task_type
      #   The task type of the project.
      #
      #   @return [Symbol, Openlayer::Models::ProjectCreateResponse::TaskType]
      required :task_type, enum: -> { Openlayer::Models::ProjectCreateResponse::TaskType }, api_name: :taskType

      # @!attribute description
      #   The project description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      response_only do
        # @!attribute id
        #   The project id.
        #
        #   @return [String]
        required :id, String

        # @!attribute creator_id
        #   The project creator id.
        #
        #   @return [String, nil]
        required :creator_id, String, api_name: :creatorId, nil?: true

        # @!attribute date_created
        #   The project creation date.
        #
        #   @return [Time]
        required :date_created, Time, api_name: :dateCreated

        # @!attribute date_updated
        #   The project last updated date.
        #
        #   @return [Time]
        required :date_updated, Time, api_name: :dateUpdated

        # @!attribute development_goal_count
        #   The number of tests in the development mode of the project.
        #
        #   @return [Integer]
        required :development_goal_count, Integer, api_name: :developmentGoalCount

        # @!attribute goal_count
        #   The total number of tests in the project.
        #
        #   @return [Integer]
        required :goal_count, Integer, api_name: :goalCount

        # @!attribute inference_pipeline_count
        #   The number of inference pipelines in the project.
        #
        #   @return [Integer]
        required :inference_pipeline_count, Integer, api_name: :inferencePipelineCount

        # @!attribute links
        #   Links to the project.
        #
        #   @return [Openlayer::Models::ProjectCreateResponse::Links]
        required :links, -> { Openlayer::Models::ProjectCreateResponse::Links }

        # @!attribute monitoring_goal_count
        #   The number of tests in the monitoring mode of the project.
        #
        #   @return [Integer]
        required :monitoring_goal_count, Integer, api_name: :monitoringGoalCount

        # @!attribute source
        #   The source of the project.
        #
        #   @return [Symbol, Openlayer::Models::ProjectCreateResponse::Source, nil]
        required :source, enum: -> { Openlayer::Models::ProjectCreateResponse::Source }, nil?: true

        # @!attribute version_count
        #   The number of versions (commits) in the project.
        #
        #   @return [Integer]
        required :version_count, Integer, api_name: :versionCount

        # @!attribute workspace_id
        #   The workspace id.
        #
        #   @return [String, nil]
        required :workspace_id, String, api_name: :workspaceId, nil?: true

        # @!attribute git_repo
        #
        #   @return [Openlayer::Models::ProjectCreateResponse::GitRepo, nil]
        optional :git_repo,
                 -> { Openlayer::Models::ProjectCreateResponse::GitRepo },
                 api_name: :gitRepo,
                 nil?: true
      end

      # @!method initialize(id:, creator_id:, date_created:, date_updated:, development_goal_count:, goal_count:, inference_pipeline_count:, links:, monitoring_goal_count:, name:, source:, task_type:, version_count:, workspace_id:, description: nil, git_repo: nil)
      #   @param id [String] The project id.
      #
      #   @param creator_id [String, nil] The project creator id.
      #
      #   @param date_created [Time] The project creation date.
      #
      #   @param date_updated [Time] The project last updated date.
      #
      #   @param development_goal_count [Integer] The number of tests in the development mode of the project.
      #
      #   @param goal_count [Integer] The total number of tests in the project.
      #
      #   @param inference_pipeline_count [Integer] The number of inference pipelines in the project.
      #
      #   @param links [Openlayer::Models::ProjectCreateResponse::Links] Links to the project.
      #
      #   @param monitoring_goal_count [Integer] The number of tests in the monitoring mode of the project.
      #
      #   @param name [String] The project name.
      #
      #   @param source [Symbol, Openlayer::Models::ProjectCreateResponse::Source, nil] The source of the project.
      #
      #   @param task_type [Symbol, Openlayer::Models::ProjectCreateResponse::TaskType] The task type of the project.
      #
      #   @param version_count [Integer] The number of versions (commits) in the project.
      #
      #   @param workspace_id [String, nil] The workspace id.
      #
      #   @param description [String, nil] The project description.
      #
      #   @param git_repo [Openlayer::Models::ProjectCreateResponse::GitRepo, nil]

      # @see Openlayer::Models::ProjectCreateResponse#links
      class Links < Openlayer::Internal::Type::BaseModel
        # @!attribute app
        #
        #   @return [String]
        required :app, String

        # @!method initialize(app:)
        #   Links to the project.
        #
        #   @param app [String]
      end

      # The source of the project.
      #
      # @see Openlayer::Models::ProjectCreateResponse#source
      module Source
        extend Openlayer::Internal::Type::Enum

        WEB = :web
        API = :api
        NULL = :null

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The task type of the project.
      #
      # @see Openlayer::Models::ProjectCreateResponse#task_type
      module TaskType
        extend Openlayer::Internal::Type::Enum

        LLM_BASE = :"llm-base"
        TABULAR_CLASSIFICATION = :"tabular-classification"
        TABULAR_REGRESSION = :"tabular-regression"
        TEXT_CLASSIFICATION = :"text-classification"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Openlayer::Models::ProjectCreateResponse#git_repo
      class GitRepo < Openlayer::Internal::Type::BaseModel
        # @!attribute git_account_id
        #
        #   @return [String]
        required :git_account_id, String, api_name: :gitAccountId

        # @!attribute git_id
        #
        #   @return [Integer]
        required :git_id, Integer, api_name: :gitId

        # @!attribute branch
        #
        #   @return [String, nil]
        optional :branch, String

        # @!attribute root_dir
        #
        #   @return [String, nil]
        optional :root_dir, String, api_name: :rootDir

        response_only do
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute date_connected
          #
          #   @return [Time]
          required :date_connected, Time, api_name: :dateConnected

          # @!attribute date_updated
          #
          #   @return [Time]
          required :date_updated, Time, api_name: :dateUpdated

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute private
          #
          #   @return [Boolean]
          required :private, Openlayer::Internal::Type::Boolean

          # @!attribute project_id
          #
          #   @return [String]
          required :project_id, String, api_name: :projectId

          # @!attribute slug
          #
          #   @return [String]
          required :slug, String

          # @!attribute url
          #
          #   @return [String]
          required :url, String
        end

        # @!method initialize(id:, date_connected:, date_updated:, git_account_id:, git_id:, name:, private:, project_id:, slug:, url:, branch: nil, root_dir: nil)
        #   @param id [String]
        #   @param date_connected [Time]
        #   @param date_updated [Time]
        #   @param git_account_id [String]
        #   @param git_id [Integer]
        #   @param name [String]
        #   @param private [Boolean]
        #   @param project_id [String]
        #   @param slug [String]
        #   @param url [String]
        #   @param branch [String]
        #   @param root_dir [String]
      end
    end
  end
end
