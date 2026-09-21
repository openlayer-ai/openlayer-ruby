# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class Frameworks
        class Documents
          # Retrieve a framework document, including its sections, subsections, and the
          # rules mapped to each.
          #
          # Each section and subsection carries a `ruleCount`, so you can tell which
          # requirements have rules mapped to them before drilling in.
          #
          # @overload retrieve(document_id, framework_id:, request_options: {})
          #
          # @param document_id [String] The framework document id.
          #
          # @param framework_id [String] The framework id.
          #
          # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Openlayer::Models::Governance::Frameworks::DocumentRetrieveResponse]
          #
          # @see Openlayer::Models::Governance::Frameworks::DocumentRetrieveParams
          def retrieve(document_id, params)
            parsed, options = Openlayer::Governance::Frameworks::DocumentRetrieveParams.dump_request(params)
            framework_id =
              parsed.delete(:framework_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["frameworks/%1$s/documents/%2$s", framework_id, document_id],
              model: Openlayer::Models::Governance::Frameworks::DocumentRetrieveResponse,
              options: options
            )
          end

          # List the documents attached to a framework.
          #
          # A document holds the text of the standard the framework is based on, split into
          # sections and subsections. Retrieve a single document to get that structure,
          # along with the rules mapped to each part of it.
          #
          # @overload list(framework_id, page: nil, per_page: nil, request_options: {})
          #
          # @param framework_id [String] The framework id.
          #
          # @param page [Integer] The page to return in a paginated query.
          #
          # @param per_page [Integer] Maximum number of items to return per page.
          #
          # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Openlayer::Models::Governance::Frameworks::DocumentListResponse]
          #
          # @see Openlayer::Models::Governance::Frameworks::DocumentListParams
          def list(framework_id, params = {})
            parsed, options = Openlayer::Governance::Frameworks::DocumentListParams.dump_request(params)
            query = Openlayer::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["frameworks/%1$s/documents", framework_id],
              query: query.transform_keys(per_page: "perPage"),
              model: Openlayer::Models::Governance::Frameworks::DocumentListResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Openlayer::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
