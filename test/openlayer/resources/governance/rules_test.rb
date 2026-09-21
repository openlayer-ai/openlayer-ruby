# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Governance::RulesTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response =
      @openlayer.governance.rules.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        name: "Monitoring enabled",
        scope: :project,
        type: :platform
      )

    assert_pattern do
      response => Openlayer::Models::Governance::RuleCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        name: String,
        scope: Openlayer::Models::Governance::RuleCreateResponse::Scope,
        type: Openlayer::Models::Governance::RuleCreateResponse::Type,
        workspace_id: String,
        assignee_id: String | nil,
        automation_params: ^(Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown]) | nil,
        automation_type: String | nil,
        deactivated: Openlayer::Internal::Type::Boolean | nil,
        description: String | nil,
        evidence_type: Openlayer::Models::Governance::RuleCreateResponse::EvidenceType | nil,
        frameworks: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleCreateResponse::Framework]) | nil,
        immutable: Openlayer::Internal::Type::Boolean | nil,
        renewal_cadence_days: Integer | nil,
        results: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleCreateResponse::Result]) | nil,
        results_summary: Openlayer::Models::Governance::RuleCreateResponse::ResultsSummary | nil,
        tags: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleCreateResponse::Tag]) | nil
      }
    end
  end

  def test_retrieve
    response = @openlayer.governance.rules.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        name: String,
        scope: Openlayer::Models::Governance::RuleRetrieveResponse::Scope,
        type: Openlayer::Models::Governance::RuleRetrieveResponse::Type,
        workspace_id: String,
        assignee_id: String | nil,
        automation_params: ^(Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown]) | nil,
        automation_type: String | nil,
        deactivated: Openlayer::Internal::Type::Boolean | nil,
        description: String | nil,
        evidence_type: Openlayer::Models::Governance::RuleRetrieveResponse::EvidenceType | nil,
        frameworks: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Framework]) | nil,
        immutable: Openlayer::Internal::Type::Boolean | nil,
        renewal_cadence_days: Integer | nil,
        results: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Result]) | nil,
        results_summary: Openlayer::Models::Governance::RuleRetrieveResponse::ResultsSummary | nil,
        tags: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleRetrieveResponse::Tag]) | nil
      }
    end
  end

  def test_update
    response = @openlayer.governance.rules.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        name: String,
        scope: Openlayer::Models::Governance::RuleUpdateResponse::Scope,
        type: Openlayer::Models::Governance::RuleUpdateResponse::Type,
        workspace_id: String,
        assignee_id: String | nil,
        automation_params: ^(Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown]) | nil,
        automation_type: String | nil,
        deactivated: Openlayer::Internal::Type::Boolean | nil,
        description: String | nil,
        evidence_type: Openlayer::Models::Governance::RuleUpdateResponse::EvidenceType | nil,
        frameworks: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleUpdateResponse::Framework]) | nil,
        immutable: Openlayer::Internal::Type::Boolean | nil,
        renewal_cadence_days: Integer | nil,
        results: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleUpdateResponse::Result]) | nil,
        results_summary: Openlayer::Models::Governance::RuleUpdateResponse::ResultsSummary | nil,
        tags: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleUpdateResponse::Tag]) | nil
      }
    end
  end

  def test_list
    response = @openlayer.governance.rules.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleListResponse::Item])
      }
    end
  end

  def test_delete
    response = @openlayer.governance.rules.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
