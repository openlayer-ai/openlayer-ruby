# typed: strong
# frozen_string_literal: true

# Stub for google-cloud-discovery_engine-v1 gem
module Google
  module Cloud
    module DiscoveryEngine
      module V1
        class Query
          sig { params(text: String).void }
          def initialize(
            text:
          )
          end
          sig { returns(String) }
          def text; end
        end

        class ConversationalSearchService
          class Client
            sig { void }
            def initialize; end

            sig do
              params(
                serving_config: String,
                query: Query,
                session: T.nilable(String),
                kwargs: T.untyped
              ).returns(T.untyped)
            end
            def answer_query(
              serving_config:,
              query:,
              session: nil,
              **kwargs
            )
            end
          end
        end
      end
    end
  end
end
