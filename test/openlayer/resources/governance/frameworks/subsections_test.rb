# frozen_string_literal: true

require_relative "../../../test_helper"

class Openlayer::Test::Resources::Governance::Frameworks::SubsectionsTest < Openlayer::Test::ResourceTest
  def test_list_rules_required_params
    response =
      @openlayer.governance.frameworks.subsections.list_rules(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        framework_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::Governance::Frameworks::SubsectionListRulesResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::SubsectionListRulesResponse::Item])
      }
    end
  end
end
