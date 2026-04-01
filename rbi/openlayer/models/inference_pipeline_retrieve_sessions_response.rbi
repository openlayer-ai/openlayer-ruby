# typed: strong

module Openlayer
  module Models
    class InferencePipelineRetrieveSessionsResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::InferencePipelineRetrieveSessionsResponse,
            Openlayer::Internal::AnyHash
          )
        end

      # Array of session aggregation data
      sig do
        returns(
          T::Array[
            Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item
          ]
        )
      end
      attr_accessor :items

      sig do
        params(
          items:
            T::Array[
              Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of session aggregation data
        items:
      )
      end

      sig do
        override.returns(
          {
            items:
              T::Array[
                Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item
              ]
          }
        )
      end
      def to_hash
      end

      class Item < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::InferencePipelineRetrieveSessionsResponse::Item,
              Openlayer::Internal::AnyHash
            )
          end

        # The unique session identifier
        sig { returns(String) }
        attr_accessor :id

        # Total cost for the session
        sig { returns(Float) }
        attr_accessor :cost

        # Latest/most recent timestamp in the session
        sig { returns(Time) }
        attr_accessor :date_created

        # Timestamp of the first request in the session
        sig { returns(Time) }
        attr_accessor :date_of_first_record

        # Timestamp of the last request in the session
        sig { returns(Time) }
        attr_accessor :date_of_last_record

        # Duration between first and last request (in milliseconds)
        sig { returns(Float) }
        attr_accessor :duration

        # The complete first record in the session
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :first_record

        # The complete last record in the session
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :last_record

        # Total latency for the session (in milliseconds)
        sig { returns(Float) }
        attr_accessor :latency

        # Total number of records/traces in the session
        sig { returns(Integer) }
        attr_accessor :records

        # Total token count for the session
        sig { returns(Float) }
        attr_accessor :tokens

        # List of unique user IDs that participated in this session
        sig { returns(T::Array[String]) }
        attr_accessor :user_ids

        sig do
          params(
            id: String,
            cost: Float,
            date_created: Time,
            date_of_first_record: Time,
            date_of_last_record: Time,
            duration: Float,
            first_record: T::Hash[Symbol, T.anything],
            last_record: T::Hash[Symbol, T.anything],
            latency: Float,
            records: Integer,
            tokens: Float,
            user_ids: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique session identifier
          id:,
          # Total cost for the session
          cost:,
          # Latest/most recent timestamp in the session
          date_created:,
          # Timestamp of the first request in the session
          date_of_first_record:,
          # Timestamp of the last request in the session
          date_of_last_record:,
          # Duration between first and last request (in milliseconds)
          duration:,
          # The complete first record in the session
          first_record:,
          # The complete last record in the session
          last_record:,
          # Total latency for the session (in milliseconds)
          latency:,
          # Total number of records/traces in the session
          records:,
          # Total token count for the session
          tokens:,
          # List of unique user IDs that participated in this session
          user_ids:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cost: Float,
              date_created: Time,
              date_of_first_record: Time,
              date_of_last_record: Time,
              duration: Float,
              first_record: T::Hash[Symbol, T.anything],
              last_record: T::Hash[Symbol, T.anything],
              latency: Float,
              records: Integer,
              tokens: Float,
              user_ids: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
