# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::InferencePipelines#create
      class InferencePipelineCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

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
        #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5, nil]
        optional :data_backend,
                 union: -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend },
                 api_name: :dataBackend,
                 nil?: true

        # @!attribute project
        #
        #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::Project, nil]
        optional :project, -> { Openlayer::Projects::InferencePipelineCreateParams::Project }, nil?: true

        # @!attribute workspace
        #
        #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace, nil]
        optional :workspace, -> { Openlayer::Projects::InferencePipelineCreateParams::Workspace }, nil?: true

        # @!method initialize(description:, name:, data_backend: nil, project: nil, workspace: nil, request_options: {})
        #   @param description [String, nil] The inference pipeline description.
        #
        #   @param name [String] The inference pipeline name.
        #
        #   @param data_backend [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5, nil]
        #
        #   @param project [Openlayer::Models::Projects::InferencePipelineCreateParams::Project, nil]
        #
        #   @param workspace [Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace, nil]
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        module DataBackend
          extend Openlayer::Internal::Type::Union

          variant -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0 }

          variant -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::BackendType }

          variant -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2 }

          variant -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3 }

          variant -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4 }

          variant -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5 }

          class UnionMember0 < Openlayer::Internal::Type::BaseModel
            # @!attribute backend_type
            #
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::BackendType]
            required :backend_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::BackendType
                     },
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
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::PartitionType, nil]
            optional :partition_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::PartitionType
                     },
                     api_name: :partitionType,
                     nil?: true

            request_only do
              # @!attribute config
              #
              #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::Config]
              required :config,
                       -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::Config }
            end

            # @!method initialize(backend_type:, bigquery_connection_id:, config:, dataset_id:, project_id:, table_id:, partition_type: nil)
            #   @param backend_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::BackendType]
            #   @param bigquery_connection_id [String, nil]
            #   @param config [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::Config]
            #   @param dataset_id [String]
            #   @param project_id [String]
            #   @param table_id [String, nil]
            #   @param partition_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::PartitionType, nil]

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0#backend_type
            module BackendType
              extend Openlayer::Internal::Type::Enum

              BIGQUERY = :bigquery

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0#config
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

              request_only do
                # @!attribute inference_id_column_name
                #   Name of the column with the inference ids. This is useful if you want to update
                #   rows at a later point in time. If not provided, a unique id is generated by
                #   Openlayer.
                #
                #   @return [String, nil]
                optional :inference_id_column_name, String, api_name: :inferenceIdColumnName, nil?: true
              end

              # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, inference_id_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0::Config}
              #   for more details.
              #
              #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
              #
              #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
              #
              #   @param inference_id_column_name [String, nil] Name of the column with the inference ids. This is useful if you want to update
              #
              #   @param latency_column_name [String, nil] Name of the column with the latencies.
              #
              #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
            end

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0#partition_type
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
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType::BackendType]
            required :backend_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::BackendType::BackendType
                     },
                     api_name: :backendType

            # @!method initialize(backend_type:)
            #   @param backend_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType::BackendType]

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType#backend_type
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
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::BackendType]
            required :backend_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::BackendType
                     },
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

            request_only do
              # @!attribute config
              #
              #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::Config]
              required :config,
                       -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::Config }
            end

            # @!method initialize(backend_type:, config:, database:, schema:, snowflake_connection_id:, table:)
            #   @param backend_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::BackendType]
            #   @param config [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::Config]
            #   @param database [String]
            #   @param schema [String]
            #   @param snowflake_connection_id [String, nil]
            #   @param table [String, nil]

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2#backend_type
            module BackendType
              extend Openlayer::Internal::Type::Enum

              SNOWFLAKE = :snowflake

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2#config
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

              request_only do
                # @!attribute inference_id_column_name
                #   Name of the column with the inference ids. This is useful if you want to update
                #   rows at a later point in time. If not provided, a unique id is generated by
                #   Openlayer.
                #
                #   @return [String, nil]
                optional :inference_id_column_name, String, api_name: :inferenceIdColumnName, nil?: true
              end

              # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, inference_id_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2::Config}
              #   for more details.
              #
              #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
              #
              #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
              #
              #   @param inference_id_column_name [String, nil] Name of the column with the inference ids. This is useful if you want to update
              #
              #   @param latency_column_name [String, nil] Name of the column with the latencies.
              #
              #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
            end
          end

          class UnionMember3 < Openlayer::Internal::Type::BaseModel
            # @!attribute backend_type
            #
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::BackendType]
            required :backend_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::BackendType
                     },
                     api_name: :backendType

            # @!attribute databricks_dtl_connection_id
            #
            #   @return [String, nil]
            required :databricks_dtl_connection_id, String, api_name: :databricksDtlConnectionId, nil?: true

            # @!attribute table_id
            #
            #   @return [String, nil]
            required :table_id, String, api_name: :tableId, nil?: true

            request_only do
              # @!attribute config
              #
              #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::Config]
              required :config,
                       -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::Config }
            end

            # @!method initialize(backend_type:, config:, databricks_dtl_connection_id:, table_id:)
            #   @param backend_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::BackendType]
            #   @param config [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::Config]
            #   @param databricks_dtl_connection_id [String, nil]
            #   @param table_id [String, nil]

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3#backend_type
            module BackendType
              extend Openlayer::Internal::Type::Enum

              DATABRICKS_DTL = :databricks_dtl

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3#config
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

              request_only do
                # @!attribute inference_id_column_name
                #   Name of the column with the inference ids. This is useful if you want to update
                #   rows at a later point in time. If not provided, a unique id is generated by
                #   Openlayer.
                #
                #   @return [String, nil]
                optional :inference_id_column_name, String, api_name: :inferenceIdColumnName, nil?: true
              end

              # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, inference_id_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3::Config}
              #   for more details.
              #
              #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
              #
              #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
              #
              #   @param inference_id_column_name [String, nil] Name of the column with the inference ids. This is useful if you want to update
              #
              #   @param latency_column_name [String, nil] Name of the column with the latencies.
              #
              #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
            end
          end

          class UnionMember4 < Openlayer::Internal::Type::BaseModel
            # @!attribute backend_type
            #
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::BackendType]
            required :backend_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::BackendType
                     },
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

            request_only do
              # @!attribute config
              #
              #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::Config]
              required :config,
                       -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::Config }
            end

            # @!method initialize(backend_type:, config:, redshift_connection_id:, schema_name:, table_name:)
            #   @param backend_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::BackendType]
            #   @param config [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::Config]
            #   @param redshift_connection_id [String, nil]
            #   @param schema_name [String]
            #   @param table_name [String]

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4#backend_type
            module BackendType
              extend Openlayer::Internal::Type::Enum

              REDSHIFT = :redshift

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4#config
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

              request_only do
                # @!attribute inference_id_column_name
                #   Name of the column with the inference ids. This is useful if you want to update
                #   rows at a later point in time. If not provided, a unique id is generated by
                #   Openlayer.
                #
                #   @return [String, nil]
                optional :inference_id_column_name, String, api_name: :inferenceIdColumnName, nil?: true
              end

              # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, inference_id_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4::Config}
              #   for more details.
              #
              #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
              #
              #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
              #
              #   @param inference_id_column_name [String, nil] Name of the column with the inference ids. This is useful if you want to update
              #
              #   @param latency_column_name [String, nil] Name of the column with the latencies.
              #
              #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
            end
          end

          class UnionMember5 < Openlayer::Internal::Type::BaseModel
            # @!attribute backend_type
            #
            #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::BackendType]
            required :backend_type,
                     enum: -> {
                       Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::BackendType
                     },
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

            request_only do
              # @!attribute config
              #
              #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::Config]
              required :config,
                       -> { Openlayer::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::Config }
            end

            # @!method initialize(backend_type:, config:, database:, postgres_connection_id:, schema:, table:)
            #   @param backend_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::BackendType]
            #   @param config [Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::Config]
            #   @param database [String]
            #   @param postgres_connection_id [String, nil]
            #   @param schema [String]
            #   @param table [String, nil]

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5#backend_type
            module BackendType
              extend Openlayer::Internal::Type::Enum

              POSTGRES = :postgres

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5#config
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

              request_only do
                # @!attribute inference_id_column_name
                #   Name of the column with the inference ids. This is useful if you want to update
                #   rows at a later point in time. If not provided, a unique id is generated by
                #   Openlayer.
                #
                #   @return [String, nil]
                optional :inference_id_column_name, String, api_name: :inferenceIdColumnName, nil?: true
              end

              # @!method initialize(ground_truth_column_name: nil, human_feedback_column_name: nil, inference_id_column_name: nil, latency_column_name: nil, timestamp_column_name: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5::Config}
              #   for more details.
              #
              #   @param ground_truth_column_name [String, nil] Name of the column with the ground truths.
              #
              #   @param human_feedback_column_name [String, nil] Name of the column with human feedback.
              #
              #   @param inference_id_column_name [String, nil] Name of the column with the inference ids. This is useful if you want to update
              #
              #   @param latency_column_name [String, nil] Name of the column with the latencies.
              #
              #   @param timestamp_column_name [String, nil] Name of the column with the timestamps. Timestamps must be in UNIX sec format. I
            end
          end

          # @!method self.variants
          #   @return [Array(Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember0, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::BackendType, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember2, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember3, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember4, Openlayer::Models::Projects::InferencePipelineCreateParams::DataBackend::UnionMember5)]
        end

        class Project < Openlayer::Internal::Type::BaseModel
          # @!attribute name
          #   The project name.
          #
          #   @return [String]
          required :name, String

          # @!attribute task_type
          #   The task type of the project.
          #
          #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::Project::TaskType]
          required :task_type,
                   enum: -> { Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType },
                   api_name: :taskType

          # @!attribute description
          #   The project description.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!method initialize(name:, task_type:, description: nil)
          #   @param name [String] The project name.
          #
          #   @param task_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::Project::TaskType] The task type of the project.
          #
          #   @param description [String, nil] The project description.

          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#links
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
          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#source
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
          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#task_type
          module TaskType
            extend Openlayer::Internal::Type::Enum

            LLM_BASE = :"llm-base"
            TABULAR_CLASSIFICATION = :"tabular-classification"
            TABULAR_REGRESSION = :"tabular-regression"
            TEXT_CLASSIFICATION = :"text-classification"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#git_repo
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

            # @!method initialize(git_account_id:, git_id:, branch: nil, root_dir: nil)
            #   @param git_account_id [String]
            #   @param git_id [Integer]
            #   @param branch [String]
            #   @param root_dir [String]
          end
        end

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

          request_only do
            # @!attribute invite_code
            #   The workspace invite code.
            #
            #   @return [String, nil]
            optional :invite_code, String, api_name: :inviteCode
          end

          # @!method initialize(name:, slug:, invite_code: nil, saml_only_access: nil, wildcard_domains: nil)
          #   @param name [String] The workspace name.
          #
          #   @param slug [String] The workspace slug.
          #
          #   @param invite_code [String] The workspace invite code.
          #
          #   @param saml_only_access [Boolean] Whether the workspace only allows SAML authentication.
          #
          #   @param wildcard_domains [Array<String>]

          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace#status
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
end
