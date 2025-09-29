# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::Projects::TestsTest < Openlayer::Test::ResourceTest
  def test_create_required_params
    response =
      @openlayer.projects.tests.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        description: "This test checks for duplicate rows in the dataset.",
        name: "No duplicate rows",
        subtype: :duplicateRowCount,
        thresholds: [{}],
        type: :integrity
      )

    assert_pattern do
      response => Openlayer::Models::Projects::TestCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        comment_count: Integer,
        creator_id: String | nil,
        date_archived: Time | nil,
        date_created: Time,
        date_updated: Time,
        description: Openlayer::Internal::Type::Unknown | nil,
        name: String,
        number: Integer,
        origin_project_version_id: String | nil,
        subtype: Openlayer::Models::Projects::TestCreateResponse::Subtype,
        suggested: Openlayer::Internal::Type::Boolean,
        thresholds: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Projects::TestCreateResponse::Threshold]),
        type: Openlayer::Models::Projects::TestCreateResponse::Type,
        archived: Openlayer::Internal::Type::Boolean | nil,
        delay_window: Float | nil,
        evaluation_window: Float | nil,
        uses_ml_model: Openlayer::Internal::Type::Boolean | nil,
        uses_production_data: Openlayer::Internal::Type::Boolean | nil,
        uses_reference_dataset: Openlayer::Internal::Type::Boolean | nil,
        uses_training_dataset: Openlayer::Internal::Type::Boolean | nil,
        uses_validation_dataset: Openlayer::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_required_params
    response =
      @openlayer.projects.tests.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        payloads: [{id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"}]
      )

    assert_pattern do
      response => Openlayer::Models::Projects::TestUpdateResponse
    end

    assert_pattern do
      response => {
        task_result_id: String | nil,
        task_result_url: String | nil
      }
    end
  end

  def test_list
    response = @openlayer.projects.tests.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::Projects::TestListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Projects::TestListResponse::Item])
      }
    end
  end
end
