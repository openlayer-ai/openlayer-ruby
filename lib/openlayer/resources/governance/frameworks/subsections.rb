# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class Frameworks
        class Subsections
          # Some parameter documentations has been truncated, see
          # {Openlayer::Models::Governance::Frameworks::SubsectionListRulesParams} for more
          # details.
          #
          # List the rules mapped to a subsection of a framework document.
          #
          # A subsection is usually the level at which a standard states an individual
          # requirement, so this is the endpoint to use when you want to show which rules
          # cover a specific clause.
          #
          # @overload list_rules(subsection_id, framework_id:, include_results: nil, page: nil, per_page: nil, project_id: nil, status: nil, request_options: {})
          #
          # @param subsection_id [String] Path param: The framework document subsection id.
          #
          # @param framework_id [String] Path param: The framework id.
          #
          # @param include_results [Boolean] Query param: Whether to include each rule's results inline, in a `results` array
          #
          # @param page [Integer] Query param: The page to return in a paginated query.
          #
          # @param per_page [Integer] Query param: Maximum number of items to return per page.
          #
          # @param project_id [String] Query param: Only include items that apply to this project.
          #
          # @param status [Symbol, Openlayer::Models::Governance::Frameworks::SubsectionListRulesParams::Status] Query param: Only include items whose rule result has this compliance status.
          #
          # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Openlayer::Models::Governance::Frameworks::SubsectionListRulesResponse]
          #
          # @see Openlayer::Models::Governance::Frameworks::SubsectionListRulesParams
          def list_rules(subsection_id, params)
            parsed, options = Openlayer::Governance::Frameworks::SubsectionListRulesParams.dump_request(params)
            query = Openlayer::Internal::Util.encode_query_params(parsed)
            framework_id =
              parsed.delete(:framework_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["frameworks/%1$s/subsections/%2$s/rules", framework_id, subsection_id],
              query: query.transform_keys(
                include_results: "includeResults",
                per_page: "perPage",
                project_id: "projectId"
              ),
              model: Openlayer::Models::Governance::Frameworks::SubsectionListRulesResponse,
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
