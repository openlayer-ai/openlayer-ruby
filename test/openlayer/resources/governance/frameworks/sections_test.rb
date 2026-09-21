# frozen_string_literal: true

require_relative "../../../test_helper"

class Openlayer::Test::Resources::Governance::Frameworks::SectionsTest < Openlayer::Test::ResourceTest
  def test_list_rules_required_params
    response =
      @openlayer.governance.frameworks.sections.list_rules(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        framework_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::Governance::Frameworks::SectionListRulesResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::SectionListRulesResponse::Item])
      }
    end
  end
end
