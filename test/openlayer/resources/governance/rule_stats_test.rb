# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Governance::RuleStatsTest < Openlayer::Test::ResourceTest
  def test_retrieve
    response = @openlayer.governance.rule_stats.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleStatRetrieveResponse
    end

    assert_pattern do
      response => {
        rule_results: Openlayer::Models::Governance::RuleStatRetrieveResponse::RuleResults,
        rules: Openlayer::Models::Governance::RuleStatRetrieveResponse::Rules
      }
    end
  end
end
