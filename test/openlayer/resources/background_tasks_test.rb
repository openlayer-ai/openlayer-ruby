# frozen_string_literal: true

require_relative "../test_helper"

class Openlayer::Test::Resources::BackgroundTasksTest < Openlayer::Test::ResourceTest
  def test_retrieve
    response = @openlayer.background_tasks.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::BackgroundTaskRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        complete: Openlayer::Internal::Type::Boolean,
        date_created: Time,
        date_updated: Time,
        name: String,
        progress: Float,
        error: String | nil,
        outputs: Openlayer::Internal::Type::Unknown | nil
      }
    end
  end
end
