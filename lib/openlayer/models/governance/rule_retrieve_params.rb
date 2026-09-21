# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Rules#retrieve
      class RuleRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute rule_id
        #
        #   @return [String]
        required :rule_id, String

        # @!method initialize(rule_id:, request_options: {})
        #   @param rule_id [String]
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
