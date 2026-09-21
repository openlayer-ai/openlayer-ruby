# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleResults#retrieve
      class RuleResultRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute rule_result_id
        #
        #   @return [String]
        required :rule_result_id, String

        # @!method initialize(rule_result_id:, request_options: {})
        #   @param rule_result_id [String]
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
