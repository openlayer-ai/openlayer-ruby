# frozen_string_literal: true

require_relative "../test_helper"

class Openlayer::Test::Resources::ProjectsTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response = @openlayer.projects.create(name: "My Project", task_type: :"llm-base")

    assert_pattern do
      response => Openlayer::Models::ProjectCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        creator_id: String | nil,
        date_created: Time,
        date_updated: Time,
        development_goal_count: Integer,
        goal_count: Integer,
        inference_pipeline_count: Integer,
        links: Openlayer::Models::ProjectCreateResponse::Links,
        monitoring_goal_count: Integer,
        name: String,
        source: Openlayer::Models::ProjectCreateResponse::Source | nil,
        task_type: Openlayer::Models::ProjectCreateResponse::TaskType,
        version_count: Integer,
        workspace_id: String | nil,
        description: String | nil,
        git_repo: Openlayer::Models::ProjectCreateResponse::GitRepo | nil
      }
    end
  end

  def test_list
    response = @openlayer.projects.list

    assert_pattern do
      response => Openlayer::Models::ProjectListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::ProjectListResponse::Item])
      }
    end
  end
end
