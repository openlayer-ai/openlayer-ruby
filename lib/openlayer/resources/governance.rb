# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      # @return [Openlayer::Resources::Governance::Frameworks]
      attr_reader :frameworks

      # @return [Openlayer::Resources::Governance::Rules]
      attr_reader :rules

      # @return [Openlayer::Resources::Governance::RuleResults]
      attr_reader :rule_results

      # @return [Openlayer::Resources::Governance::RuleStats]
      attr_reader :rule_stats

      # @return [Openlayer::Resources::Governance::RuleTags]
      attr_reader :rule_tags

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
        @frameworks = Openlayer::Resources::Governance::Frameworks.new(client: client)
        @rules = Openlayer::Resources::Governance::Rules.new(client: client)
        @rule_results = Openlayer::Resources::Governance::RuleResults.new(client: client)
        @rule_stats = Openlayer::Resources::Governance::RuleStats.new(client: client)
        @rule_tags = Openlayer::Resources::Governance::RuleTags.new(client: client)
      end
    end
  end
end
