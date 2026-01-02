# typed: strong
# frozen_string_literal: true

module Openlayer
  module Integrations
    class GoogleConversationalSearchTracer
      sig do
        params(
          client: T.untyped,
          openlayer_client: Openlayer::Client,
          inference_pipeline_id: String,
          session_id: T.nilable(String),
          user_id: T.nilable(String)
        ).void
      end
      def self.trace_client(
        client,
        openlayer_client:,
        inference_pipeline_id:,
        session_id: nil,
        user_id: nil
      )
      end
    end
  end
end
