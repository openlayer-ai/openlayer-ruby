# frozen_string_literal: true

module Openlayer
  module Resources
    class BackgroundTasks
      # Retrieve a background task's status, progress and results.
      #
      # Endpoints that cannot answer within one request queue a task and hand back its
      # id -- for example `POST /frameworks/{frameworkId}/export`. Poll this endpoint
      # until `complete` is `true`, then read what the task produced from `outputs`.
      #
      # @overload retrieve(task_id, request_options: {})
      #
      # @param task_id [String] The background task id.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::BackgroundTaskRetrieveResponse]
      #
      # @see Openlayer::Models::BackgroundTaskRetrieveParams
      def retrieve(task_id, params = {})
        @client.request(
          method: :get,
          path: ["background-tasks/%1$s", task_id],
          model: Openlayer::Models::BackgroundTaskRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
