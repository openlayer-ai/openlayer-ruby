# typed: strong

module Openlayer
  module Resources
    class Governance
      class Frameworks
        class Sections
          # List the rules mapped to a section of a framework document.
          #
          # Pass `includeSubsectionRules=true` to also return the rules mapped to the
          # section's subsections, which is how you get every rule covering a requirement
          # and everything under it.
          sig do
            params(
              section_id: String,
              framework_id: String,
              include_results: T::Boolean,
              include_subsection_rules: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              status:
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::OrSymbol,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(
              Openlayer::Models::Governance::Frameworks::SectionListRulesResponse
            )
          end
          def list_rules(
            # Path param: The framework document section id.
            section_id,
            # Path param: The framework id.
            framework_id:,
            # Query param: Whether to include each rule's results inline, in a `results`
            # array.
            include_results: nil,
            # Query param: Whether to also include the rules mapped to the section's
            # subsections.
            include_subsection_rules: nil,
            # Query param: The page to return in a paginated query.
            page: nil,
            # Query param: Maximum number of items to return per page.
            per_page: nil,
            # Query param: Only include items that apply to this project.
            project_id: nil,
            # Query param: Only include items whose rule result has this compliance status.
            status: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Openlayer::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
