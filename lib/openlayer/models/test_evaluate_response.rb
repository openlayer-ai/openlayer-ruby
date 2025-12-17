# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Tests#evaluate
    class TestEvaluateResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String]
      required :message, String

      # @!attribute pipeline_count
      #   Number of inference pipelines the test was queued for evaluation on
      #
      #   @return [Integer]
      required :pipeline_count, Integer, api_name: :pipelineCount

      # @!attribute requested_end_timestamp
      #   The end timestamp you requested (in seconds)
      #
      #   @return [Integer]
      required :requested_end_timestamp, Integer, api_name: :requestedEndTimestamp

      # @!attribute requested_start_timestamp
      #   The start timestamp you requested (in seconds)
      #
      #   @return [Integer]
      required :requested_start_timestamp, Integer, api_name: :requestedStartTimestamp

      # @!attribute tasks
      #   Array of background task information for each pipeline evaluation
      #
      #   @return [Array<Openlayer::Models::TestEvaluateResponse::Task>]
      required :tasks, -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::TestEvaluateResponse::Task] }

      # @!method initialize(message:, pipeline_count:, requested_end_timestamp:, requested_start_timestamp:, tasks:)
      #   @param message [String]
      #
      #   @param pipeline_count [Integer] Number of inference pipelines the test was queued for evaluation on
      #
      #   @param requested_end_timestamp [Integer] The end timestamp you requested (in seconds)
      #
      #   @param requested_start_timestamp [Integer] The start timestamp you requested (in seconds)
      #
      #   @param tasks [Array<Openlayer::Models::TestEvaluateResponse::Task>] Array of background task information for each pipeline evaluation

      class Task < Openlayer::Internal::Type::BaseModel
        # @!attribute pipeline_id
        #   ID of the inference pipeline this task is for
        #
        #   @return [String]
        required :pipeline_id, String, api_name: :pipelineId

        # @!attribute task_result_id
        #   ID of the background task
        #
        #   @return [String]
        required :task_result_id, String, api_name: :taskResultId

        # @!attribute task_result_url
        #   URL to check the status of this background task
        #
        #   @return [String]
        required :task_result_url, String, api_name: :taskResultUrl

        # @!method initialize(pipeline_id:, task_result_id:, task_result_url:)
        #   @param pipeline_id [String] ID of the inference pipeline this task is for
        #
        #   @param task_result_id [String] ID of the background task
        #
        #   @param task_result_url [String] URL to check the status of this background task
      end
    end
  end
end
