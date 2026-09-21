# frozen_string_literal: true

require_relative "../../../test_helper"

class Openlayer::Test::Resources::Governance::Frameworks::DocumentsTest < Openlayer::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @openlayer.governance.frameworks.documents.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        framework_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::Governance::Frameworks::DocumentRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        framework_id: String,
        title: String,
        sections: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentRetrieveResponse::Section]) | nil
      }
    end
  end

  def test_list
    response = @openlayer.governance.frameworks.documents.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::Frameworks::DocumentListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item])
      }
    end
  end
end
