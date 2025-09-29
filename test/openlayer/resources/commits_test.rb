# frozen_string_literal: true

require_relative "../test_helper"

class Openlayer::Test::Resources::CommitsTest < Openlayer::Test::ResourceTest
  def test_retrieve
    response = @openlayer.commits.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::CommitRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        commit: Openlayer::Models::CommitRetrieveResponse::Commit,
        date_archived: Time | nil,
        date_created: Time,
        failing_goal_count: Integer,
        ml_model_id: String | nil,
        passing_goal_count: Integer,
        project_id: String,
        status: Openlayer::Models::CommitRetrieveResponse::Status,
        status_message: String | nil,
        total_goal_count: Integer,
        training_dataset_id: String | nil,
        validation_dataset_id: String | nil,
        archived: Openlayer::Internal::Type::Boolean | nil,
        deployment_status: String | nil,
        links: Openlayer::Models::CommitRetrieveResponse::Links | nil
      }
    end
  end
end
