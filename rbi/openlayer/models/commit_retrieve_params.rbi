# typed: strong

module Openlayer
  module Models
    class CommitRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::CommitRetrieveParams, Openlayer::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :project_version_id

      sig do
        params(
          project_version_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(project_version_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            project_version_id: String,
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
