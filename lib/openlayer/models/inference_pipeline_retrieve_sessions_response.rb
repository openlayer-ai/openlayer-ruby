# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#retrieve_sessions
    class InferencePipelineRetrieveSessionsResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute items
      #   Array of session aggregation data
      #
      #   @return [Array<Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item>]
      required :items,
               -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item] }

      # @!method initialize(items:)
      #   @param items [Array<Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item>] Array of session aggregation data

      class Item < Openlayer::Internal::Type::BaseModel
        # @!attribute id
        #   The unique session identifier
        #
        #   @return [String]
        required :id, String

        # @!attribute cost
        #   Total cost for the session
        #
        #   @return [Float]
        required :cost, Float

        # @!attribute date_created
        #   Latest/most recent timestamp in the session
        #
        #   @return [Time]
        required :date_created, Time, api_name: :dateCreated

        # @!attribute date_of_first_record
        #   Timestamp of the first request in the session
        #
        #   @return [Time]
        required :date_of_first_record, Time, api_name: :dateOfFirstRecord

        # @!attribute date_of_last_record
        #   Timestamp of the last request in the session
        #
        #   @return [Time]
        required :date_of_last_record, Time, api_name: :dateOfLastRecord

        # @!attribute duration
        #   Duration between first and last request (in milliseconds)
        #
        #   @return [Float]
        required :duration, Float

        # @!attribute first_record
        #   The complete first record in the session
        #
        #   @return [Hash{Symbol=>Object}]
        required :first_record,
                 Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                 api_name: :firstRecord

        # @!attribute last_record
        #   The complete last record in the session
        #
        #   @return [Hash{Symbol=>Object}]
        required :last_record,
                 Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                 api_name: :lastRecord

        # @!attribute latency
        #   Total latency for the session (in milliseconds)
        #
        #   @return [Float]
        required :latency, Float

        # @!attribute records
        #   Total number of records/traces in the session
        #
        #   @return [Integer]
        required :records, Integer

        # @!attribute tokens
        #   Total token count for the session
        #
        #   @return [Float]
        required :tokens, Float

        # @!attribute user_ids
        #   List of unique user IDs that participated in this session
        #
        #   @return [Array<String>]
        required :user_ids, Openlayer::Internal::Type::ArrayOf[String], api_name: :userIds

        # @!method initialize(id:, cost:, date_created:, date_of_first_record:, date_of_last_record:, duration:, first_record:, last_record:, latency:, records:, tokens:, user_ids:)
        #   @param id [String] The unique session identifier
        #
        #   @param cost [Float] Total cost for the session
        #
        #   @param date_created [Time] Latest/most recent timestamp in the session
        #
        #   @param date_of_first_record [Time] Timestamp of the first request in the session
        #
        #   @param date_of_last_record [Time] Timestamp of the last request in the session
        #
        #   @param duration [Float] Duration between first and last request (in milliseconds)
        #
        #   @param first_record [Hash{Symbol=>Object}] The complete first record in the session
        #
        #   @param last_record [Hash{Symbol=>Object}] The complete last record in the session
        #
        #   @param latency [Float] Total latency for the session (in milliseconds)
        #
        #   @param records [Integer] Total number of records/traces in the session
        #
        #   @param tokens [Float] Total token count for the session
        #
        #   @param user_ids [Array<String>] List of unique user IDs that participated in this session
      end
    end
  end
end
