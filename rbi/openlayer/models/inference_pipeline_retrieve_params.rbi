# typed: strong

module Openlayer
  module Models
    class InferencePipelineRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Openlayer::InferencePipelineRetrieveParams,
            Openlayer::Internal::AnyHash
          )
        end

      # Expand specific nested objects.
      sig do
        returns(
          T.nilable(
            T::Array[
              Openlayer::InferencePipelineRetrieveParams::Expand::OrSymbol
            ]
          )
        )
      end
      attr_reader :expand

      sig do
        params(
          expand:
            T::Array[
              Openlayer::InferencePipelineRetrieveParams::Expand::OrSymbol
            ]
        ).void
      end
      attr_writer :expand

      sig do
        params(
          expand:
            T::Array[
              Openlayer::InferencePipelineRetrieveParams::Expand::OrSymbol
            ],
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Expand specific nested objects.
        expand: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            expand:
              T::Array[
                Openlayer::InferencePipelineRetrieveParams::Expand::OrSymbol
              ],
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Expand
        extend Openlayer::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Openlayer::InferencePipelineRetrieveParams::Expand)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROJECT =
          T.let(
            :project,
            Openlayer::InferencePipelineRetrieveParams::Expand::TaggedSymbol
          )
        WORKSPACE =
          T.let(
            :workspace,
            Openlayer::InferencePipelineRetrieveParams::Expand::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Openlayer::InferencePipelineRetrieveParams::Expand::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
