# typed: strong

module Openlayer
  module Models
    class WorkspaceRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Openlayer::WorkspaceRetrieveParams,
            Openlayer::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :workspace_id

      sig do
        params(
          workspace_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(workspace_id:, request_options: {})
      end

      sig do
        override.returns(
          { workspace_id: String, request_options: Openlayer::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
