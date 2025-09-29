# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Projects::InferencePipelinesTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response =
      @openlayer.projects.inference_pipelines.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        description: "This pipeline is used for production.",
        name: "production"
      )

    assert_pattern do
      response => Openlayer::Models::Projects::InferencePipelineCreateResponse
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
        links: Openlayer::Models::Projects::InferencePipelineCreateResponse::Links,
        name: String,
        passing_goal_count: Integer,
        project_id: String,
        status: Openlayer::Models::Projects::InferencePipelineCreateResponse::Status,
        status_message: String | nil,
        total_goal_count: Integer,
        project: Openlayer::Models::Projects::InferencePipelineCreateResponse::Project | nil,
        workspace: Openlayer::Models::Projects::InferencePipelineCreateResponse::Workspace | nil,
        workspace_id: String | nil
      }
    end
  end

  def test_list
    response = @openlayer.projects.inference_pipelines.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Projects::InferencePipelineListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Projects::InferencePipelineListResponse::Item])
      }
    end
  end
end
