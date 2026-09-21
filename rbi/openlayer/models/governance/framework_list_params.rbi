# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::FrameworkListParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        # Whether to sort in ascending order.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :asc

        sig { params(asc: T::Boolean).void }
        attr_writer :asc

        # How to compare each framework's completion percentage with `completionValue`.
        # Must be sent together with `completionValue`.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::FrameworkListParams::CompletionOperator::OrSymbol
            )
          )
        end
        attr_reader :completion_operator

        sig do
          params(
            completion_operator:
              Openlayer::Governance::FrameworkListParams::CompletionOperator::OrSymbol
          ).void
        end
        attr_writer :completion_operator

        # The completion percentage to compare against, from 0 to 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :completion_value

        sig { params(completion_value: Integer).void }
        attr_writer :completion_value

        # Only include frameworks that are enabled (or disabled).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # Whether to include a `ruleStats` object on each framework, with its rule result
        # status counts and its per-project completion buckets. Computed over the returned
        # page only.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_rule_stats

        sig { params(include_rule_stats: T::Boolean).void }
        attr_writer :include_rule_stats

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

        # Filter by a free-text search over names and descriptions.
        sig { returns(T.nilable(String)) }
        attr_reader :search_query

        sig { params(search_query: String).void }
        attr_writer :search_query

        # The column to sort on.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::FrameworkListParams::SortColumn::OrSymbol
            )
          )
        end
        attr_reader :sort_column

        sig do
          params(
            sort_column:
              Openlayer::Governance::FrameworkListParams::SortColumn::OrSymbol
          ).void
        end
        attr_writer :sort_column

        # Only include frameworks carrying all of these tags.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(
            workspace_id: String,
            asc: T::Boolean,
            completion_operator:
              Openlayer::Governance::FrameworkListParams::CompletionOperator::OrSymbol,
            completion_value: Integer,
            enabled: T::Boolean,
            include_rule_stats: T::Boolean,
            page: Integer,
            per_page: Integer,
            project_id: String,
            search_query: String,
            sort_column:
              Openlayer::Governance::FrameworkListParams::SortColumn::OrSymbol,
            tags: T::Array[String],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          # Whether to sort in ascending order.
          asc: nil,
          # How to compare each framework's completion percentage with `completionValue`.
          # Must be sent together with `completionValue`.
          completion_operator: nil,
          # The completion percentage to compare against, from 0 to 100.
          completion_value: nil,
          # Only include frameworks that are enabled (or disabled).
          enabled: nil,
          # Whether to include a `ruleStats` object on each framework, with its rule result
          # status counts and its per-project completion buckets. Computed over the returned
          # page only.
          include_rule_stats: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Only include items that apply to this project.
          project_id: nil,
          # Filter by a free-text search over names and descriptions.
          search_query: nil,
          # The column to sort on.
          sort_column: nil,
          # Only include frameworks carrying all of these tags.
          tags: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              asc: T::Boolean,
              completion_operator:
                Openlayer::Governance::FrameworkListParams::CompletionOperator::OrSymbol,
              completion_value: Integer,
              enabled: T::Boolean,
              include_rule_stats: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              search_query: String,
              sort_column:
                Openlayer::Governance::FrameworkListParams::SortColumn::OrSymbol,
              tags: T::Array[String],
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # How to compare each framework's completion percentage with `completionValue`.
        # Must be sent together with `completionValue`.
        module CompletionOperator
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Governance::FrameworkListParams::CompletionOperator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS =
            T.let(
              :is,
              Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
            )
          GREATER =
            T.let(
              :">",
              Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
            )
          GREATER_OR_EQUALS =
            T.let(
              :">=",
              Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
            )
          LESS =
            T.let(
              :"<",
              Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
            )
          LESS_OR_EQUALS =
            T.let(
              :"<=",
              Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
            )
          NOT_EQUALS =
            T.let(
              :"!=",
              Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::FrameworkListParams::CompletionOperator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The column to sort on.
        module SortColumn
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Openlayer::Governance::FrameworkListParams::SortColumn
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAME =
            T.let(
              :name,
              Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
            )
          ENABLED =
            T.let(
              :enabled,
              Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
            )
          DATE_CREATED =
            T.let(
              :dateCreated,
              Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
            )
          DATE_UPDATED =
            T.let(
              :dateUpdated,
              Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
            )
          OVERALL_COMPLETION =
            T.let(
              :overallCompletion,
              Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
            )
          PROJECT_COMPLETION_BUCKETS =
            T.let(
              :projectCompletionBuckets,
              Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::FrameworkListParams::SortColumn::TaggedSymbol
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
