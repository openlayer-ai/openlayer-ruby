# frozen_string_literal: true

require_relative "../test_helper"

class Openlayer::Test::Resources::WorkspacesTest < Openlayer::Test::ResourceTest
  def test_retrieve
    response = @openlayer.workspaces.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::WorkspaceRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        creator_id: String | nil,
        date_created: Time,
        date_updated: Time,
        invite_count: Integer,
        member_count: Integer,
        name: String,
        period_end_date: Time | nil,
        period_start_date: Time | nil,
        project_count: Integer,
        slug: String,
        status: Openlayer::Models::WorkspaceRetrieveResponse::Status,
        monthly_usage: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage]) | nil,
        saml_only_access: Openlayer::Internal::Type::Boolean | nil,
        wildcard_domains: ^(Openlayer::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    response = @openlayer.workspaces.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::WorkspaceUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        creator_id: String | nil,
        date_created: Time,
        date_updated: Time,
        invite_count: Integer,
        member_count: Integer,
        name: String,
        period_end_date: Time | nil,
        period_start_date: Time | nil,
        project_count: Integer,
        slug: String,
        status: Openlayer::Models::WorkspaceUpdateResponse::Status,
        monthly_usage: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::WorkspaceUpdateResponse::MonthlyUsage]) | nil,
        saml_only_access: Openlayer::Internal::Type::Boolean | nil,
        wildcard_domains: ^(Openlayer::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
