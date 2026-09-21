# typed: strong

module Openlayer
  module Models
    module Governance
      module Frameworks
        class SubsectionListRulesParams < Openlayer::Internal::Type::BaseModel
          extend Openlayer::Internal::Type::RequestParameters::Converter
          include Openlayer::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::Frameworks::SubsectionListRulesParams,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :framework_id

          sig { returns(String) }
          attr_accessor :subsection_id

          # Whether to include each rule's results inline, in a `results` array.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_results

          sig { params(include_results: T::Boolean).void }
          attr_writer :include_results

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
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              framework_id: String,
              subsection_id: String,
              include_results: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              status:
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::OrSymbol,
              request_options: Openlayer::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            framework_id:,
            subsection_id:,
            # Whether to include each rule's results inline, in a `results` array.
            include_results: nil,
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
                subsection_id: String,
                include_results: T::Boolean,
                page: Integer,
                per_page: Integer,
                project_id: String,
                status:
                  Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::OrSymbol,
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
                  Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )
            DUE_SOON =
              T.let(
                :due_soon,
                Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Governance::Frameworks::SubsectionListRulesParams::Status::TaggedSymbol
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
