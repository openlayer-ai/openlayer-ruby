# typed: strong
# frozen_string_literal: true

module Openlayer
  module Integrations
    class GoogleConversationalSearchTracer
      sig do
        params(
          client: T.untyped,
          openlayer_client: Openlayer::Client,
          inference_pipeline_id: String
        ).void
      end
      def self.trace_client(
        client,
        openlayer_client:,
        inference_pipeline_id:
      )
      end
    end
  end
end
