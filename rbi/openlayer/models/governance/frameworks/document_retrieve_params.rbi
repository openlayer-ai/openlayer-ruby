# typed: strong

module Openlayer
  module Models
    module Governance
      module Frameworks
        class DocumentRetrieveParams < Openlayer::Internal::Type::BaseModel
          extend Openlayer::Internal::Type::RequestParameters::Converter
          include Openlayer::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::Frameworks::DocumentRetrieveParams,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :framework_id

          sig { returns(String) }
          attr_accessor :document_id

          sig do
            params(
              framework_id: String,
              document_id: String,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(framework_id:, document_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                framework_id: String,
                document_id: String,
                request_options: Openlayer::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
