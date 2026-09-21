# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Governance::RuleResultsTest < Openlayer::Test::ResourceTest
  def test_retrieve
    response = @openlayer.governance.rule_results.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleResultRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        deactivated: Openlayer::Internal::Type::Boolean,
        rule_id: String,
        status: Openlayer::Models::Governance::RuleResultRetrieveResponse::Status,
        workspace_id: String,
        assignee_id: String | nil,
        blocked_by: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultRetrieveResponse::BlockedBy]) | nil,
        blocking: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultRetrieveResponse::Blocking]) | nil,
        date_last_evaluated: Time | nil,
        date_of_latest_evidence: Time | nil,
        date_of_next_evaluation: Time | nil,
        date_of_renewal: Time | nil,
        deactivated_reason: String | nil,
        project_id: String | nil,
        status_message: String | nil
      }
    end
  end

  def test_update
    response = @openlayer.governance.rule_results.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleResultUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        deactivated: Openlayer::Internal::Type::Boolean,
        rule_id: String,
        status: Openlayer::Models::Governance::RuleResultUpdateResponse::Status,
        workspace_id: String,
        assignee_id: String | nil,
        blocked_by: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultUpdateResponse::BlockedBy]) | nil,
        blocking: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultUpdateResponse::Blocking]) | nil,
        date_last_evaluated: Time | nil,
        date_of_latest_evidence: Time | nil,
        date_of_next_evaluation: Time | nil,
        date_of_renewal: Time | nil,
        deactivated_reason: String | nil,
        project_id: String | nil,
        status_message: String | nil
      }
    end
  end

  def test_list
    response = @openlayer.governance.rule_results.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleResultListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultListResponse::Item])
      }
    end
  end

  def test_create_evidence
    response = @openlayer.governance.rule_results.create_evidence("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleResultCreateEvidenceResponse
    end

    assert_pattern do
      response => {
        id: String,
        creator_id: String | nil,
        date_created: Time,
        date_updated: Time,
        description: String | nil,
        name: String | nil,
        storage_uri: String | nil,
        text: String | nil,
        url: String | nil
      }
    end
  end

  def test_list_evidence
    response = @openlayer.governance.rule_results.list_evidence("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::RuleResultListEvidenceResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleResultListEvidenceResponse::Item])
      }
    end
  end
end
