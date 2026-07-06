# frozen_string_literal: true

require_relative "../test_helper"
require_relative "../../../lib/openlayer/integrations/google_conversational_search_tracer"

module Openlayer
  module Test
    module Integrations
    end
  end
end

class Openlayer::Test::Integrations::GoogleConversationalSearchTracerTest < Minitest::Test
  Tracer = Openlayer::Integrations::GoogleConversationalSearchTracer

  class FakeAnswer
    attr_reader :answer_text

    def initialize(answer_text)
      @answer_text = answer_text
    end
  end

  class FakeResponse
    attr_reader :answer

    def initialize(answer_text)
      @answer = FakeAnswer.new(answer_text)
    end
  end

  class FakeGoogleClient
    def answer_query(serving_config:, query:) # rubocop:disable Lint/UnusedMethodArgument
      FakeResponse.new("hi")
    end
  end

  class FakeDataResource
    attr_reader :calls

    def initialize
      @calls = []
    end

    def stream(inference_pipeline_id, **trace_data)
      @calls << {inference_pipeline_id: inference_pipeline_id}.merge(trace_data)
    end
  end

  class FakeInferencePipelines
    attr_reader :data

    def initialize(data)
      @data = data
    end
  end

  class FakeOpenlayerClient
    attr_reader :inference_pipelines

    def initialize
      @data = FakeDataResource.new
      @inference_pipelines = FakeInferencePipelines.new(@data)
    end

    def last_row
      @data.calls.last[:rows][0]
    end
  end

  def setup
    @openlayer_client = FakeOpenlayerClient.new
    @start_time = Time.now
    @end_time = @start_time + 1
  end

  def trace_row(**overrides)
    defaults = {
      args: [],
      kwargs: {query: "hello"},
      response: FakeResponse.new("hi"),
      start_time: @start_time,
      end_time: @end_time,
      openlayer_client: @openlayer_client,
      inference_pipeline_id: "pipeline-id"
    }

    Tracer.send_trace(**defaults, **overrides)
    @openlayer_client.last_row
  end

  def test_static_additional_columns_appear_on_the_row
    row = trace_row(additional_columns: {environment: "production"})

    assert_equal("production", row[:environment])
  end

  def test_per_call_additional_columns_appear_on_the_row
    row = trace_row(call_additional_columns: {trace_id: "abc-123"})

    assert_equal("abc-123", row[:trace_id])
  end

  def test_per_call_additional_columns_override_static_on_conflict
    row = trace_row(
      additional_columns: {trace_id: "static-value"},
      call_additional_columns: {trace_id: "call-value"}
    )

    assert_equal("call-value", row[:trace_id])
  end

  def test_reserved_keys_are_dropped_even_as_string_keys
    row = trace_row(additional_columns: {"answer" => "hijacked", trace_id: "abc-123"})

    assert_equal("hi", row[:answer])
    assert_equal("abc-123", row[:trace_id])
  end

  def test_non_hash_additional_columns_does_not_raise
    row = trace_row(additional_columns: "not-a-hash", call_additional_columns: nil)

    assert_equal("hi", row[:answer])
  end

  def test_trace_client_strips_additional_columns_before_forwarding_to_google_client
    google_client = FakeGoogleClient.new

    Tracer.trace_client(
      google_client,
      openlayer_client: @openlayer_client,
      inference_pipeline_id: "pipeline-id"
    )

    response = google_client.answer_query(
      serving_config: "config",
      query: "hello",
      additional_columns: {trace_id: "abc-123"}
    )

    assert_equal("hi", response.answer.answer_text)
    assert_equal("abc-123", @openlayer_client.last_row[:trace_id])
  end
end
