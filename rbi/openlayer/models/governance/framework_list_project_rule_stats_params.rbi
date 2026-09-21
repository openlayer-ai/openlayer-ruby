# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkListProjectRuleStatsParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::FrameworkListProjectRuleStatsParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :framework_id

        # Whether to sort in ascending order.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :asc

        sig { params(asc: T::Boolean).void }
        attr_writer :asc

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

        # The column to sort on.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::OrSymbol
            )
          )
        end
        attr_reader :sort_column

        sig do
          params(
            sort_column:
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::OrSymbol
          ).void
        end
        attr_writer :sort_column

        sig do
          params(
            framework_id: String,
            asc: T::Boolean,
            page: Integer,
            per_page: Integer,
            sort_column:
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          framework_id:,
          # Whether to sort in ascending order.
          asc: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # The column to sort on.
          sort_column: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              framework_id: String,
              asc: T::Boolean,
              page: Integer,
              per_page: Integer,
              sort_column:
                Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::OrSymbol,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The column to sort on.
        module SortColumn
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROJECT_NAME =
            T.let(
              :projectName,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL =
            T.let(
              :total,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          OVERALL_COMPLETION =
            T.let(
              :overallCompletion,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_PASSING =
            T.let(
              :totalPassing,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_FAILING =
            T.let(
              :totalFailing,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_SKIPPED =
            T.let(
              :totalSkipped,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_RUNNING =
            T.let(
              :totalRunning,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_ERROR =
            T.let(
              :totalError,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_PENDING =
            T.let(
              :totalPending,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )
          TOTAL_DUE_SOON =
            T.let(
              :totalDueSoon,
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::TaggedSymbol
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
