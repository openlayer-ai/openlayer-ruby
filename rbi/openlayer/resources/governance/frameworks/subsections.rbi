# typed: strong

module Openlayer
  module Resources
    class Governance
      class Frameworks
        class Subsections
          # List the rules mapped to a subsection of a framework document.
          #
          # A subsection is usually the level at which a standard states an individual
          # requirement, so this is the endpoint to use when you want to show which rules
          # cover a specific clause.
          sig do
            params(
              subsection_id: String,
              framework_id: String,
              include_results: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              status:
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::OrSymbol,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(
              Openlayer::Models::Governance::Frameworks::SubsectionListRulesResponse
            )
          end
          def list_rules(
            # Path param: The framework document subsection id.
            subsection_id,
            # Path param: The framework id.
            framework_id:,
            # Query param: Whether to include each rule's results inline, in a `results`
            # array.
            include_results: nil,
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
