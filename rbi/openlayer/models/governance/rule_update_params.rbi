# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleUpdateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :rule_id

        # The user responsible for satisfying the rule.
        sig { returns(T.nilable(String)) }
        attr_accessor :assignee_id

        # Whether the rule is excluded from compliance calculations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deactivated

        sig { params(deactivated: T::Boolean).void }
        attr_writer :deactivated

        # What the rule requires.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The rule name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # How often evidence must be renewed, in days. Once evidence is older than this,
        # the rule result becomes `due_soon` and then `failing`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :renewal_cadence_days

        # The ids of the rule tags to associate with the rule. Replaces the rule's tags.
        # Read them back from `tags`, and list the tags available in the workspace with
        # `GET /workspaces/{workspaceId}/rule-tags`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tag_ids

        sig do
          params(
            rule_id: String,
            assignee_id: T.nilable(String),
            deactivated: T::Boolean,
            description: T.nilable(String),
            name: String,
            renewal_cadence_days: T.nilable(Integer),
            tag_ids: T.nilable(T::Array[String]),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          rule_id:,
          # The user responsible for satisfying the rule.
          assignee_id: nil,
          # Whether the rule is excluded from compliance calculations.
          deactivated: nil,
          # What the rule requires.
          description: nil,
          # The rule name.
          name: nil,
          # How often evidence must be renewed, in days. Once evidence is older than this,
          # the rule result becomes `due_soon` and then `failing`.
          renewal_cadence_days: nil,
          # The ids of the rule tags to associate with the rule. Replaces the rule's tags.
          # Read them back from `tags`, and list the tags available in the workspace with
          # `GET /workspaces/{workspaceId}/rule-tags`.
          tag_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              rule_id: String,
              assignee_id: T.nilable(String),
              deactivated: T::Boolean,
              description: T.nilable(String),
              name: String,
              renewal_cadence_days: T.nilable(Integer),
              tag_ids: T.nilable(T::Array[String]),
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
