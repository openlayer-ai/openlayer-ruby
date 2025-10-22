# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#update
    class InferencePipelineUpdateResponse < Openlayer::Internal::Type::BaseModel
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

      # @!attribute data_backend
      #
      #   @return [Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5, nil]
      optional :data_backend,
               union: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend },
               api_name: :dataBackend,
               nil?: true

      # @!attribute project
      #
      #   @return [Openlayer::Models::InferencePipelineUpdateResponse::Project, nil]
      optional :project, -> { Openlayer::Models::InferencePipelineUpdateResponse::Project }, nil?: true

      # @!attribute workspace
      #
      #   @return [Openlayer::Models::InferencePipelineUpdateResponse::Workspace, nil]
      optional :workspace, -> { Openlayer::Models::InferencePipelineUpdateResponse::Workspace }, nil?: true

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
        #   @return [Openlayer::Models::InferencePipelineUpdateResponse::Links]
        required :links, -> { Openlayer::Models::InferencePipelineUpdateResponse::Links }

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
        #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Status]
        required :status, enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::Status }

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

        # @!attribute date_last_polled
        #   The last time the data was polled.
        #
        #   @return [Time, nil]
        optional :date_last_polled, Time, api_name: :dateLastPolled, nil?: true

        # @!attribute total_records_count
        #   The total number of records in the data backend.
        #
        #   @return [Integer, nil]
        optional :total_records_count, Integer, api_name: :totalRecordsCount, nil?: true

        # @!attribute workspace_id
        #   The workspace id.
        #
        #   @return [String, nil]
        optional :workspace_id, String, api_name: :workspaceId
      end

      # @!method initialize(id:, date_created:, date_last_evaluated:, date_last_sample_received:, date_of_next_evaluation:, date_updated:, description:, failing_goal_count:, links:, name:, passing_goal_count:, project_id:, status:, status_message:, total_goal_count:, data_backend: nil, date_last_polled: nil, project: nil, total_records_count: nil, workspace: nil, workspace_id: nil)
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
      #   @param links [Openlayer::Models::InferencePipelineUpdateResponse::Links]
      #
      #   @param name [String] The inference pipeline name.
      #
      #   @param passing_goal_count [Integer] The number of tests passing.
      #
      #   @param project_id [String] The project id.
      #
      #   @param status [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Status] The status of test evaluation for the inference pipeline.
      #
      #   @param status_message [String, nil] The status message of test evaluation for the inference pipeline.
      #
      #   @param total_goal_count [Integer] The total number of tests.
      #
      #   @param data_backend [Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5, nil]
      #
      #   @param date_last_polled [Time, nil] The last time the data was polled.
      #
      #   @param project [Openlayer::Models::InferencePipelineUpdateResponse::Project, nil]
      #
      #   @param total_records_count [Integer, nil] The total number of records in the data backend.
      #
      #   @param workspace [Openlayer::Models::InferencePipelineUpdateResponse::Workspace, nil]
      #
      #   @param workspace_id [String] The workspace id.

      # @see Openlayer::Models::InferencePipelineUpdateResponse#links
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
      # @see Openlayer::Models::InferencePipelineUpdateResponse#status
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

      # @see Openlayer::Models::InferencePipelineUpdateResponse#data_backend
      module DataBackend
        extend Openlayer::Internal::Type::Union

        variant -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0 }

        variant -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType }

        variant -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2 }

        variant -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3 }

        variant -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4 }

        variant -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5 }

        class UnionMember0 < Openlayer::Internal::Type::BaseModel
          # @!attribute backend_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::BackendType]
          required :backend_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::BackendType },
                   api_name: :backendType

          # @!attribute bigquery_connection_id
          #
          #   @return [String, nil]
          required :bigquery_connection_id, String, api_name: :bigqueryConnectionId, nil?: true

          # @!attribute dataset_id
          #
          #   @return [String]
          required :dataset_id, String, api_name: :datasetId

          # @!attribute project_id
          #
          #   @return [String]
          required :project_id, String, api_name: :projectId

          # @!attribute table_id
          #
          #   @return [String, nil]
          required :table_id, String, api_name: :tableId, nil?: true

          # @!attribute partition_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::PartitionType, nil]
          optional :partition_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::PartitionType },
                   api_name: :partitionType,
                   nil?: true

          # @!method initialize(backend_type:, bigquery_connection_id:, dataset_id:, project_id:, table_id:, partition_type: nil)
          #   @param backend_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::BackendType]
          #   @param bigquery_connection_id [String, nil]
          #   @param dataset_id [String]
          #   @param project_id [String]
          #   @param table_id [String, nil]
          #   @param partition_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::PartitionType, nil]

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0#backend_type
          module BackendType
            extend Openlayer::Internal::Type::Enum

            BIGQUERY = :bigquery

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0#config
          class Config < Openlayer::Internal::Type::BaseModel
            # @!attribute ground_truth_column_name
            #   Name of the column with the ground truths.
            #
            #   @return [String, nil]
            optional :ground_truth_column_name, String, api_name: :groundTruthColumnName, nil?: true

            # @!attribute human_feedback_column_name
            #   Name of the column with human feedback.
            #
            #   @return [String, nil]
            optional :human_feedback_column_name, String, api_name: :humanFeedbackColumnName, nil?: true

            # @!attribute latency_column_name
            #   Name of the column with the latencies.
            #
            #   @return [String, nil]
            optional :latency_column_name, String, api_name: :latencyColumnName, nil?: true

            # @!attribute timestamp_column_name
            #   Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            #   If not provided, the upload timestamp is used.
            #
            #   @return [String, nil]
            optional :timestamp_column_name, String, api_name: :timestampColumnName, nil?: true

            # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0::Config}
            #   for more details.
            #
            #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
            #
            #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
            #
            #   @param latency_column_name [String, nil] Name of the column with the latencies.
            #
            #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
          end

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0#partition_type
          module PartitionType
            extend Openlayer::Internal::Type::Enum

            DAY = :DAY
            MONTH = :MONTH
            YEAR = :YEAR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class BackendType < Openlayer::Internal::Type::BaseModel
          # @!attribute backend_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType::BackendType]
          required :backend_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType::BackendType },
                   api_name: :backendType

          # @!method initialize(backend_type:)
          #   @param backend_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType::BackendType]

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType#backend_type
          module BackendType
            extend Openlayer::Internal::Type::Enum

            DEFAULT = :default

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class UnionMember2 < Openlayer::Internal::Type::BaseModel
          # @!attribute backend_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2::BackendType]
          required :backend_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2::BackendType },
                   api_name: :backendType

          # @!attribute database
          #
          #   @return [String]
          required :database, String

          # @!attribute schema
          #
          #   @return [String]
          required :schema, String

          # @!attribute snowflake_connection_id
          #
          #   @return [String, nil]
          required :snowflake_connection_id, String, api_name: :snowflakeConnectionId, nil?: true

          # @!attribute table
          #
          #   @return [String, nil]
          required :table, String, nil?: true

          # @!method initialize(backend_type:, database:, schema:, snowflake_connection_id:, table:)
          #   @param backend_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2::BackendType]
          #   @param database [String]
          #   @param schema [String]
          #   @param snowflake_connection_id [String, nil]
          #   @param table [String, nil]

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2#backend_type
          module BackendType
            extend Openlayer::Internal::Type::Enum

            SNOWFLAKE = :snowflake

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2#config
          class Config < Openlayer::Internal::Type::BaseModel
            # @!attribute ground_truth_column_name
            #   Name of the column with the ground truths.
            #
            #   @return [String, nil]
            optional :ground_truth_column_name, String, api_name: :groundTruthColumnName, nil?: true

            # @!attribute human_feedback_column_name
            #   Name of the column with human feedback.
            #
            #   @return [String, nil]
            optional :human_feedback_column_name, String, api_name: :humanFeedbackColumnName, nil?: true

            # @!attribute latency_column_name
            #   Name of the column with the latencies.
            #
            #   @return [String, nil]
            optional :latency_column_name, String, api_name: :latencyColumnName, nil?: true

            # @!attribute timestamp_column_name
            #   Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            #   If not provided, the upload timestamp is used.
            #
            #   @return [String, nil]
            optional :timestamp_column_name, String, api_name: :timestampColumnName, nil?: true

            # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2::Config}
            #   for more details.
            #
            #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
            #
            #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
            #
            #   @param latency_column_name [String, nil] Name of the column with the latencies.
            #
            #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
          end
        end

        class UnionMember3 < Openlayer::Internal::Type::BaseModel
          # @!attribute backend_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3::BackendType]
          required :backend_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3::BackendType },
                   api_name: :backendType

          # @!attribute databricks_dtl_connection_id
          #
          #   @return [String, nil]
          required :databricks_dtl_connection_id, String, api_name: :databricksDtlConnectionId, nil?: true

          # @!attribute table_id
          #
          #   @return [String, nil]
          required :table_id, String, api_name: :tableId, nil?: true

          # @!method initialize(backend_type:, databricks_dtl_connection_id:, table_id:)
          #   @param backend_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3::BackendType]
          #   @param databricks_dtl_connection_id [String, nil]
          #   @param table_id [String, nil]

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3#backend_type
          module BackendType
            extend Openlayer::Internal::Type::Enum

            DATABRICKS_DTL = :databricks_dtl

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3#config
          class Config < Openlayer::Internal::Type::BaseModel
            # @!attribute ground_truth_column_name
            #   Name of the column with the ground truths.
            #
            #   @return [String, nil]
            optional :ground_truth_column_name, String, api_name: :groundTruthColumnName, nil?: true

            # @!attribute human_feedback_column_name
            #   Name of the column with human feedback.
            #
            #   @return [String, nil]
            optional :human_feedback_column_name, String, api_name: :humanFeedbackColumnName, nil?: true

            # @!attribute latency_column_name
            #   Name of the column with the latencies.
            #
            #   @return [String, nil]
            optional :latency_column_name, String, api_name: :latencyColumnName, nil?: true

            # @!attribute timestamp_column_name
            #   Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            #   If not provided, the upload timestamp is used.
            #
            #   @return [String, nil]
            optional :timestamp_column_name, String, api_name: :timestampColumnName, nil?: true

            # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3::Config}
            #   for more details.
            #
            #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
            #
            #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
            #
            #   @param latency_column_name [String, nil] Name of the column with the latencies.
            #
            #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
          end
        end

        class UnionMember4 < Openlayer::Internal::Type::BaseModel
          # @!attribute backend_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4::BackendType]
          required :backend_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4::BackendType },
                   api_name: :backendType

          # @!attribute redshift_connection_id
          #
          #   @return [String, nil]
          required :redshift_connection_id, String, api_name: :redshiftConnectionId, nil?: true

          # @!attribute schema_name
          #
          #   @return [String]
          required :schema_name, String, api_name: :schemaName

          # @!attribute table_name
          #
          #   @return [String]
          required :table_name, String, api_name: :tableName

          # @!method initialize(backend_type:, redshift_connection_id:, schema_name:, table_name:)
          #   @param backend_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4::BackendType]
          #   @param redshift_connection_id [String, nil]
          #   @param schema_name [String]
          #   @param table_name [String]

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4#backend_type
          module BackendType
            extend Openlayer::Internal::Type::Enum

            REDSHIFT = :redshift

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4#config
          class Config < Openlayer::Internal::Type::BaseModel
            # @!attribute ground_truth_column_name
            #   Name of the column with the ground truths.
            #
            #   @return [String, nil]
            optional :ground_truth_column_name, String, api_name: :groundTruthColumnName, nil?: true

            # @!attribute human_feedback_column_name
            #   Name of the column with human feedback.
            #
            #   @return [String, nil]
            optional :human_feedback_column_name, String, api_name: :humanFeedbackColumnName, nil?: true

            # @!attribute latency_column_name
            #   Name of the column with the latencies.
            #
            #   @return [String, nil]
            optional :latency_column_name, String, api_name: :latencyColumnName, nil?: true

            # @!attribute timestamp_column_name
            #   Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            #   If not provided, the upload timestamp is used.
            #
            #   @return [String, nil]
            optional :timestamp_column_name, String, api_name: :timestampColumnName, nil?: true

            # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4::Config}
            #   for more details.
            #
            #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
            #
            #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
            #
            #   @param latency_column_name [String, nil] Name of the column with the latencies.
            #
            #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
          end
        end

        class UnionMember5 < Openlayer::Internal::Type::BaseModel
          # @!attribute backend_type
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5::BackendType]
          required :backend_type,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5::BackendType },
                   api_name: :backendType

          # @!attribute database
          #
          #   @return [String]
          required :database, String

          # @!attribute postgres_connection_id
          #
          #   @return [String, nil]
          required :postgres_connection_id, String, api_name: :postgresConnectionId, nil?: true

          # @!attribute schema
          #
          #   @return [String]
          required :schema, String

          # @!attribute table
          #
          #   @return [String, nil]
          required :table, String, nil?: true

          # @!method initialize(backend_type:, database:, postgres_connection_id:, schema:, table:)
          #   @param backend_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5::BackendType]
          #   @param database [String]
          #   @param postgres_connection_id [String, nil]
          #   @param schema [String]
          #   @param table [String, nil]

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5#backend_type
          module BackendType
            extend Openlayer::Internal::Type::Enum

            POSTGRES = :postgres

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5#config
          class Config < Openlayer::Internal::Type::BaseModel
            # @!attribute ground_truth_column_name
            #   Name of the column with the ground truths.
            #
            #   @return [String, nil]
            optional :ground_truth_column_name, String, api_name: :groundTruthColumnName, nil?: true

            # @!attribute human_feedback_column_name
            #   Name of the column with human feedback.
            #
            #   @return [String, nil]
            optional :human_feedback_column_name, String, api_name: :humanFeedbackColumnName, nil?: true

            # @!attribute latency_column_name
            #   Name of the column with the latencies.
            #
            #   @return [String, nil]
            optional :latency_column_name, String, api_name: :latencyColumnName, nil?: true

            # @!attribute timestamp_column_name
            #   Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            #   If not provided, the upload timestamp is used.
            #
            #   @return [String, nil]
            optional :timestamp_column_name, String, api_name: :timestampColumnName, nil?: true

            # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5::Config}
            #   for more details.
            #
            #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
            #
            #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
            #
            #   @param latency_column_name [String, nil] Name of the column with the latencies.
            #
            #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
          end
        end

        # @!method self.variants
        #   @return [Array(Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember0, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::BackendType, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember2, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember3, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember4, Openlayer::Models::InferencePipelineUpdateResponse::DataBackend::UnionMember5)]
      end

      # @see Openlayer::Models::InferencePipelineUpdateResponse#project
      class Project < Openlayer::Internal::Type::BaseModel
        # @!attribute name
        #   The project name.
        #
        #   @return [String]
        required :name, String

        # @!attribute task_type
        #   The task type of the project.
        #
        #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Project::TaskType]
        required :task_type,
                 enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::Project::TaskType },
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
          #   @return [Openlayer::Models::InferencePipelineUpdateResponse::Project::Links]
          required :links, -> { Openlayer::Models::InferencePipelineUpdateResponse::Project::Links }

          # @!attribute monitoring_goal_count
          #   The number of tests in the monitoring mode of the project.
          #
          #   @return [Integer]
          required :monitoring_goal_count, Integer, api_name: :monitoringGoalCount

          # @!attribute source
          #   The source of the project.
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Project::Source, nil]
          required :source,
                   enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::Project::Source },
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
          #   @return [Openlayer::Models::InferencePipelineUpdateResponse::Project::GitRepo, nil]
          optional :git_repo,
                   -> { Openlayer::Models::InferencePipelineUpdateResponse::Project::GitRepo },
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
        #   @param links [Openlayer::Models::InferencePipelineUpdateResponse::Project::Links] Links to the project.
        #
        #   @param monitoring_goal_count [Integer] The number of tests in the monitoring mode of the project.
        #
        #   @param name [String] The project name.
        #
        #   @param source [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Project::Source, nil] The source of the project.
        #
        #   @param task_type [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Project::TaskType] The task type of the project.
        #
        #   @param version_count [Integer] The number of versions (commits) in the project.
        #
        #   @param workspace_id [String, nil] The workspace id.
        #
        #   @param description [String, nil] The project description.
        #
        #   @param git_repo [Openlayer::Models::InferencePipelineUpdateResponse::Project::GitRepo, nil]

        # @see Openlayer::Models::InferencePipelineUpdateResponse::Project#links
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
        # @see Openlayer::Models::InferencePipelineUpdateResponse::Project#source
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
        # @see Openlayer::Models::InferencePipelineUpdateResponse::Project#task_type
        module TaskType
          extend Openlayer::Internal::Type::Enum

          LLM_BASE = :"llm-base"
          TABULAR_CLASSIFICATION = :"tabular-classification"
          TABULAR_REGRESSION = :"tabular-regression"
          TEXT_CLASSIFICATION = :"text-classification"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Openlayer::Models::InferencePipelineUpdateResponse::Project#git_repo
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

      # @see Openlayer::Models::InferencePipelineUpdateResponse#workspace
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
          #   @return [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Workspace::Status]
          required :status, enum: -> { Openlayer::Models::InferencePipelineUpdateResponse::Workspace::Status }

          # @!attribute monthly_usage
          #
          #   @return [Array<Openlayer::Models::InferencePipelineUpdateResponse::Workspace::MonthlyUsage>, nil]
          optional :monthly_usage,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelineUpdateResponse::Workspace::MonthlyUsage] },
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
        #   @param status [Symbol, Openlayer::Models::InferencePipelineUpdateResponse::Workspace::Status]
        #
        #   @param monthly_usage [Array<Openlayer::Models::InferencePipelineUpdateResponse::Workspace::MonthlyUsage>]
        #
        #   @param saml_only_access [Boolean] Whether the workspace only allows SAML authentication.
        #
        #   @param wildcard_domains [Array<String>]

        # @see Openlayer::Models::InferencePipelineUpdateResponse::Workspace#status
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
