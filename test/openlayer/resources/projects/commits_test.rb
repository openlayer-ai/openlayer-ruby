# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Projects::CommitsTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response =
      @openlayer.projects.commits.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        commit: {message: "Updated the prompt."},
        storage_uri: "s3://..."
      )

    assert_pattern do
      response => Openlayer::Models::Projects::CommitCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        commit: Openlayer::Models::Projects::CommitCreateResponse::Commit,
        date_archived: Time | nil,
        date_created: Time,
        failing_goal_count: Integer,
        ml_model_id: String | nil,
        passing_goal_count: Integer,
        project_id: String,
        status: Openlayer::Models::Projects::CommitCreateResponse::Status,
        status_message: String | nil,
        total_goal_count: Integer,
        training_dataset_id: String | nil,
        validation_dataset_id: String | nil,
        archived: Openlayer::Internal::Type::Boolean | nil,
        deployment_status: String | nil,
        links: Openlayer::Models::Projects::CommitCreateResponse::Links | nil
      }
    end
  end

  def test_list
    response = @openlayer.projects.commits.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Projects::CommitListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Projects::CommitListResponse::Item])
      }
    end
  end
end
