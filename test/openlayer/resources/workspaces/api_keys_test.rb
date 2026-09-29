# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Workspaces::APIKeysTest < Openlayer::Test::ResourceTest
  def test_create
    response = @openlayer.workspaces.api_keys.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Workspaces::APIKeyCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_last_used: Time | nil,
        date_updated: Time,
        secure_key: String,
        status: Openlayer::Models::Workspaces::APIKeyCreateResponse::Status,
        expires_at: Time | nil,
        last_rotated_at: Time | nil,
        name: String | nil,
        previous_key_expires_at: Time | nil,
        secret: String | nil
      }
    end
  end

  def test_retrieve_required_params
    response =
      @openlayer.workspaces.api_keys.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        workspace_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::Workspaces::APIKeyRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_last_used: Time | nil,
        date_updated: Time,
        secure_key: String,
        status: Openlayer::Models::Workspaces::APIKeyRetrieveResponse::Status,
        expires_at: Time | nil,
        last_rotated_at: Time | nil,
        name: String | nil,
        previous_key_expires_at: Time | nil,
        secret: String | nil
      }
    end
  end

  def test_update_required_params
    response =
      @openlayer.workspaces.api_keys.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        workspace_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::Workspaces::APIKeyUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_last_used: Time | nil,
        date_updated: Time,
        secure_key: String,
        status: Openlayer::Models::Workspaces::APIKeyUpdateResponse::Status,
        expires_at: Time | nil,
        last_rotated_at: Time | nil,
        name: String | nil,
        previous_key_expires_at: Time | nil,
        secret: String | nil
      }
    end
  end

  def test_list
    response = @openlayer.workspaces.api_keys.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Workspaces::APIKeyListResponseItem])
    end
  end

  def test_delete_required_params
    response =
      @openlayer.workspaces.api_keys.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        workspace_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_rotate_required_params
    response =
      @openlayer.workspaces.api_keys.rotate(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        workspace_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::Workspaces::APIKeyRotateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_last_used: Time | nil,
        date_updated: Time,
        secure_key: String,
        status: Openlayer::Models::Workspaces::APIKeyRotateResponse::Status,
        expires_at: Time | nil,
        last_rotated_at: Time | nil,
        name: String | nil,
        previous_key_expires_at: Time | nil,
        secret: String | nil
      }
    end
  end
end
