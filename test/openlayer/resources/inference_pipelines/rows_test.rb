# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::InferencePipelines::RowsTest < Openlayer::Test::ResourceTest
  def test_create
    response = @openlayer.inference_pipelines.rows.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Openlayer::Models::InferencePipelines::RowCreateResponse
    end

    assert_pattern do
      response => {
        items: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelines::RowCreateResponse::Item])
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
end
