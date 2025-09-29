# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class DataStreamResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::InferencePipelines::DataStreamResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            Openlayer::Models::InferencePipelines::DataStreamResponse::Success::TaggedBoolean
          )
        end
        attr_accessor :success

        sig do
          params(
            success:
              Openlayer::Models::InferencePipelines::DataStreamResponse::Success::OrBoolean
          ).returns(T.attached_class)
        end
        def self.new(success:)
        end

        sig do
          override.returns(
            {
              success:
                Openlayer::Models::InferencePipelines::DataStreamResponse::Success::TaggedBoolean
            }
          )
        end
        def to_hash
        end

        module Success
          extend Openlayer::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Openlayer::Models::InferencePipelines::DataStreamResponse::Success
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Openlayer::Models::InferencePipelines::DataStreamResponse::Success::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::InferencePipelines::DataStreamResponse::Success::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
