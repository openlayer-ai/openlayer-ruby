#!/usr/bin/env ruby
# frozen_string_literal: true
# typed: false

# Simple example: Tracing Google ConversationalSearchService with Openlayer

# Add lib directory to load path
$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))

require "securerandom"
require "openlayer"
require "openlayer/integrations/google_conversational_search_tracer"
require "google/cloud/discovery_engine/v1"

# Initialize Google ConversationalSearchService client
google_client = Google::Cloud::DiscoveryEngine::V1::ConversationalSearchService::Client.new

# Initialize Openlayer client
openlayer = Openlayer::Client.new(
  api_key: ENV["OPENLAYER_API_KEY"]
)

# Enable tracing - this patches the client to send all queries to Openlayer.
# additional_columns here is a static default applied to every trace sent
# through this client.
Openlayer::Integrations::GoogleConversationalSearchTracer.trace_client(
  google_client,
  openlayer_client: openlayer,
  inference_pipeline_id: ENV["OPENLAYER_INFERENCE_PIPELINE_ID"],
  additional_columns: {environment: "production"}
)

# Use the client normally - all answer_query calls are now automatically traced!
# additional_columns here is per-call; it takes precedence over the static
# default above on a key conflict.
response = google_client.answer_query(
  serving_config: ENV["GOOGLE_SERVING_CONFIG"],
  query: Google::Cloud::DiscoveryEngine::V1::Query.new(
    text: "What is the meaning of life?"
  ),
  additional_columns: {trace_id: SecureRandom.uuid}
)

puts "Answer: #{response.answer.answer_text}"
puts "\n✓ Query traced to Openlayer successfully!"
