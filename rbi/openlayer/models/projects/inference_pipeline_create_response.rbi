# typed: strong

module Openlayer
  module Models
    module Projects
      class InferencePipelineCreateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Projects::InferencePipelineCreateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # The inference pipeline description.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The inference pipeline name.
        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            T.nilable(
              Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::Variants
            )
          )
        end
        attr_accessor :data_backend

        sig do
          returns(
            T.nilable(
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Project
            )
          )
        end
        attr_reader :project

        sig do
          params(
            project:
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::OrHash
              )
          ).void
        end
        attr_writer :project

        sig do
          returns(
            T.nilable(
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace
            )
          )
        end
        attr_reader :workspace

        sig do
          params(
            workspace:
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::OrHash
              )
          ).void
        end
        attr_writer :workspace

        # The inference pipeline id.
        sig { returns(String) }
        attr_accessor :id

        # The creation date.
        sig { returns(Time) }
        attr_accessor :date_created

        # The last test evaluation date.
        sig { returns(T.nilable(Time)) }
        attr_accessor :date_last_evaluated

        # The last data sample received date.
        sig { returns(T.nilable(Time)) }
        attr_accessor :date_last_sample_received

        # The next test evaluation date.
        sig { returns(T.nilable(Time)) }
        attr_accessor :date_of_next_evaluation

        # The last updated date.
        sig { returns(Time) }
        attr_accessor :date_updated

        # The number of tests failing.
        sig { returns(Integer) }
        attr_accessor :failing_goal_count

        sig do
          returns(
            Openlayer::Models::Projects::InferencePipelineCreateResponse::Links
          )
        end
        attr_reader :links

        sig do
          params(
            links:
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Links::OrHash
          ).void
        end
        attr_writer :links

        # The number of tests passing.
        sig { returns(Integer) }
        attr_accessor :passing_goal_count

        # The project id.
        sig { returns(String) }
        attr_accessor :project_id

        # The status of test evaluation for the inference pipeline.
        sig do
          returns(
            Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The status message of test evaluation for the inference pipeline.
        sig { returns(T.nilable(String)) }
        attr_accessor :status_message

        # The total number of tests.
        sig { returns(Integer) }
        attr_accessor :total_goal_count

        # The last time the data was polled.
        sig { returns(T.nilable(Time)) }
        attr_accessor :date_last_polled

        # The total number of records in the data backend.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :total_records_count

        # The workspace id.
        sig { returns(T.nilable(String)) }
        attr_reader :workspace_id

        sig { params(workspace_id: String).void }
        attr_writer :workspace_id

        sig do
          params(
            id: String,
            date_created: Time,
            date_last_evaluated: T.nilable(Time),
            date_last_sample_received: T.nilable(Time),
            date_of_next_evaluation: T.nilable(Time),
            date_updated: Time,
            description: T.nilable(String),
            failing_goal_count: Integer,
            links:
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Links::OrHash,
            name: String,
            passing_goal_count: Integer,
            project_id: String,
            status:
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::OrSymbol,
            status_message: T.nilable(String),
            total_goal_count: Integer,
            data_backend:
              T.nilable(
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::OrHash,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::OrHash,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::OrHash,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::OrHash,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::OrHash,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::OrHash
                )
              ),
            date_last_polled: T.nilable(Time),
            project:
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::OrHash
              ),
            total_records_count: T.nilable(Integer),
            workspace:
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::OrHash
              ),
            workspace_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The inference pipeline id.
          id:,
          # The creation date.
          date_created:,
          # The last test evaluation date.
          date_last_evaluated:,
          # The last data sample received date.
          date_last_sample_received:,
          # The next test evaluation date.
          date_of_next_evaluation:,
          # The last updated date.
          date_updated:,
          # The inference pipeline description.
          description:,
          # The number of tests failing.
          failing_goal_count:,
          links:,
          # The inference pipeline name.
          name:,
          # The number of tests passing.
          passing_goal_count:,
          # The project id.
          project_id:,
          # The status of test evaluation for the inference pipeline.
          status:,
          # The status message of test evaluation for the inference pipeline.
          status_message:,
          # The total number of tests.
          total_goal_count:,
          data_backend: nil,
          # The last time the data was polled.
          date_last_polled: nil,
          project: nil,
          # The total number of records in the data backend.
          total_records_count: nil,
          workspace: nil,
          # The workspace id.
          workspace_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              date_created: Time,
              date_last_evaluated: T.nilable(Time),
              date_last_sample_received: T.nilable(Time),
              date_of_next_evaluation: T.nilable(Time),
              date_updated: Time,
              description: T.nilable(String),
              failing_goal_count: Integer,
              links:
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Links,
              name: String,
              passing_goal_count: Integer,
              project_id: String,
              status:
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol,
              status_message: T.nilable(String),
              total_goal_count: Integer,
              data_backend:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::Variants
                ),
              date_last_polled: T.nilable(Time),
              project:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project
                ),
              total_records_count: T.nilable(Integer),
              workspace:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace
                ),
              workspace_id: String
            }
          )
        end
        def to_hash
        end

        class Links < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Links,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :app

          sig { params(app: String).returns(T.attached_class) }
          def self.new(app:)
          end

          sig { override.returns({ app: String }) }
          def to_hash
          end
        end

        # The status of test evaluation for the inference pipeline.
        module Status
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
            )
          RUNNING =
            T.let(
              :running,
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
            )
          PAUSED =
            T.let(
              :paused,
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module DataBackend
          extend Openlayer::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend
              )
            end

          class BigQueryDataBackend < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::BackendType::TaggedSymbol
              )
            end
            attr_accessor :backend_type

            sig { returns(T.nilable(String)) }
            attr_accessor :bigquery_connection_id

            sig { returns(String) }
            attr_accessor :dataset_id

            sig { returns(String) }
            attr_accessor :project_id

            sig { returns(T.nilable(String)) }
            attr_accessor :table_id

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::TaggedSymbol
                )
              )
            end
            attr_accessor :partition_type

            sig do
              params(
                backend_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::BackendType::OrSymbol,
                bigquery_connection_id: T.nilable(String),
                dataset_id: String,
                project_id: String,
                table_id: T.nilable(String),
                partition_type:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::OrSymbol
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              backend_type:,
              bigquery_connection_id:,
              dataset_id:,
              project_id:,
              table_id:,
              partition_type: nil
            )
            end

            sig do
              override.returns(
                {
                  backend_type:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::BackendType::TaggedSymbol,
                  bigquery_connection_id: T.nilable(String),
                  config:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::Config,
                  dataset_id: String,
                  project_id: String,
                  table_id: T.nilable(String),
                  partition_type:
                    T.nilable(
                      Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::TaggedSymbol
                    )
                }
              )
            end
            def to_hash
            end

            module BackendType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::BackendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BIGQUERY =
                T.let(
                  :bigquery,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::BackendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::BackendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Config < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::Config,
                    Openlayer::Internal::AnyHash
                  )
                end

              # Name of the column with the ground truths.
              sig { returns(T.nilable(String)) }
              attr_accessor :ground_truth_column_name

              # Name of the column with human feedback.
              sig { returns(T.nilable(String)) }
              attr_accessor :human_feedback_column_name

              # Name of the column with the latencies.
              sig { returns(T.nilable(String)) }
              attr_accessor :latency_column_name

              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              sig { returns(T.nilable(String)) }
              attr_accessor :timestamp_column_name

              sig do
                params(
                  ground_truth_column_name: T.nilable(String),
                  human_feedback_column_name: T.nilable(String),
                  latency_column_name: T.nilable(String),
                  timestamp_column_name: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Name of the column with the ground truths.
                ground_truth_column_name: nil,
                # Name of the column with human feedback.
                human_feedback_column_name: nil,
                # Name of the column with the latencies.
                latency_column_name: nil,
                # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
                # If not provided, the upload timestamp is used.
                timestamp_column_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    ground_truth_column_name: T.nilable(String),
                    human_feedback_column_name: T.nilable(String),
                    inference_id_column_name: T.nilable(String),
                    latency_column_name: T.nilable(String),
                    timestamp_column_name: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            module PartitionType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DAY =
                T.let(
                  :DAY,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::TaggedSymbol
                )
              MONTH =
                T.let(
                  :MONTH,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::TaggedSymbol
                )
              YEAR =
                T.let(
                  :YEAR,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::BigQueryDataBackend::PartitionType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class DefaultDataBackend < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::BackendType::TaggedSymbol
              )
            end
            attr_accessor :backend_type

            sig do
              params(
                backend_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::BackendType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(backend_type:)
            end

            sig do
              override.returns(
                {
                  backend_type:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::BackendType::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            module BackendType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::BackendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEFAULT =
                T.let(
                  :default,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::BackendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DefaultDataBackend::BackendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class SnowflakeDataBackend < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::BackendType::TaggedSymbol
              )
            end
            attr_accessor :backend_type

            sig { returns(String) }
            attr_accessor :database

            sig { returns(String) }
            attr_accessor :schema

            sig { returns(T.nilable(String)) }
            attr_accessor :snowflake_connection_id

            sig { returns(T.nilable(String)) }
            attr_accessor :table

            sig do
              params(
                backend_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::BackendType::OrSymbol,
                database: String,
                schema: String,
                snowflake_connection_id: T.nilable(String),
                table: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              backend_type:,
              database:,
              schema:,
              snowflake_connection_id:,
              table:
            )
            end

            sig do
              override.returns(
                {
                  backend_type:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::BackendType::TaggedSymbol,
                  config:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::Config,
                  database: String,
                  schema: String,
                  snowflake_connection_id: T.nilable(String),
                  table: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            module BackendType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::BackendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SNOWFLAKE =
                T.let(
                  :snowflake,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::BackendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::BackendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Config < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::SnowflakeDataBackend::Config,
                    Openlayer::Internal::AnyHash
                  )
                end

              # Name of the column with the ground truths.
              sig { returns(T.nilable(String)) }
              attr_accessor :ground_truth_column_name

              # Name of the column with human feedback.
              sig { returns(T.nilable(String)) }
              attr_accessor :human_feedback_column_name

              # Name of the column with the latencies.
              sig { returns(T.nilable(String)) }
              attr_accessor :latency_column_name

              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              sig { returns(T.nilable(String)) }
              attr_accessor :timestamp_column_name

              sig do
                params(
                  ground_truth_column_name: T.nilable(String),
                  human_feedback_column_name: T.nilable(String),
                  latency_column_name: T.nilable(String),
                  timestamp_column_name: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Name of the column with the ground truths.
                ground_truth_column_name: nil,
                # Name of the column with human feedback.
                human_feedback_column_name: nil,
                # Name of the column with the latencies.
                latency_column_name: nil,
                # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
                # If not provided, the upload timestamp is used.
                timestamp_column_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    ground_truth_column_name: T.nilable(String),
                    human_feedback_column_name: T.nilable(String),
                    inference_id_column_name: T.nilable(String),
                    latency_column_name: T.nilable(String),
                    timestamp_column_name: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          class DatabricksDtlDataBackend < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::BackendType::TaggedSymbol
              )
            end
            attr_accessor :backend_type

            sig { returns(T.nilable(String)) }
            attr_accessor :databricks_dtl_connection_id

            sig { returns(T.nilable(String)) }
            attr_accessor :table_id

            sig do
              params(
                backend_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::BackendType::OrSymbol,
                databricks_dtl_connection_id: T.nilable(String),
                table_id: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              backend_type:,
              databricks_dtl_connection_id:,
              table_id:
            )
            end

            sig do
              override.returns(
                {
                  backend_type:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::BackendType::TaggedSymbol,
                  config:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::Config,
                  databricks_dtl_connection_id: T.nilable(String),
                  table_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            module BackendType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::BackendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DATABRICKS_DTL =
                T.let(
                  :databricks_dtl,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::BackendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::BackendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Config < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::DatabricksDtlDataBackend::Config,
                    Openlayer::Internal::AnyHash
                  )
                end

              # Name of the column with the ground truths.
              sig { returns(T.nilable(String)) }
              attr_accessor :ground_truth_column_name

              # Name of the column with human feedback.
              sig { returns(T.nilable(String)) }
              attr_accessor :human_feedback_column_name

              # Name of the column with the latencies.
              sig { returns(T.nilable(String)) }
              attr_accessor :latency_column_name

              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              sig { returns(T.nilable(String)) }
              attr_accessor :timestamp_column_name

              sig do
                params(
                  ground_truth_column_name: T.nilable(String),
                  human_feedback_column_name: T.nilable(String),
                  latency_column_name: T.nilable(String),
                  timestamp_column_name: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Name of the column with the ground truths.
                ground_truth_column_name: nil,
                # Name of the column with human feedback.
                human_feedback_column_name: nil,
                # Name of the column with the latencies.
                latency_column_name: nil,
                # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
                # If not provided, the upload timestamp is used.
                timestamp_column_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    ground_truth_column_name: T.nilable(String),
                    human_feedback_column_name: T.nilable(String),
                    inference_id_column_name: T.nilable(String),
                    latency_column_name: T.nilable(String),
                    timestamp_column_name: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          class RedshiftDataBackend < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::BackendType::TaggedSymbol
              )
            end
            attr_accessor :backend_type

            sig { returns(T.nilable(String)) }
            attr_accessor :redshift_connection_id

            sig { returns(String) }
            attr_accessor :schema_name

            sig { returns(String) }
            attr_accessor :table_name

            sig do
              params(
                backend_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::BackendType::OrSymbol,
                redshift_connection_id: T.nilable(String),
                schema_name: String,
                table_name: String
              ).returns(T.attached_class)
            end
            def self.new(
              backend_type:,
              redshift_connection_id:,
              schema_name:,
              table_name:
            )
            end

            sig do
              override.returns(
                {
                  backend_type:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::BackendType::TaggedSymbol,
                  config:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::Config,
                  redshift_connection_id: T.nilable(String),
                  schema_name: String,
                  table_name: String
                }
              )
            end
            def to_hash
            end

            module BackendType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::BackendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              REDSHIFT =
                T.let(
                  :redshift,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::BackendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::BackendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Config < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::RedshiftDataBackend::Config,
                    Openlayer::Internal::AnyHash
                  )
                end

              # Name of the column with the ground truths.
              sig { returns(T.nilable(String)) }
              attr_accessor :ground_truth_column_name

              # Name of the column with human feedback.
              sig { returns(T.nilable(String)) }
              attr_accessor :human_feedback_column_name

              # Name of the column with the latencies.
              sig { returns(T.nilable(String)) }
              attr_accessor :latency_column_name

              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              sig { returns(T.nilable(String)) }
              attr_accessor :timestamp_column_name

              sig do
                params(
                  ground_truth_column_name: T.nilable(String),
                  human_feedback_column_name: T.nilable(String),
                  latency_column_name: T.nilable(String),
                  timestamp_column_name: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Name of the column with the ground truths.
                ground_truth_column_name: nil,
                # Name of the column with human feedback.
                human_feedback_column_name: nil,
                # Name of the column with the latencies.
                latency_column_name: nil,
                # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
                # If not provided, the upload timestamp is used.
                timestamp_column_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    ground_truth_column_name: T.nilable(String),
                    human_feedback_column_name: T.nilable(String),
                    inference_id_column_name: T.nilable(String),
                    latency_column_name: T.nilable(String),
                    timestamp_column_name: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          class PostgresDataBackend < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend,
                  Openlayer::Internal::AnyHash
                )
              end

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::BackendType::TaggedSymbol
              )
            end
            attr_accessor :backend_type

            sig { returns(String) }
            attr_accessor :database

            sig { returns(T.nilable(String)) }
            attr_accessor :postgres_connection_id

            sig { returns(String) }
            attr_accessor :schema

            sig { returns(T.nilable(String)) }
            attr_accessor :table

            sig do
              params(
                backend_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::BackendType::OrSymbol,
                database: String,
                postgres_connection_id: T.nilable(String),
                schema: String,
                table: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              backend_type:,
              database:,
              postgres_connection_id:,
              schema:,
              table:
            )
            end

            sig do
              override.returns(
                {
                  backend_type:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::BackendType::TaggedSymbol,
                  config:
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::Config,
                  database: String,
                  postgres_connection_id: T.nilable(String),
                  schema: String,
                  table: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            module BackendType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::BackendType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              POSTGRES =
                T.let(
                  :postgres,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::BackendType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::BackendType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class Config < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::PostgresDataBackend::Config,
                    Openlayer::Internal::AnyHash
                  )
                end

              # Name of the column with the ground truths.
              sig { returns(T.nilable(String)) }
              attr_accessor :ground_truth_column_name

              # Name of the column with human feedback.
              sig { returns(T.nilable(String)) }
              attr_accessor :human_feedback_column_name

              # Name of the column with the latencies.
              sig { returns(T.nilable(String)) }
              attr_accessor :latency_column_name

              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              sig { returns(T.nilable(String)) }
              attr_accessor :timestamp_column_name

              sig do
                params(
                  ground_truth_column_name: T.nilable(String),
                  human_feedback_column_name: T.nilable(String),
                  latency_column_name: T.nilable(String),
                  timestamp_column_name: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Name of the column with the ground truths.
                ground_truth_column_name: nil,
                # Name of the column with human feedback.
                human_feedback_column_name: nil,
                # Name of the column with the latencies.
                latency_column_name: nil,
                # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
                # If not provided, the upload timestamp is used.
                timestamp_column_name: nil
              )
              end

              sig do
                override.returns(
                  {
                    ground_truth_column_name: T.nilable(String),
                    human_feedback_column_name: T.nilable(String),
                    inference_id_column_name: T.nilable(String),
                    latency_column_name: T.nilable(String),
                    timestamp_column_name: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::Projects::InferencePipelineCreateResponse::DataBackend::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Project < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project,
                Openlayer::Internal::AnyHash
              )
            end

          # The project name.
          sig { returns(String) }
          attr_accessor :name

          # The task type of the project.
          sig do
            returns(
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol
            )
          end
          attr_accessor :task_type

          # The project description.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The project id.
          sig { returns(String) }
          attr_accessor :id

          # The project creator id.
          sig { returns(T.nilable(String)) }
          attr_accessor :creator_id

          # The project creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The project last updated date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # The number of tests in the development mode of the project.
          sig { returns(Integer) }
          attr_accessor :development_goal_count

          # The total number of tests in the project.
          sig { returns(Integer) }
          attr_accessor :goal_count

          # The number of inference pipelines in the project.
          sig { returns(Integer) }
          attr_accessor :inference_pipeline_count

          # Links to the project.
          sig do
            returns(
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Links
            )
          end
          attr_reader :links

          sig do
            params(
              links:
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Links::OrHash
            ).void
          end
          attr_writer :links

          # The number of tests in the monitoring mode of the project.
          sig { returns(Integer) }
          attr_accessor :monitoring_goal_count

          # The source of the project.
          sig do
            returns(
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::TaggedSymbol
              )
            )
          end
          attr_accessor :source

          # The number of versions (commits) in the project.
          sig { returns(Integer) }
          attr_accessor :version_count

          # The workspace id.
          sig { returns(T.nilable(String)) }
          attr_accessor :workspace_id

          sig do
            returns(
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::GitRepo
              )
            )
          end
          attr_reader :git_repo

          sig do
            params(
              git_repo:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::GitRepo::OrHash
                )
            ).void
          end
          attr_writer :git_repo

          sig do
            params(
              id: String,
              creator_id: T.nilable(String),
              date_created: Time,
              date_updated: Time,
              development_goal_count: Integer,
              goal_count: Integer,
              inference_pipeline_count: Integer,
              links:
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Links::OrHash,
              monitoring_goal_count: Integer,
              name: String,
              source:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::OrSymbol
                ),
              task_type:
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::OrSymbol,
              version_count: Integer,
              workspace_id: T.nilable(String),
              description: T.nilable(String),
              git_repo:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::GitRepo::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The project id.
            id:,
            # The project creator id.
            creator_id:,
            # The project creation date.
            date_created:,
            # The project last updated date.
            date_updated:,
            # The number of tests in the development mode of the project.
            development_goal_count:,
            # The total number of tests in the project.
            goal_count:,
            # The number of inference pipelines in the project.
            inference_pipeline_count:,
            # Links to the project.
            links:,
            # The number of tests in the monitoring mode of the project.
            monitoring_goal_count:,
            # The project name.
            name:,
            # The source of the project.
            source:,
            # The task type of the project.
            task_type:,
            # The number of versions (commits) in the project.
            version_count:,
            # The workspace id.
            workspace_id:,
            # The project description.
            description: nil,
            git_repo: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                creator_id: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                development_goal_count: Integer,
                goal_count: Integer,
                inference_pipeline_count: Integer,
                links:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Links,
                monitoring_goal_count: Integer,
                name: String,
                source:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::TaggedSymbol
                  ),
                task_type:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol,
                version_count: Integer,
                workspace_id: T.nilable(String),
                description: T.nilable(String),
                git_repo:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::GitRepo
                  )
              }
            )
          end
          def to_hash
          end

          class Links < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Links,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :app

            # Links to the project.
            sig { params(app: String).returns(T.attached_class) }
            def self.new(app:)
            end

            sig { override.returns({ app: String }) }
            def to_hash
            end
          end

          # The source of the project.
          module Source
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEB =
              T.let(
                :web,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::TaggedSymbol
              )
            API =
              T.let(
                :api,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::TaggedSymbol
              )
            NULL =
              T.let(
                :null,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::Source::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The task type of the project.
          module TaskType
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LLM_BASE =
              T.let(
                :"llm-base",
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol
              )
            TABULAR_CLASSIFICATION =
              T.let(
                :"tabular-classification",
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol
              )
            TABULAR_REGRESSION =
              T.let(
                :"tabular-regression",
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol
              )
            TEXT_CLASSIFICATION =
              T.let(
                :"text-classification",
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::TaskType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class GitRepo < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Project::GitRepo,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :git_account_id

            sig { returns(Integer) }
            attr_accessor :git_id

            sig { returns(T.nilable(String)) }
            attr_reader :branch

            sig { params(branch: String).void }
            attr_writer :branch

            sig { returns(T.nilable(String)) }
            attr_reader :root_dir

            sig { params(root_dir: String).void }
            attr_writer :root_dir

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Time) }
            attr_accessor :date_connected

            sig { returns(Time) }
            attr_accessor :date_updated

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Boolean) }
            attr_accessor :private

            sig { returns(String) }
            attr_accessor :project_id

            sig { returns(String) }
            attr_accessor :slug

            sig { returns(String) }
            attr_accessor :url

            sig do
              params(
                id: String,
                date_connected: Time,
                date_updated: Time,
                git_account_id: String,
                git_id: Integer,
                name: String,
                private: T::Boolean,
                project_id: String,
                slug: String,
                url: String,
                branch: String,
                root_dir: String
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              date_connected:,
              date_updated:,
              git_account_id:,
              git_id:,
              name:,
              private:,
              project_id:,
              slug:,
              url:,
              branch: nil,
              root_dir: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  date_connected: Time,
                  date_updated: Time,
                  git_account_id: String,
                  git_id: Integer,
                  name: String,
                  private: T::Boolean,
                  project_id: String,
                  slug: String,
                  url: String,
                  branch: String,
                  root_dir: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Workspace < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace,
                Openlayer::Internal::AnyHash
              )
            end

          # The workspace name.
          sig { returns(String) }
          attr_accessor :name

          # The workspace slug.
          sig { returns(String) }
          attr_accessor :slug

          # Whether the workspace only allows SAML authentication.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :saml_only_access

          sig { params(saml_only_access: T::Boolean).void }
          attr_writer :saml_only_access

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :wildcard_domains

          sig { params(wildcard_domains: T::Array[String]).void }
          attr_writer :wildcard_domains

          # The workspace id.
          sig { returns(String) }
          attr_accessor :id

          # The workspace creator id.
          sig { returns(T.nilable(String)) }
          attr_accessor :creator_id

          # The workspace creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The workspace last updated date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # The number of invites in the workspace.
          sig { returns(Integer) }
          attr_accessor :invite_count

          # The number of members in the workspace.
          sig { returns(Integer) }
          attr_accessor :member_count

          # The end date of the current billing period.
          sig { returns(T.nilable(Time)) }
          attr_accessor :period_end_date

          # The start date of the current billing period.
          sig { returns(T.nilable(Time)) }
          attr_accessor :period_start_date

          # The number of projects in the workspace.
          sig { returns(Integer) }
          attr_accessor :project_count

          sig do
            returns(
              Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::MonthlyUsage
                ]
              )
            )
          end
          attr_reader :monthly_usage

          sig do
            params(
              monthly_usage:
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::MonthlyUsage::OrHash
                ]
            ).void
          end
          attr_writer :monthly_usage

          sig do
            params(
              id: String,
              creator_id: T.nilable(String),
              date_created: Time,
              date_updated: Time,
              invite_count: Integer,
              member_count: Integer,
              name: String,
              period_end_date: T.nilable(Time),
              period_start_date: T.nilable(Time),
              project_count: Integer,
              slug: String,
              status:
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::OrSymbol,
              monthly_usage:
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::MonthlyUsage::OrHash
                ],
              saml_only_access: T::Boolean,
              wildcard_domains: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The workspace id.
            id:,
            # The workspace creator id.
            creator_id:,
            # The workspace creation date.
            date_created:,
            # The workspace last updated date.
            date_updated:,
            # The number of invites in the workspace.
            invite_count:,
            # The number of members in the workspace.
            member_count:,
            # The workspace name.
            name:,
            # The end date of the current billing period.
            period_end_date:,
            # The start date of the current billing period.
            period_start_date:,
            # The number of projects in the workspace.
            project_count:,
            # The workspace slug.
            slug:,
            status:,
            monthly_usage: nil,
            # Whether the workspace only allows SAML authentication.
            saml_only_access: nil,
            wildcard_domains: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                creator_id: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                invite_count: Integer,
                member_count: Integer,
                name: String,
                period_end_date: T.nilable(Time),
                period_start_date: T.nilable(Time),
                project_count: Integer,
                slug: String,
                status:
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol,
                invite_code: String,
                monthly_usage:
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::MonthlyUsage
                  ],
                saml_only_access: T::Boolean,
                wildcard_domains: T::Array[String]
              }
            )
          end
          def to_hash
          end

          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            PAST_DUE =
              T.let(
                :past_due,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            UNPAID =
              T.let(
                :unpaid,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            INCOMPLETE =
              T.let(
                :incomplete,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            INCOMPLETE_EXPIRED =
              T.let(
                :incomplete_expired,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            TRIALING =
              T.let(
                :trialing,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :paused,
                Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class MonthlyUsage < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace::MonthlyUsage,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_accessor :execution_time_ms

            sig { returns(T.nilable(Date)) }
            attr_reader :month_year

            sig { params(month_year: Date).void }
            attr_writer :month_year

            sig { returns(T.nilable(Integer)) }
            attr_reader :prediction_count

            sig { params(prediction_count: Integer).void }
            attr_writer :prediction_count

            sig do
              params(
                execution_time_ms: T.nilable(Integer),
                month_year: Date,
                prediction_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              execution_time_ms: nil,
              month_year: nil,
              prediction_count: nil
            )
            end

            sig do
              override.returns(
                {
                  execution_time_ms: T.nilable(Integer),
                  month_year: Date,
                  prediction_count: Integer
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
