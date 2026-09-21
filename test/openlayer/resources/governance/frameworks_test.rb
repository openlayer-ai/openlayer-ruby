# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Governance::FrameworksTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response =
      @openlayer.governance.frameworks.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", name: "EU AI Act")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        enabled: Openlayer::Internal::Type::Boolean,
        name: String,
        tags: ^(Openlayer::Internal::Type::ArrayOf[String]),
        workspace_id: String,
        avatar: Openlayer::Models::Governance::FrameworkCreateResponse::Avatar | nil,
        built_in_slug: String | nil,
        creator_id: String | nil,
        description: String | nil,
        extended_description: ^(Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown]) | nil,
        href: String | nil,
        immutable: Openlayer::Internal::Type::Boolean | nil,
        project_selector: Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector | nil,
        rule_stats: Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats | nil
      }
    end
  end

  def test_retrieve
    response = @openlayer.governance.frameworks.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        enabled: Openlayer::Internal::Type::Boolean,
        name: String,
        tags: ^(Openlayer::Internal::Type::ArrayOf[String]),
        workspace_id: String,
        avatar: Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar | nil,
        built_in_slug: String | nil,
        creator_id: String | nil,
        description: String | nil,
        extended_description: ^(Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown]) | nil,
        href: String | nil,
        immutable: Openlayer::Internal::Type::Boolean | nil,
        project_selector: Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector | nil,
        rule_stats: Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats | nil
      }
    end
  end

  def test_update
    response = @openlayer.governance.frameworks.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_updated: Time,
        enabled: Openlayer::Internal::Type::Boolean,
        name: String,
        tags: ^(Openlayer::Internal::Type::ArrayOf[String]),
        workspace_id: String,
        avatar: Openlayer::Models::Governance::FrameworkUpdateResponse::Avatar | nil,
        built_in_slug: String | nil,
        creator_id: String | nil,
        description: String | nil,
        extended_description: ^(Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown]) | nil,
        href: String | nil,
        immutable: Openlayer::Internal::Type::Boolean | nil,
        project_selector: Openlayer::Models::Governance::FrameworkUpdateResponse::ProjectSelector | nil,
        rule_stats: Openlayer::Models::Governance::FrameworkUpdateResponse::RuleStats | nil
      }
    end
  end

  def test_list
    response = @openlayer.governance.frameworks.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::FrameworkListResponse::Item])
      }
    end
  end

  def test_export
    response = @openlayer.governance.frameworks.export("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkExportResponse
    end

    assert_pattern do
      response => {
        task_result_id: String,
        task_result_url: String
      }
    end
  end

  def test_list_project_rule_stats
    response =
      @openlayer.governance.frameworks.list_project_rule_stats("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse::Item])
      }
    end
  end

  def test_list_projects
    response = @openlayer.governance.frameworks.list_projects("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkListProjectsResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::FrameworkListProjectsResponse::Item])
      }
    end
  end

  def test_list_rules
    response = @openlayer.governance.frameworks.list_rules("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Governance::FrameworkListRulesResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::FrameworkListRulesResponse::Item])
      }
    end
  end
end
