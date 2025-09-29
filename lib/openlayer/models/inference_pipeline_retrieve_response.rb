# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#retrieve
    class InferencePipelineRetrieveResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute description
      #   The inference pipeline description.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute name
      #   The inference pipeline name.
      #
      #   @return [String]
      required :name, String

      # @!attribute project
      #
      #   @return [Openlayer::Models::InferencePipelineRetrieveResponse::Project, nil]
      optional :project, -> { Openlayer::Models::InferencePipelineRetrieveResponse::Project }, nil?: true

      # @!attribute workspace
      #
      #   @return [Openlayer::Models::InferencePipelineRetrieveResponse::Workspace, nil]
      optional :workspace, -> { Openlayer::Models::InferencePipelineRetrieveResponse::Workspace }, nil?: true

      response_only do
        # @!attribute id
        #   The inference pipeline id.
        #
        #   @return [String]
        required :id, String

        # @!attribute date_created
        #   The creation date.
        #
        #   @return [Time]
        required :date_created, Time, api_name: :dateCreated

        # @!attribute date_last_evaluated
        #   The last test evaluation date.
        #
        #   @return [Time, nil]
        required :date_last_evaluated, Time, api_name: :dateLastEvaluated, nil?: true

        # @!attribute date_last_sample_received
        #   The last data sample received date.
        #
        #   @return [Time, nil]
        required :date_last_sample_received, Time, api_name: :dateLastSampleReceived, nil?: true

        # @!attribute date_of_next_evaluation
        #   The next test evaluation date.
        #
        #   @return [Time, nil]
        required :date_of_next_evaluation, Time, api_name: :dateOfNextEvaluation, nil?: true

        # @!attribute date_updated
        #   The last updated date.
        #
        #   @return [Time]
        required :date_updated, Time, api_name: :dateUpdated

        # @!attribute failing_goal_count
        #   The number of tests failing.
        #
        #   @return [Integer]
        required :failing_goal_count, Integer, api_name: :failingGoalCount

        # @!attribute links
        #
        #   @return [Openlayer::Models::InferencePipelineRetrieveResponse::Links]
        required :links, -> { Openlayer::Models::InferencePipelineRetrieveResponse::Links }

        # @!attribute passing_goal_count
        #   The number of tests passing.
        #
        #   @return [Integer]
        required :passing_goal_count, Integer, api_name: :passingGoalCount

        # @!attribute project_id
        #   The project id.
        #
        #   @return [String]
        required :project_id, String, api_name: :projectId

        # @!attribute status
        #   The status of test evaluation for the inference pipeline.
        #
        #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Status]
        required :status, enum: -> { Openlayer::Models::InferencePipelineRetrieveResponse::Status }

        # @!attribute status_message
        #   The status message of test evaluation for the inference pipeline.
        #
        #   @return [String, nil]
        required :status_message, String, api_name: :statusMessage, nil?: true

        # @!attribute total_goal_count
        #   The total number of tests.
        #
        #   @return [Integer]
        required :total_goal_count, Integer, api_name: :totalGoalCount

        # @!attribute workspace_id
        #   The workspace id.
        #
        #   @return [String, nil]
        optional :workspace_id, String, api_name: :workspaceId
      end

      # @!method initialize(id:, date_created:, date_last_evaluated:, date_last_sample_received:, date_of_next_evaluation:, date_updated:, description:, failing_goal_count:, links:, name:, passing_goal_count:, project_id:, status:, status_message:, total_goal_count:, project: nil, workspace: nil, workspace_id: nil)
      #   @param id [String] The inference pipeline id.
      #
      #   @param date_created [Time] The creation date.
      #
      #   @param date_last_evaluated [Time, nil] The last test evaluation date.
      #
      #   @param date_last_sample_received [Time, nil] The last data sample received date.
      #
      #   @param date_of_next_evaluation [Time, nil] The next test evaluation date.
      #
      #   @param date_updated [Time] The last updated date.
      #
      #   @param description [String, nil] The inference pipeline description.
      #
      #   @param failing_goal_count [Integer] The number of tests failing.
      #
      #   @param links [Openlayer::Models::InferencePipelineRetrieveResponse::Links]
      #
      #   @param name [String] The inference pipeline name.
      #
      #   @param passing_goal_count [Integer] The number of tests passing.
      #
      #   @param project_id [String] The project id.
      #
      #   @param status [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Status] The status of test evaluation for the inference pipeline.
      #
      #   @param status_message [String, nil] The status message of test evaluation for the inference pipeline.
      #
      #   @param total_goal_count [Integer] The total number of tests.
      #
      #   @param project [Openlayer::Models::InferencePipelineRetrieveResponse::Project, nil]
      #
      #   @param workspace [Openlayer::Models::InferencePipelineRetrieveResponse::Workspace, nil]
      #
      #   @param workspace_id [String] The workspace id.

      # @see Openlayer::Models::InferencePipelineRetrieveResponse#links
      class Links < Openlayer::Internal::Type::BaseModel
        # @!attribute app
        #
        #   @return [String]
        required :app, String

        # @!method initialize(app:)
        #   @param app [String]
      end

      # The status of test evaluation for the inference pipeline.
      #
      # @see Openlayer::Models::InferencePipelineRetrieveResponse#status
      module Status
        extend Openlayer::Internal::Type::Enum

        QUEUED = :queued
        RUNNING = :running
        PAUSED = :paused
        FAILED = :failed
        COMPLETED = :completed
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Openlayer::Models::InferencePipelineRetrieveResponse#project
      class Project < Openlayer::Internal::Type::BaseModel
        # @!attribute name
        #   The project name.
        #
        #   @return [String]
        required :name, String

        # @!attribute task_type
        #   The task type of the project.
        #
        #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Project::TaskType]
        required :task_type,
                 enum: -> { Openlayer::Models::InferencePipelineRetrieveResponse::Project::TaskType },
                 api_name: :taskType

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
          #   @return [Openlayer::Models::InferencePipelineRetrieveResponse::Project::Links]
          required :links, -> { Openlayer::Models::InferencePipelineRetrieveResponse::Project::Links }

          # @!attribute monitoring_goal_count
          #   The number of tests in the monitoring mode of the project.
          #
          #   @return [Integer]
          required :monitoring_goal_count, Integer, api_name: :monitoringGoalCount

          # @!attribute source
          #   The source of the project.
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Project::Source, nil]
          required :source,
                   enum: -> { Openlayer::Models::InferencePipelineRetrieveResponse::Project::Source },
                   nil?: true

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
          #   @return [Openlayer::Models::InferencePipelineRetrieveResponse::Project::GitRepo, nil]
          optional :git_repo,
                   -> { Openlayer::Models::InferencePipelineRetrieveResponse::Project::GitRepo },
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
        #   @param links [Openlayer::Models::InferencePipelineRetrieveResponse::Project::Links] Links to the project.
        #
        #   @param monitoring_goal_count [Integer] The number of tests in the monitoring mode of the project.
        #
        #   @param name [String] The project name.
        #
        #   @param source [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Project::Source, nil] The source of the project.
        #
        #   @param task_type [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Project::TaskType] The task type of the project.
        #
        #   @param version_count [Integer] The number of versions (commits) in the project.
        #
        #   @param workspace_id [String, nil] The workspace id.
        #
        #   @param description [String, nil] The project description.
        #
        #   @param git_repo [Openlayer::Models::InferencePipelineRetrieveResponse::Project::GitRepo, nil]

        # @see Openlayer::Models::InferencePipelineRetrieveResponse::Project#links
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
        # @see Openlayer::Models::InferencePipelineRetrieveResponse::Project#source
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
        # @see Openlayer::Models::InferencePipelineRetrieveResponse::Project#task_type
        module TaskType
          extend Openlayer::Internal::Type::Enum

          LLM_BASE = :"llm-base"
          TABULAR_CLASSIFICATION = :"tabular-classification"
          TABULAR_REGRESSION = :"tabular-regression"
          TEXT_CLASSIFICATION = :"text-classification"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Openlayer::Models::InferencePipelineRetrieveResponse::Project#git_repo
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

      # @see Openlayer::Models::InferencePipelineRetrieveResponse#workspace
      class Workspace < Openlayer::Internal::Type::BaseModel
        # @!attribute name
        #   The workspace name.
        #
        #   @return [String]
        required :name, String

        # @!attribute slug
        #   The workspace slug.
        #
        #   @return [String]
        required :slug, String

        # @!attribute saml_only_access
        #   Whether the workspace only allows SAML authentication.
        #
        #   @return [Boolean, nil]
        optional :saml_only_access, Openlayer::Internal::Type::Boolean, api_name: :samlOnlyAccess

        # @!attribute wildcard_domains
        #
        #   @return [Array<String>, nil]
        optional :wildcard_domains, Openlayer::Internal::Type::ArrayOf[String], api_name: :wildcardDomains

        response_only do
          # @!attribute id
          #   The workspace id.
          #
          #   @return [String]
          required :id, String

          # @!attribute creator_id
          #   The workspace creator id.
          #
          #   @return [String, nil]
          required :creator_id, String, api_name: :creatorId, nil?: true

          # @!attribute date_created
          #   The workspace creation date.
          #
          #   @return [Time]
          required :date_created, Time, api_name: :dateCreated

          # @!attribute date_updated
          #   The workspace last updated date.
          #
          #   @return [Time]
          required :date_updated, Time, api_name: :dateUpdated

          # @!attribute invite_count
          #   The number of invites in the workspace.
          #
          #   @return [Integer]
          required :invite_count, Integer, api_name: :inviteCount

          # @!attribute member_count
          #   The number of members in the workspace.
          #
          #   @return [Integer]
          required :member_count, Integer, api_name: :memberCount

          # @!attribute period_end_date
          #   The end date of the current billing period.
          #
          #   @return [Time, nil]
          required :period_end_date, Time, api_name: :periodEndDate, nil?: true

          # @!attribute period_start_date
          #   The start date of the current billing period.
          #
          #   @return [Time, nil]
          required :period_start_date, Time, api_name: :periodStartDate, nil?: true

          # @!attribute project_count
          #   The number of projects in the workspace.
          #
          #   @return [Integer]
          required :project_count, Integer, api_name: :projectCount

          # @!attribute status
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Workspace::Status]
          required :status, enum: -> { Openlayer::Models::InferencePipelineRetrieveResponse::Workspace::Status }

          # @!attribute monthly_usage
          #
          #   @return [Array<Openlayer::Models::InferencePipelineRetrieveResponse::Workspace::MonthlyUsage>, nil]
          optional :monthly_usage,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelineRetrieveResponse::Workspace::MonthlyUsage] },
                   api_name: :monthlyUsage
        end

        # @!method initialize(id:, creator_id:, date_created:, date_updated:, invite_count:, member_count:, name:, period_end_date:, period_start_date:, project_count:, slug:, status:, monthly_usage: nil, saml_only_access: nil, wildcard_domains: nil)
        #   @param id [String] The workspace id.
        #
        #   @param creator_id [String, nil] The workspace creator id.
        #
        #   @param date_created [Time] The workspace creation date.
        #
        #   @param date_updated [Time] The workspace last updated date.
        #
        #   @param invite_count [Integer] The number of invites in the workspace.
        #
        #   @param member_count [Integer] The number of members in the workspace.
        #
        #   @param name [String] The workspace name.
        #
        #   @param period_end_date [Time, nil] The end date of the current billing period.
        #
        #   @param period_start_date [Time, nil] The start date of the current billing period.
        #
        #   @param project_count [Integer] The number of projects in the workspace.
        #
        #   @param slug [String] The workspace slug.
        #
        #   @param status [Symbol, Openlayer::Models::InferencePipelineRetrieveResponse::Workspace::Status]
        #
        #   @param monthly_usage [Array<Openlayer::Models::InferencePipelineRetrieveResponse::Workspace::MonthlyUsage>]
        #
        #   @param saml_only_access [Boolean] Whether the workspace only allows SAML authentication.
        #
        #   @param wildcard_domains [Array<String>]

        # @see Openlayer::Models::InferencePipelineRetrieveResponse::Workspace#status
        module Status
          extend Openlayer::Internal::Type::Enum

          ACTIVE = :active
          PAST_DUE = :past_due
          UNPAID = :unpaid
          CANCELED = :canceled
          INCOMPLETE = :incomplete
          INCOMPLETE_EXPIRED = :incomplete_expired
          TRIALING = :trialing
          PAUSED = :paused

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class MonthlyUsage < Openlayer::Internal::Type::BaseModel
          # @!attribute execution_time_ms
          #
          #   @return [Integer, nil]
          optional :execution_time_ms, Integer, api_name: :executionTimeMs, nil?: true

          # @!attribute month_year
          #
          #   @return [Date, nil]
          optional :month_year, Date, api_name: :monthYear

          # @!attribute prediction_count
          #
          #   @return [Integer, nil]
          optional :prediction_count, Integer, api_name: :predictionCount

          # @!method initialize(execution_time_ms: nil, month_year: nil, prediction_count: nil)
          #   @param execution_time_ms [Integer, nil]
          #   @param month_year [Date]
          #   @param prediction_count [Integer]
        end
      end
    end
  end
end
