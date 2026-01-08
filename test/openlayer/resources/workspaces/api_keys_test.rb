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
        name: String | nil
      }
    end
  end
end
