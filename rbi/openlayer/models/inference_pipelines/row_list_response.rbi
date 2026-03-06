# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class RowListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::InferencePipelines::RowListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Openlayer::Models::InferencePipelines::RowListResponse::Item
            ]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::InferencePipelines::RowListResponse::Item::OrHash
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
                  Openlayer::Models::InferencePipelines::RowListResponse::Item
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
                Openlayer::Models::InferencePipelines::RowListResponse::Item,
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
