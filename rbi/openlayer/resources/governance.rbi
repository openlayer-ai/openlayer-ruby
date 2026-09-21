# typed: strong

module Openlayer
  module Resources
    class Governance
      sig { returns(Openlayer::Resources::Governance::Frameworks) }
      attr_reader :frameworks

      sig { returns(Openlayer::Resources::Governance::Rules) }
      attr_reader :rules

      sig { returns(Openlayer::Resources::Governance::RuleResults) }
      attr_reader :rule_results

      sig { returns(Openlayer::Resources::Governance::RuleStats) }
      attr_reader :rule_stats

      sig { returns(Openlayer::Resources::Governance::RuleTags) }
      attr_reader :rule_tags

      # @api private
      sig { params(client: Openlayer::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
