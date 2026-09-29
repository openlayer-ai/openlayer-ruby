# typed: strong

module Openlayer
  module Resources
    class BackgroundTasks
      # Retrieve a background task's status and outputs.
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
