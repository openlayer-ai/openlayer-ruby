# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#retrieve_users
    class InferencePipelineRetrieveUsersResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute items
      #   Array of user aggregation data
      #
      #   @return [Array<Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item>]
      required :items,
               -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item] }

      # @!method initialize(items:)
      #   @param items [Array<Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item>] Array of user aggregation data

      class Item < Openlayer::Internal::Type::BaseModel
        # @!attribute id
        #   The unique user identifier
        #
        #   @return [String]
        required :id, String

        # @!attribute cost
        #   Total cost for this user
        #
        #   @return [Float]
        required :cost, Float

        # @!attribute date_of_first_record
        #   Timestamp of the user's first event/trace
        #
        #   @return [Time]
        required :date_of_first_record, Time, api_name: :dateOfFirstRecord

        # @!attribute date_of_last_record
        #   Timestamp of the user's last event/trace
        #
        #   @return [Time]
        required :date_of_last_record, Time, api_name: :dateOfLastRecord

        # @!attribute records
        #   Total number of traces/rows for this user
        #
        #   @return [Integer]
        required :records, Integer

        # @!attribute sessions
        #   Count of unique sessions for this user
        #
        #   @return [Integer]
        required :sessions, Integer

        # @!attribute tokens
        #   Total token count for this user
        #
        #   @return [Float]
        required :tokens, Float

        # @!method initialize(id:, cost:, date_of_first_record:, date_of_last_record:, records:, sessions:, tokens:)
        #   @param id [String] The unique user identifier
        #
        #   @param cost [Float] Total cost for this user
        #
        #   @param date_of_first_record [Time] Timestamp of the user's first event/trace
        #
        #   @param date_of_last_record [Time] Timestamp of the user's last event/trace
        #
        #   @param records [Integer] Total number of traces/rows for this user
        #
        #   @param sessions [Integer] Count of unique sessions for this user
        #
        #   @param tokens [Float] Total token count for this user
      end
    end
  end
end
