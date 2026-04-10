# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class RowRetrieveResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::InferencePipelines::RowRetrieveResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T.anything)) }
        attr_reader :row

        sig { params(row: T.anything).void }
        attr_writer :row

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(row: T.anything, success: T::Boolean).returns(T.attached_class)
        end
        def self.new(row: nil, success: nil)
        end

        sig { override.returns({ row: T.anything, success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
