# typed: strong

module Openlayer
  module Models
    module Governance
      module Frameworks
        class SectionListRulesParams < Openlayer::Internal::Type::BaseModel
          extend Openlayer::Internal::Type::RequestParameters::Converter
          include Openlayer::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::Frameworks::SectionListRulesParams,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :framework_id

          sig { returns(String) }
          attr_accessor :section_id

          # Whether to include each rule's results inline, in a `results` array.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_results

          sig { params(include_results: T::Boolean).void }
          attr_writer :include_results

          # Whether to also include the rules mapped to the section's subsections.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_subsection_rules

          sig { params(include_subsection_rules: T::Boolean).void }
          attr_writer :include_subsection_rules

          # The page to return in a paginated query.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page

          sig { params(page: Integer).void }
          attr_writer :page

          # Maximum number of items to return per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :per_page

          sig { params(per_page: Integer).void }
          attr_writer :per_page

          # Only include items that apply to this project.
          sig { returns(T.nilable(String)) }
          attr_reader :project_id

          sig { params(project_id: String).void }
          attr_writer :project_id

          # Only include items whose rule result has this compliance status.
          sig do
            returns(
              T.nilable(
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              framework_id: String,
              section_id: String,
              include_results: T::Boolean,
              include_subsection_rules: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              status:
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::OrSymbol,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            framework_id:,
            section_id:,
            # Whether to include each rule's results inline, in a `results` array.
            include_results: nil,
            # Whether to also include the rules mapped to the section's subsections.
            include_subsection_rules: nil,
            # The page to return in a paginated query.
            page: nil,
            # Maximum number of items to return per page.
            per_page: nil,
            # Only include items that apply to this project.
            project_id: nil,
            # Only include items whose rule result has this compliance status.
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                framework_id: String,
                section_id: String,
                include_results: T::Boolean,
                include_subsection_rules: T::Boolean,
                page: Integer,
                per_page: Integer,
                project_id: String,
                status:
                  Openlayer::Governance::Frameworks::SectionListRulesParams::Status::OrSymbol,
                request_options: Openlayer::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Only include items whose rule result has this compliance status.
          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Governance::Frameworks::SectionListRulesParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Governance::Frameworks::SectionListRulesParams::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
