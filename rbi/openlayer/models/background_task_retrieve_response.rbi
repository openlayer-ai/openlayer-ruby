# typed: strong

module Openlayer
  module Models
    class BackgroundTaskRetrieveResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::BackgroundTaskRetrieveResponse,
            Openlayer::Internal::AnyHash
          )
        end

      # Whether the task has finished. Check this before reading `outputs`.
      sig { returns(T::Boolean) }
      attr_accessor :complete

      # How far along the task is, from 0 to 100.
      sig { returns(Float) }
      attr_accessor :progress

      # Why the task failed, or `null` if it has not failed.
      sig { returns(T.nilable(String)) }
      attr_accessor :error

      # Whatever the task produced, keyed by name. `null` until the task completes. A
      # framework export returns `storageUri` -- pass it to `GET /storage/presigned-url`
      # to download the archive -- along with `filename`, `controlCount`,
      # `evidenceCount` and `missingEvidenceCount`.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :outputs

      # The background task id.
      sig { returns(String) }
      attr_accessor :id

      # When the task was queued.
      sig { returns(Time) }
      attr_accessor :date_created

      # When the task last reported progress.
      sig { returns(Time) }
      attr_accessor :date_updated

      # The task's internal name, including the arguments it was queued with.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          id: String,
          complete: T::Boolean,
          date_created: Time,
          date_updated: Time,
          name: String,
          progress: Float,
          error: T.nilable(String),
          outputs: T.nilable(T.anything)
        ).returns(T.attached_class)
      end
      def self.new(
        # The background task id.
        id:,
        # Whether the task has finished. Check this before reading `outputs`.
        complete:,
        # When the task was queued.
        date_created:,
        # When the task last reported progress.
        date_updated:,
        # The task's internal name, including the arguments it was queued with.
        name:,
        # How far along the task is, from 0 to 100.
        progress:,
        # Why the task failed, or `null` if it has not failed.
        error: nil,
        # Whatever the task produced, keyed by name. `null` until the task completes. A
        # framework export returns `storageUri` -- pass it to `GET /storage/presigned-url`
        # to download the archive -- along with `filename`, `controlCount`,
        # `evidenceCount` and `missingEvidenceCount`.
        outputs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            complete: T::Boolean,
            date_created: Time,
            date_updated: Time,
            name: String,
            progress: Float,
            error: T.nilable(String),
            outputs: T.nilable(T.anything)
          }
        )
      end
      def to_hash
      end
    end
  end
end
