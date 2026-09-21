# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Rules#update
      class RuleUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute rule_id
        #
        #   @return [String]
        required :rule_id, String

        # @!attribute assignee_id
        #   The user responsible for satisfying the rule.
        #
        #   @return [String, nil]
        optional :assignee_id, String, api_name: :assigneeId, nil?: true

        # @!attribute deactivated
        #   Whether the rule is excluded from compliance calculations.
        #
        #   @return [Boolean, nil]
        optional :deactivated, Openlayer::Internal::Type::Boolean

        # @!attribute description
        #   What the rule requires.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #   The rule name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute renewal_cadence_days
        #   How often evidence must be renewed, in days. Once evidence is older than this,
        #   the rule result becomes `due_soon` and then `failing`.
        #
        #   @return [Integer, nil]
        optional :renewal_cadence_days, Integer, api_name: :renewalCadenceDays, nil?: true

        # @!attribute tag_ids
        #   The ids of the rule tags to associate with the rule. Replaces the rule's tags.
        #   Read them back from `tags`, and list the tags available in the workspace with
        #   `GET /workspaces/{workspaceId}/rule-tags`.
        #
        #   @return [Array<String>, nil]
        optional :tag_ids, Openlayer::Internal::Type::ArrayOf[String], api_name: :tagIds, nil?: true

        # @!method initialize(rule_id:, assignee_id: nil, deactivated: nil, description: nil, name: nil, renewal_cadence_days: nil, tag_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleUpdateParams} for more details.
        #
        #   @param rule_id [String]
        #
        #   @param assignee_id [String, nil] The user responsible for satisfying the rule.
        #
        #   @param deactivated [Boolean] Whether the rule is excluded from compliance calculations.
        #
        #   @param description [String, nil] What the rule requires.
        #
        #   @param name [String] The rule name.
        #
        #   @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t
        #
        #   @param tag_ids [Array<String>, nil] The ids of the rule tags to associate with the rule. Replaces the rule's tags. R
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
