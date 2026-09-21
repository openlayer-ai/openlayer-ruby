# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkExportResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::FrameworkExportResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # The background task id, for `GET /background-tasks/{taskId}`.
        sig { returns(String) }
        attr_accessor :task_result_id

        # The path to poll for this export's status and result. Already `/v1`-prefixed, so
        # it is relative to the API host rather than to the `/v1` base url -- or just pass
        # `taskResultId` to `GET /background-tasks/{taskId}`.
        sig { returns(String) }
        attr_accessor :task_result_url

        sig do
          params(task_result_id: String, task_result_url: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The background task id, for `GET /background-tasks/{taskId}`.
          task_result_id:,
          # The path to poll for this export's status and result. Already `/v1`-prefixed, so
          # it is relative to the API host rather than to the `/v1` base url -- or just pass
          # `taskResultId` to `GET /background-tasks/{taskId}`.
          task_result_url:
        )
        end

        sig do
          override.returns({ task_result_id: String, task_result_url: String })
        end
        def to_hash
        end
      end
    end
  end
end
