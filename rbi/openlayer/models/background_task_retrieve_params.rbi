# typed: strong

module Openlayer
  module Models
    class BackgroundTaskRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Openlayer::BackgroundTaskRetrieveParams,
            Openlayer::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :task_id

      sig do
        params(
          task_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(task_id:, request_options: {})
      end

      sig do
        override.returns(
          { task_id: String, request_options: Openlayer::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
