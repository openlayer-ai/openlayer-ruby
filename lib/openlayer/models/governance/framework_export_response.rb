# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#export
      class FrameworkExportResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute task_result_id
        #   The background task id, for `GET /background-tasks/{taskId}`.
        #
        #   @return [String]
        required :task_result_id, String, api_name: :taskResultId

        # @!attribute task_result_url
        #   The path to poll for this export's status and result. Already `/v1`-prefixed, so
        #   it is relative to the API host rather than to the `/v1` base url -- or just pass
        #   `taskResultId` to `GET /background-tasks/{taskId}`.
        #
        #   @return [String]
        required :task_result_url, String, api_name: :taskResultUrl

        # @!method initialize(task_result_id:, task_result_url:)
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::FrameworkExportResponse} for more details.
        #
        #   @param task_result_id [String] The background task id, for `GET /background-tasks/{taskId}`.
        #
        #   @param task_result_url [String] The path to poll for this export's status and result. Already `/v1`-prefixed, so
      end
    end
  end
end
