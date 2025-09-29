# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Storage::PresignedURLTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response = @openlayer.storage.presigned_url.create(object_name: "objectName")

    assert_pattern do
      response => Openlayer::Models::Storage::PresignedURLCreateResponse
    end

    assert_pattern do
      response => {
        storage_uri: String,
        url: String,
        fields: Openlayer::Internal::Type::Unknown | nil
      }
    end
  end
end
