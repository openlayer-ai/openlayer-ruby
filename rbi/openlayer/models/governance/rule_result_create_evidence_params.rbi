# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleResultCreateEvidenceParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleResultCreateEvidenceParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :rule_result_id

        # A description of what the evidence shows.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The evidence name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Where the uploaded file is stored. Set when the rule's `evidenceType` is
        # `document`.
        sig { returns(T.nilable(String)) }
        attr_accessor :storage_uri

        # The evidence text. Set when the rule's `evidenceType` is `text`.
        sig { returns(T.nilable(String)) }
        attr_accessor :text

        # A link to the evidence. Set when the rule's `evidenceType` is `url`.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig do
          params(
            rule_result_id: String,
            description: T.nilable(String),
            name: T.nilable(String),
            storage_uri: T.nilable(String),
            text: T.nilable(String),
            url: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          rule_result_id:,
          # A description of what the evidence shows.
          description: nil,
          # The evidence name.
          name: nil,
          # Where the uploaded file is stored. Set when the rule's `evidenceType` is
          # `document`.
          storage_uri: nil,
          # The evidence text. Set when the rule's `evidenceType` is `text`.
          text: nil,
          # A link to the evidence. Set when the rule's `evidenceType` is `url`.
          url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              rule_result_id: String,
              description: T.nilable(String),
              name: T.nilable(String),
              storage_uri: T.nilable(String),
              text: T.nilable(String),
              url: T.nilable(String),
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
