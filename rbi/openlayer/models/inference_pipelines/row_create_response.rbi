# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class RowCreateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::InferencePipelines::RowCreateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Openlayer::Models::InferencePipelines::RowCreateResponse::Item
            ]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::InferencePipelines::RowCreateResponse::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[
                  Openlayer::Models::InferencePipelines::RowCreateResponse::Item
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
                Openlayer::Models::InferencePipelines::RowCreateResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :openlayer_row_id

          sig { params(openlayer_row_id: Integer).returns(T.attached_class) }
          def self.new(openlayer_row_id:)
          end

          sig { override.returns({ openlayer_row_id: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
