# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::InferencePipelines::RowsTest < Openlayer::Test::ResourceTest
  def test_retrieve_required_params
    response =
      @openlayer.inference_pipelines.rows.retrieve(
        "inferenceId",
        inference_pipeline_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Openlayer::Models::InferencePipelines::RowRetrieveResponse
    end

    assert_pattern do
      response => {
        row: Openlayer::Internal::Type::Unknown | nil,
        success: Openlayer::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_required_params
    response =
      @openlayer.inference_pipelines.rows.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inference_id: "inferenceId",
        row: {}
      )

    assert_pattern do
      response => Openlayer::Models::InferencePipelines::RowUpdateResponse
    end

    assert_pattern do
      response => {
        success: Openlayer::Models::InferencePipelines::RowUpdateResponse::Success
      }
    end
  end

  def test_list
    response = @openlayer.inference_pipelines.rows.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::InferencePipelines::RowListResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelines::RowListResponse::Item])
      }
    end
  end

  def test_delete_required_params
    response =
      @openlayer.inference_pipelines.rows.delete(
        "inferenceId",
        inference_pipeline_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
