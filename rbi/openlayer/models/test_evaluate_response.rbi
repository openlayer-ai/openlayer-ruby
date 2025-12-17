# typed: strong

module Openlayer
  module Models
    class TestEvaluateResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::TestEvaluateResponse,
            Openlayer::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :message

      # Number of inference pipelines the test was queued for evaluation on
      sig { returns(Integer) }
      attr_accessor :pipeline_count

      # The end timestamp you requested (in seconds)
      sig { returns(Integer) }
      attr_accessor :requested_end_timestamp

      # The start timestamp you requested (in seconds)
      sig { returns(Integer) }
      attr_accessor :requested_start_timestamp

      # Array of background task information for each pipeline evaluation
      sig { returns(T::Array[Openlayer::Models::TestEvaluateResponse::Task]) }
      attr_accessor :tasks

      sig do
        params(
          message: String,
          pipeline_count: Integer,
          requested_end_timestamp: Integer,
          requested_start_timestamp: Integer,
          tasks: T::Array[Openlayer::Models::TestEvaluateResponse::Task::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        message:,
        # Number of inference pipelines the test was queued for evaluation on
        pipeline_count:,
        # The end timestamp you requested (in seconds)
        requested_end_timestamp:,
        # The start timestamp you requested (in seconds)
        requested_start_timestamp:,
        # Array of background task information for each pipeline evaluation
        tasks:
      )
      end

      sig do
        override.returns(
          {
            message: String,
            pipeline_count: Integer,
            requested_end_timestamp: Integer,
            requested_start_timestamp: Integer,
            tasks: T::Array[Openlayer::Models::TestEvaluateResponse::Task]
          }
        )
      end
      def to_hash
      end

      class Task < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::TestEvaluateResponse::Task,
              Openlayer::Internal::AnyHash
            )
          end

        # ID of the inference pipeline this task is for
        sig { returns(String) }
        attr_accessor :pipeline_id

        # ID of the background task
        sig { returns(String) }
        attr_accessor :task_result_id

        # URL to check the status of this background task
        sig { returns(String) }
        attr_accessor :task_result_url

        sig do
          params(
            pipeline_id: String,
            task_result_id: String,
            task_result_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the inference pipeline this task is for
          pipeline_id:,
          # ID of the background task
          task_result_id:,
          # URL to check the status of this background task
          task_result_url:
        )
        end

        sig do
          override.returns(
            {
              pipeline_id: String,
              task_result_id: String,
              task_result_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
