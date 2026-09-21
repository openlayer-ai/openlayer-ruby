# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleResults#update
      class RuleResultUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute rule_result_id
        #
        #   @return [String]
        required :rule_result_id, String

        # @!attribute assignee_id
        #   The user responsible for this result.
        #
        #   @return [String, nil]
        optional :assignee_id, String, api_name: :assigneeId, nil?: true

        # @!attribute blocked_by
        #   Rule results that must pass before this one can be satisfied.
        #
        #   @return [Array<Openlayer::Models::Governance::RuleResultUpdateParams::BlockedBy>, nil]
        optional :blocked_by,
                 -> {
                   Openlayer::Internal::Type::ArrayOf[Openlayer::Governance::RuleResultUpdateParams::BlockedBy]
                 },
                 api_name: :blockedBy

        # @!attribute blocking
        #   Rule results that this one blocks.
        #
        #   @return [Array<Openlayer::Models::Governance::RuleResultUpdateParams::Blocking>, nil]
        optional :blocking,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Governance::RuleResultUpdateParams::Blocking] }

        # @!attribute deactivated
        #   Whether this result is excluded from compliance calculations.
        #
        #   @return [Boolean, nil]
        optional :deactivated, Openlayer::Internal::Type::Boolean

        # @!attribute deactivated_reason
        #   Why the result was excluded.
        #
        #   @return [String, nil]
        optional :deactivated_reason, String, api_name: :deactivatedReason, nil?: true

        # @!method initialize(rule_result_id:, assignee_id: nil, blocked_by: nil, blocking: nil, deactivated: nil, deactivated_reason: nil, request_options: {})
        #   @param rule_result_id [String]
        #
        #   @param assignee_id [String, nil] The user responsible for this result.
        #
        #   @param blocked_by [Array<Openlayer::Models::Governance::RuleResultUpdateParams::BlockedBy>] Rule results that must pass before this one can be satisfied.
        #
        #   @param blocking [Array<Openlayer::Models::Governance::RuleResultUpdateParams::Blocking>] Rule results that this one blocks.
        #
        #   @param deactivated [Boolean] Whether this result is excluded from compliance calculations.
        #
        #   @param deactivated_reason [String, nil] Why the result was excluded.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        class BlockedBy < Openlayer::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute status
          #   The compliance status of the rule for this entity.
          #
          #   @return [Symbol, Openlayer::Models::Governance::RuleResultUpdateParams::BlockedBy::Status, nil]
          optional :status, enum: -> { Openlayer::Governance::RuleResultUpdateParams::BlockedBy::Status }

          # @!method initialize(id: nil, status: nil)
          #   @param id [String]
          #
          #   @param status [Symbol, Openlayer::Models::Governance::RuleResultUpdateParams::BlockedBy::Status] The compliance status of the rule for this entity.

          # The compliance status of the rule for this entity.
          #
          # @see Openlayer::Models::Governance::RuleResultUpdateParams::BlockedBy#status
          module Status
            extend Openlayer::Internal::Type::Enum

            RUNNING = :running
            PASSING = :passing
            FAILING = :failing
            SKIPPED = :skipped
            ERROR = :error
            PENDING = :pending
            DUE_SOON = :due_soon

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Blocking < Openlayer::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute status
          #   The compliance status of the rule for this entity.
          #
          #   @return [Symbol, Openlayer::Models::Governance::RuleResultUpdateParams::Blocking::Status, nil]
          optional :status, enum: -> { Openlayer::Governance::RuleResultUpdateParams::Blocking::Status }

          # @!method initialize(id: nil, status: nil)
          #   @param id [String]
          #
          #   @param status [Symbol, Openlayer::Models::Governance::RuleResultUpdateParams::Blocking::Status] The compliance status of the rule for this entity.

          # The compliance status of the rule for this entity.
          #
          # @see Openlayer::Models::Governance::RuleResultUpdateParams::Blocking#status
          module Status
            extend Openlayer::Internal::Type::Enum

            RUNNING = :running
            PASSING = :passing
            FAILING = :failing
            SKIPPED = :skipped
            ERROR = :error
            PENDING = :pending
            DUE_SOON = :due_soon

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
