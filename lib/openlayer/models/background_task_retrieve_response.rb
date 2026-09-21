# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::BackgroundTasks#retrieve
    class BackgroundTaskRetrieveResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute complete
      #   Whether the task has finished. Check this before reading `outputs`.
      #
      #   @return [Boolean]
      required :complete, Openlayer::Internal::Type::Boolean

      # @!attribute progress
      #   How far along the task is, from 0 to 100.
      #
      #   @return [Float]
      required :progress, Float

      # @!attribute error
      #   Why the task failed, or `null` if it has not failed.
      #
      #   @return [String, nil]
      optional :error, String, nil?: true

      # @!attribute outputs
      #   Whatever the task produced, keyed by name. `null` until the task completes. A
      #   framework export returns `storageUri` -- pass it to `GET /storage/presigned-url`
      #   to download the archive -- along with `filename`, `controlCount`,
      #   `evidenceCount` and `missingEvidenceCount`.
      #
      #   @return [Object, nil]
      optional :outputs, Openlayer::Internal::Type::Unknown, nil?: true

      response_only do
        # @!attribute id
        #   The background task id.
        #
        #   @return [String]
        required :id, String

        # @!attribute date_created
        #   When the task was queued.
        #
        #   @return [Time]
        required :date_created, Time, api_name: :dateCreated

        # @!attribute date_updated
        #   When the task last reported progress.
        #
        #   @return [Time]
        required :date_updated, Time, api_name: :dateUpdated

        # @!attribute name
        #   The task's internal name, including the arguments it was queued with.
        #
        #   @return [String]
        required :name, String
      end

      # @!method initialize(id:, complete:, date_created:, date_updated:, name:, progress:, error: nil, outputs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Openlayer::Models::BackgroundTaskRetrieveResponse} for more details.
      #
      #   @param id [String] The background task id.
      #
      #   @param complete [Boolean] Whether the task has finished. Check this before reading `outputs`.
      #
      #   @param date_created [Time] When the task was queued.
      #
      #   @param date_updated [Time] When the task last reported progress.
      #
      #   @param name [String] The task's internal name, including the arguments it was queued with.
      #
      #   @param progress [Float] How far along the task is, from 0 to 100.
      #
      #   @param error [String, nil] Why the task failed, or `null` if it has not failed.
      #
      #   @param outputs [Object, nil] Whatever the task produced, keyed by name. `null` until the task completes. A fr
    end
  end
end
