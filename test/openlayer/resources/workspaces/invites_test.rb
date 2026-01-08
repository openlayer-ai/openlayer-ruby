# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Workspaces::InvitesTest < Openlayer::Test::ResourceTest
  def test_create
    response = @openlayer.workspaces.invites.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Workspaces::InviteCreateResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Workspaces::InviteCreateResponse::Item])
      }
    end
  end

  def test_list
    response = @openlayer.workspaces.invites.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Workspaces::InviteListResponse
    end

    assert_pattern do
      response => {
        _meta: Openlayer::Models::Workspaces::InviteListResponse::Meta,
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Workspaces::InviteListResponse::Item])
      }
    end
  end
end
