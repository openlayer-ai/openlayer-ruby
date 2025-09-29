# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Commits#retrieve
    class CommitRetrieveResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute commit
      #   The details of a commit (project version).
      #
      #   @return [Openlayer::Models::CommitRetrieveResponse::Commit]
      required :commit, -> { Openlayer::Models::CommitRetrieveResponse::Commit }

      # @!attribute archived
      #   Whether the commit is archived.
      #
      #   @return [Boolean, nil]
      optional :archived, Openlayer::Internal::Type::Boolean, nil?: true

      # @!attribute deployment_status
      #   The deployment status associated with the commit's model.
      #
      #   @return [String, nil]
      optional :deployment_status, String, api_name: :deploymentStatus

      response_only do
        # @!attribute id
        #   The project version (commit) id.
        #
        #   @return [String]
        required :id, String

        # @!attribute date_archived
        #   The commit archive date.
        #
        #   @return [Time, nil]
        required :date_archived, Time, api_name: :dateArchived, nil?: true

        # @!attribute date_created
        #   The project version (commit) creation date.
        #
        #   @return [Time]
        required :date_created, Time, api_name: :dateCreated

        # @!attribute failing_goal_count
        #   The number of tests that are failing for the commit.
        #
        #   @return [Integer]
        required :failing_goal_count, Integer, api_name: :failingGoalCount

        # @!attribute ml_model_id
        #   The model id.
        #
        #   @return [String, nil]
        required :ml_model_id, String, api_name: :mlModelId, nil?: true

        # @!attribute passing_goal_count
        #   The number of tests that are passing for the commit.
        #
        #   @return [Integer]
        required :passing_goal_count, Integer, api_name: :passingGoalCount

        # @!attribute project_id
        #   The project id.
        #
        #   @return [String]
        required :project_id, String, api_name: :projectId

        # @!attribute status
        #   The commit status. Initially, the commit is `queued`, then, it switches to
        #   `running`. Finally, it can be `paused`, `failed`, or `completed`.
        #
        #   @return [Symbol, Openlayer::Models::CommitRetrieveResponse::Status]
        required :status, enum: -> { Openlayer::Models::CommitRetrieveResponse::Status }

        # @!attribute status_message
        #   The commit status message.
        #
        #   @return [String, nil]
        required :status_message, String, api_name: :statusMessage, nil?: true

        # @!attribute total_goal_count
        #   The total number of tests for the commit.
        #
        #   @return [Integer]
        required :total_goal_count, Integer, api_name: :totalGoalCount

        # @!attribute training_dataset_id
        #   The training dataset id.
        #
        #   @return [String, nil]
        required :training_dataset_id, String, api_name: :trainingDatasetId, nil?: true

        # @!attribute validation_dataset_id
        #   The validation dataset id.
        #
        #   @return [String, nil]
        required :validation_dataset_id, String, api_name: :validationDatasetId, nil?: true

        # @!attribute links
        #
        #   @return [Openlayer::Models::CommitRetrieveResponse::Links, nil]
        optional :links, -> { Openlayer::Models::CommitRetrieveResponse::Links }
      end

      # @!method initialize(id:, commit:, date_archived:, date_created:, failing_goal_count:, ml_model_id:, passing_goal_count:, project_id:, status:, status_message:, total_goal_count:, training_dataset_id:, validation_dataset_id:, archived: nil, deployment_status: nil, links: nil)
      #   Some parameter documentations has been truncated, see
      #   {Openlayer::Models::CommitRetrieveResponse} for more details.
      #
      #   @param id [String] The project version (commit) id.
      #
      #   @param commit [Openlayer::Models::CommitRetrieveResponse::Commit] The details of a commit (project version).
      #
      #   @param date_archived [Time, nil] The commit archive date.
      #
      #   @param date_created [Time] The project version (commit) creation date.
      #
      #   @param failing_goal_count [Integer] The number of tests that are failing for the commit.
      #
      #   @param ml_model_id [String, nil] The model id.
      #
      #   @param passing_goal_count [Integer] The number of tests that are passing for the commit.
      #
      #   @param project_id [String] The project id.
      #
      #   @param status [Symbol, Openlayer::Models::CommitRetrieveResponse::Status] The commit status. Initially, the commit is `queued`, then, it switches to `runn
      #
      #   @param status_message [String, nil] The commit status message.
      #
      #   @param total_goal_count [Integer] The total number of tests for the commit.
      #
      #   @param training_dataset_id [String, nil] The training dataset id.
      #
      #   @param validation_dataset_id [String, nil] The validation dataset id.
      #
      #   @param archived [Boolean, nil] Whether the commit is archived.
      #
      #   @param deployment_status [String] The deployment status associated with the commit's model.
      #
      #   @param links [Openlayer::Models::CommitRetrieveResponse::Links]

      # @see Openlayer::Models::CommitRetrieveResponse#commit
      class Commit < Openlayer::Internal::Type::BaseModel
        # @!attribute message
        #   The commit message.
        #
        #   @return [String]
        required :message, String

        response_only do
          # @!attribute id
          #   The commit id.
          #
          #   @return [String]
          required :id, String

          # @!attribute author_id
          #   The author id of the commit.
          #
          #   @return [String]
          required :author_id, String, api_name: :authorId

          # @!attribute file_size
          #   The size of the commit bundle in bytes.
          #
          #   @return [Integer, nil]
          required :file_size, Integer, api_name: :fileSize, nil?: true

          # @!attribute ml_model_id
          #   The model id.
          #
          #   @return [String, nil]
          required :ml_model_id, String, api_name: :mlModelId, nil?: true

          # @!attribute storage_uri
          #   The storage URI where the commit bundle is stored.
          #
          #   @return [String]
          required :storage_uri, String, api_name: :storageUri

          # @!attribute training_dataset_id
          #   The training dataset id.
          #
          #   @return [String, nil]
          required :training_dataset_id, String, api_name: :trainingDatasetId, nil?: true

          # @!attribute validation_dataset_id
          #   The validation dataset id.
          #
          #   @return [String, nil]
          required :validation_dataset_id, String, api_name: :validationDatasetId, nil?: true

          # @!attribute date_created
          #   The commit creation date.
          #
          #   @return [Time, nil]
          optional :date_created, Time, api_name: :dateCreated

          # @!attribute git_commit_ref
          #   The ref of the corresponding git commit.
          #
          #   @return [String, nil]
          optional :git_commit_ref, String, api_name: :gitCommitRef

          # @!attribute git_commit_sha
          #   The SHA of the corresponding git commit.
          #
          #   @return [Integer, nil]
          optional :git_commit_sha, Integer, api_name: :gitCommitSha

          # @!attribute git_commit_url
          #   The URL of the corresponding git commit.
          #
          #   @return [String, nil]
          optional :git_commit_url, String, api_name: :gitCommitUrl
        end

        # @!method initialize(id:, author_id:, file_size:, message:, ml_model_id:, storage_uri:, training_dataset_id:, validation_dataset_id:, date_created: nil, git_commit_ref: nil, git_commit_sha: nil, git_commit_url: nil)
        #   The details of a commit (project version).
        #
        #   @param id [String] The commit id.
        #
        #   @param author_id [String] The author id of the commit.
        #
        #   @param file_size [Integer, nil] The size of the commit bundle in bytes.
        #
        #   @param message [String] The commit message.
        #
        #   @param ml_model_id [String, nil] The model id.
        #
        #   @param storage_uri [String] The storage URI where the commit bundle is stored.
        #
        #   @param training_dataset_id [String, nil] The training dataset id.
        #
        #   @param validation_dataset_id [String, nil] The validation dataset id.
        #
        #   @param date_created [Time] The commit creation date.
        #
        #   @param git_commit_ref [String] The ref of the corresponding git commit.
        #
        #   @param git_commit_sha [Integer] The SHA of the corresponding git commit.
        #
        #   @param git_commit_url [String] The URL of the corresponding git commit.
      end

      # The commit status. Initially, the commit is `queued`, then, it switches to
      # `running`. Finally, it can be `paused`, `failed`, or `completed`.
      #
      # @see Openlayer::Models::CommitRetrieveResponse#status
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

      # @see Openlayer::Models::CommitRetrieveResponse#links
      class Links < Openlayer::Internal::Type::BaseModel
        # @!attribute app
        #
        #   @return [String]
        required :app, String

        # @!method initialize(app:)
        #   @param app [String]
      end
    end
  end
end
