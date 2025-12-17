# frozen_string_literal: true

require_relative "../test_helper"

class Openlayer::Test::Resources::TestsTest < Openlayer::Test::ResourceTest
  def test_evaluate_required_params
    response =
      @openlayer.tests.evaluate(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        end_timestamp: 1_700_006_400,
        start_timestamp: 1_699_920_000
      )

    assert_pattern do
      response => Openlayer::Models::TestEvaluateResponse
    end

    assert_pattern do
      response => {
        message: String,
        pipeline_count: Integer,
        requested_end_timestamp: Integer,
        requested_start_timestamp: Integer,
        tasks: ^(Openlayer::Internal::Type::ArrayOf[Openlayer::Models::TestEvaluateResponse::Task])
      }
    end
  end
end
