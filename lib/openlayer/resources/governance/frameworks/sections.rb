# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class Frameworks
        class Sections
          # Some parameter documentations has been truncated, see
          # {Openlayer::Models::Governance::Frameworks::SectionListRulesParams} for more
          # details.
          #
          # List the rules mapped to a section of a framework document.
          #
          # Pass `includeSubsectionRules=true` to also return the rules mapped to the
          # section's subsections, which is how you get every rule covering a requirement
          # and everything under it.
          #
          # @overload list_rules(section_id, framework_id:, include_results: nil, include_subsection_rules: nil, page: nil, per_page: nil, project_id: nil, status: nil, request_options: {})
          #
          # @param section_id [String] Path param: The framework document section id.
          #
          # @param framework_id [String] Path param: The framework id.
          #
          # @param include_results [Boolean] Query param: Whether to include each rule's results inline, in a `results` array
          #
          # @param include_subsection_rules [Boolean] Query param: Whether to also include the rules mapped to the section's subsectio
          #
          # @param page [Integer] Query param: The page to return in a paginated query.
          #
          # @param per_page [Integer] Query param: Maximum number of items to return per page.
          #
          # @param project_id [String] Query param: Only include items that apply to this project.
          #
          # @param status [Symbol, Openlayer::Models::Governance::Frameworks::SectionListRulesParams::Status] Query param: Only include items whose rule result has this compliance status.
          #
          # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Openlayer::Models::Governance::Frameworks::SectionListRulesResponse]
          #
          # @see Openlayer::Models::Governance::Frameworks::SectionListRulesParams
          def list_rules(section_id, params)
            parsed, options = Openlayer::Governance::Frameworks::SectionListRulesParams.dump_request(params)
            query = Openlayer::Internal::Util.encode_query_params(parsed)
            framework_id =
              parsed.delete(:framework_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["frameworks/%1$s/sections/%2$s/rules", framework_id, section_id],
              query: query.transform_keys(
                include_results: "includeResults",
                include_subsection_rules: "includeSubsectionRules",
                per_page: "perPage",
                project_id: "projectId"
              ),
              model: Openlayer::Models::Governance::Frameworks::SectionListRulesResponse,
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
