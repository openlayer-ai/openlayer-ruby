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

  class FakeDocumentMetadata
    attr_reader :document, :uri, :title

    def initialize(document: nil, uri: nil, title: nil)
      @document = document
      @uri = uri
      @title = title
    end
  end

  class FakeChunkInfo
    attr_reader :content, :relevance_score, :document_metadata

    def initialize(content: nil, relevance_score: nil, document_metadata: nil)
      @content = content
      @relevance_score = relevance_score
      @document_metadata = document_metadata
    end
  end

  class FakeStructuredDocumentInfo
    attr_reader :document, :struct_data, :title, :uri

    def initialize(document: nil, struct_data: nil, title: nil, uri: nil)
      @document = document
      @struct_data = struct_data
      @title = title
      @uri = uri
    end
  end

  class FakeChunkContent
    attr_reader :content

    def initialize(content: nil)
      @content = content
    end
  end

  class FakeUnstructuredDocumentInfo
    attr_reader :document, :uri, :title, :chunk_contents

    def initialize(document: nil, uri: nil, title: nil, chunk_contents: [])
      @document = document
      @uri = uri
      @title = title
      @chunk_contents = chunk_contents
    end
  end

  # Duck-types Discovery Engine's Answer::Reference, whose `content` field is
  # a oneof: exactly one of chunk_info / structured_document_info /
  # unstructured_document_info is non-nil, mirroring real protobuf behavior.
  class FakeReference
    attr_reader :chunk_info, :structured_document_info, :unstructured_document_info

    def initialize(chunk_info: nil, structured_document_info: nil, unstructured_document_info: nil)
      @chunk_info = chunk_info
      @structured_document_info = structured_document_info
      @unstructured_document_info = unstructured_document_info
    end
  end

  class FakeAnswer
    attr_reader :answer_text, :references

    def initialize(answer_text, references: [])
      @answer_text = answer_text
      @references = references
    end
  end

  class FakeResponse
    attr_reader :answer

    def initialize(answer_text, references: [])
      @answer = FakeAnswer.new(answer_text, references: references)
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

  def test_chunk_info_reference_is_preserved
    reference = FakeReference.new(
      chunk_info: FakeChunkInfo.new(
        content: "chunk text",
        relevance_score: 0.9,
        document_metadata: FakeDocumentMetadata.new(document: "doc-1", uri: "https://a.test", title: "A")
      )
    )
    row = trace_row(response: FakeResponse.new("hi", references: [reference]))

    references = row[:steps][0][:references]
    assert_equal(1, references.length)
    assert_equal("chunk text", references[0][:content])
    assert_equal(["chunk text"], row[:context])
  end

  def test_structured_document_info_reference_is_preserved
    document_id = "projects/example/dataStores/example/documents/example-doc"
    reference = FakeReference.new(
      structured_document_info: FakeStructuredDocumentInfo.new(
        document: document_id,
        uri: "https://example.test/doc",
        title: "Example structured document",
        struct_data: {kind: "example"}
      )
    )
    row = trace_row(response: FakeResponse.new("hi", references: [reference]))

    references = row[:steps][0][:references]
    assert_equal(1, references.length)
    assert_equal(document_id, references[0][:document_id])
    assert_equal("https://example.test/doc", references[0][:uri])
    assert_equal("Example structured document", references[0][:title])
    assert_equal({kind: "example"}, references[0][:struct_data])
  end

  def test_unstructured_document_info_reference_is_preserved
    reference = FakeReference.new(
      unstructured_document_info: FakeUnstructuredDocumentInfo.new(
        document: "doc-2",
        uri: "https://b.test",
        title: "B",
        chunk_contents: [
          FakeChunkContent.new(content: "chunk one"),
          FakeChunkContent.new(content: "chunk two")
        ]
      )
    )
    row = trace_row(response: FakeResponse.new("hi", references: [reference]))

    references = row[:steps][0][:references]
    assert_equal(1, references.length)
    assert_equal("doc-2", references[0][:document_id])
    assert_equal("https://b.test", references[0][:uri])
    assert_equal("B", references[0][:title])
    assert_equal("chunk one\nchunk two", references[0][:content])
    assert_equal(["chunk one\nchunk two"], row[:context])
  end

  def test_reference_with_no_known_variant_is_skipped_without_raising
    row = trace_row(response: FakeResponse.new("hi", references: [FakeReference.new]))

    assert_nil(row[:steps][0][:references])
    assert_nil(row[:context])
  end

  def test_mixed_reference_variants_are_all_preserved_in_order
    chunk_ref = FakeReference.new(chunk_info: FakeChunkInfo.new(content: "chunk"))
    structured_ref = FakeReference.new(
      structured_document_info: FakeStructuredDocumentInfo.new(title: "Structured")
    )
    row = trace_row(response: FakeResponse.new("hi", references: [chunk_ref, structured_ref]))

    references = row[:steps][0][:references]
    assert_equal(2, references.length)
    assert_equal("chunk", references[0][:content])
    assert_equal("Structured", references[1][:title])
  end

  def test_references_count_metadata_matches_traced_references_for_structured_document_info
    reference = FakeReference.new(
      structured_document_info: FakeStructuredDocumentInfo.new(title: "Structured")
    )
    row = trace_row(response: FakeResponse.new("hi", references: [reference]))

    assert_equal(1, row[:steps][0][:metadata][:references_count])
    assert_equal(1, row[:steps][0][:references].length)
  end
end
