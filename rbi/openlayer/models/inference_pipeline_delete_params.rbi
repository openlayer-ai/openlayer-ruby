# typed: strong

module Openlayer
  module Models
    class InferencePipelineDeleteParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Openlayer::InferencePipelineDeleteParams,
            Openlayer::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Openlayer::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Openlayer::RequestOptions }) }
      def to_hash
      end
    end
  end
end
