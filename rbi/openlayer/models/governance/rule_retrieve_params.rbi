# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleRetrieveParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :rule_id

        sig do
          params(
            rule_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(rule_id:, request_options: {})
        end

        sig do
          override.returns(
            { rule_id: String, request_options: Openlayer::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
