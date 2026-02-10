# typed: strong

module Openlayer
  module Models
    class InferencePipelineRetrieveUsersResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::InferencePipelineRetrieveUsersResponse,
            Openlayer::Internal::AnyHash
          )
        end

      # Array of user aggregation data
      sig do
        returns(
          T::Array[
            Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item
          ]
        )
      end
      attr_accessor :items

      sig do
        params(
          items:
            T::Array[
              Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of user aggregation data
        items:
      )
      end

      sig do
        override.returns(
          {
            items:
              T::Array[
                Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item
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
              Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item,
              Openlayer::Internal::AnyHash
            )
          end

        # The unique user identifier
        sig { returns(String) }
        attr_accessor :id

        # Total cost for this user
        sig { returns(Float) }
        attr_accessor :cost

        # Timestamp of the user's first event/trace
        sig { returns(Time) }
        attr_accessor :date_of_first_record

        # Timestamp of the user's last event/trace
        sig { returns(Time) }
        attr_accessor :date_of_last_record

        # Total number of traces/rows for this user
        sig { returns(Integer) }
        attr_accessor :records

        # Count of unique sessions for this user
        sig { returns(Integer) }
        attr_accessor :sessions

        # Total token count for this user
        sig { returns(Float) }
        attr_accessor :tokens

        sig do
          params(
            id: String,
            cost: Float,
            date_of_first_record: Time,
            date_of_last_record: Time,
            records: Integer,
            sessions: Integer,
            tokens: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique user identifier
          id:,
          # Total cost for this user
          cost:,
          # Timestamp of the user's first event/trace
          date_of_first_record:,
          # Timestamp of the user's last event/trace
          date_of_last_record:,
          # Total number of traces/rows for this user
          records:,
          # Count of unique sessions for this user
          sessions:,
          # Total token count for this user
          tokens:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cost: Float,
              date_of_first_record: Time,
              date_of_last_record: Time,
              records: Integer,
              sessions: Integer,
              tokens: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
