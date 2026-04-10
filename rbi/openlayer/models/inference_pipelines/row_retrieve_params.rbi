# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class RowRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::InferencePipelines::RowRetrieveParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inference_pipeline_id

        sig { returns(String) }
        attr_accessor :inference_id

        sig do
          params(
            inference_pipeline_id: String,
            inference_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(inference_pipeline_id:, inference_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              inference_pipeline_id: String,
              inference_id: String,
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
