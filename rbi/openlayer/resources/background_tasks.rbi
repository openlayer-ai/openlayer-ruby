# typed: strong

module Openlayer
  module Resources
    class BackgroundTasks
      # Retrieve a background task's status, progress and results.
      #
      # Endpoints that cannot answer within one request queue a task and hand back its
      # id -- for example `POST /frameworks/{frameworkId}/export`. Poll this endpoint
      # until `complete` is `true`, then read what the task produced from `outputs`.
      sig do
        params(
          task_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::BackgroundTaskRetrieveResponse)
      end
      def retrieve(
        # The background task id.
        task_id,
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
