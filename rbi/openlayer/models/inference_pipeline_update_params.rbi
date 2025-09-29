# typed: strong

module Openlayer
  module Models
    class InferencePipelineUpdateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Openlayer::InferencePipelineUpdateParams,
            Openlayer::Internal::AnyHash
          )
        end

      # The inference pipeline description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The inference pipeline name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The storage uri of your reference dataset. We recommend using the Python SDK or
      # the UI to handle your reference dataset updates.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_dataset_uri

      sig do
        params(
          description: T.nilable(String),
          name: String,
          reference_dataset_uri: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The inference pipeline description.
        description: nil,
        # The inference pipeline name.
        name: nil,
        # The storage uri of your reference dataset. We recommend using the Python SDK or
        # the UI to handle your reference dataset updates.
        reference_dataset_uri: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            name: String,
            reference_dataset_uri: T.nilable(String),
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
