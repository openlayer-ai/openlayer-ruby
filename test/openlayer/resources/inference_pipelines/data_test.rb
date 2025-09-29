# frozen_string_literal: true

require_relative "../../test_helper"

class Openlayer::Test::Resources::InferencePipelines::DataTest < Openlayer::Test::ResourceTest
  def test_stream_required_params
    response =
      @openlayer.inference_pipelines.data.stream(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        config: {outputColumnName: "output"},
        rows: [{user_query: "bar", output: "bar", tokens: "bar", cost: "bar", timestamp: "bar"}]
      )

    assert_pattern do
      response => Openlayer::Models::InferencePipelines::DataStreamResponse
    end

    assert_pattern do
      response => {
        success: Openlayer::Models::InferencePipelines::DataStreamResponse::Success
      }
    end
  end
end
