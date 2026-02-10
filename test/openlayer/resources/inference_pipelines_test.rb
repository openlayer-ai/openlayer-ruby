# frozen_string_literal: true

require_relative "../test_helper"

class Openlayer::Test::Resources::InferencePipelinesTest < Openlayer::Test::ResourceTest
  def test_retrieve
    response = @openlayer.inference_pipelines.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::InferencePipelineRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_last_evaluated: Time | nil,
        date_last_sample_received: Time | nil,
        date_of_next_evaluation: Time | nil,
        date_updated: Time,
        description: String | nil,
        failing_goal_count: Integer,
        links: Openlayer::Models::InferencePipelineRetrieveResponse::Links,
        name: String,
        passing_goal_count: Integer,
        project_id: String,
        status: Openlayer::Models::InferencePipelineRetrieveResponse::Status,
        status_message: String | nil,
        total_goal_count: Integer,
        data_backend: Openlayer::Models::InferencePipelineRetrieveResponse::DataBackend | nil,
        date_last_polled: Time | nil,
        project: Openlayer::Models::InferencePipelineRetrieveResponse::Project | nil,
        total_records_count: Integer | nil,
        workspace: Openlayer::Models::InferencePipelineRetrieveResponse::Workspace | nil,
        workspace_id: String | nil
      }
    end
  end

  def test_update
    response = @openlayer.inference_pipelines.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::InferencePipelineUpdateResponse
    end

    assert_pattern do
      response => {
        id: String,
        date_created: Time,
        date_last_evaluated: Time | nil,
        date_last_sample_received: Time | nil,
        date_of_next_evaluation: Time | nil,
        date_updated: Time,
        description: String | nil,
        failing_goal_count: Integer,
        links: Openlayer::Models::InferencePipelineUpdateResponse::Links,
        name: String,
        passing_goal_count: Integer,
        project_id: String,
        status: Openlayer::Models::InferencePipelineUpdateResponse::Status,
        status_message: String | nil,
        total_goal_count: Integer,
        data_backend: Openlayer::Models::InferencePipelineUpdateResponse::DataBackend | nil,
        date_last_polled: Time | nil,
        project: Openlayer::Models::InferencePipelineUpdateResponse::Project | nil,
        total_records_count: Integer | nil,
        workspace: Openlayer::Models::InferencePipelineUpdateResponse::Workspace | nil,
        workspace_id: String | nil
      }
    end
  end

  def test_delete
    response = @openlayer.inference_pipelines.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_users
    response = @openlayer.inference_pipelines.retrieve_users("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::InferencePipelineRetrieveUsersResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelineRetrieveUsersResponse::Item])
      }
    end
  end
end
