# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleResultCreateEvidenceResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::RuleResultCreateEvidenceResponse,
              Openlayer::Internal::AnyHash
            )
          end

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

        # The evidence id.
        sig { returns(String) }
        attr_accessor :id

        # The user who attached the evidence.
        sig { returns(T.nilable(String)) }
        attr_accessor :creator_id

        # The creation date.
        sig { returns(Time) }
        attr_accessor :date_created

        # The last update date.
        sig { returns(Time) }
        attr_accessor :date_updated

        sig do
          params(
            id: String,
            creator_id: T.nilable(String),
            date_created: Time,
            date_updated: Time,
            description: T.nilable(String),
            name: T.nilable(String),
            storage_uri: T.nilable(String),
            text: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The evidence id.
          id:,
          # The user who attached the evidence.
          creator_id:,
          # The creation date.
          date_created:,
          # The last update date.
          date_updated:,
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
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              creator_id: T.nilable(String),
              date_created: Time,
              date_updated: Time,
              description: T.nilable(String),
              name: T.nilable(String),
              storage_uri: T.nilable(String),
              text: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
