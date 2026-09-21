# typed: strong

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
          sig do
            params(
              document_id: String,
              framework_id: String,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(
              Openlayer::Models::Governance::Frameworks::DocumentRetrieveResponse
            )
          end
          def retrieve(
            # The framework document id.
            document_id,
            # The framework id.
            framework_id:,
            request_options: {}
          )
          end

          # List the documents attached to a framework.
          #
          # A document holds the text of the standard the framework is based on, split into
          # sections and subsections. Retrieve a single document to get that structure,
          # along with the rules mapped to each part of it.
          sig do
            params(
              framework_id: String,
              page: Integer,
              per_page: Integer,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(
              Openlayer::Models::Governance::Frameworks::DocumentListResponse
            )
          end
          def list(
            # The framework id.
            framework_id,
            # The page to return in a paginated query.
            page: nil,
            # Maximum number of items to return per page.
            per_page: nil,
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
