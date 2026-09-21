# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleListParams,
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

        # Only include rules assigned to this user.
        sig { returns(T.nilable(String)) }
        attr_reader :assignee_id

        sig { params(assignee_id: String).void }
        attr_writer :assignee_id

        # Only include rules that are deactivated (or active).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :deactivated

        sig { params(deactivated: T::Boolean).void }
        attr_writer :deactivated

        # Only include items belonging to at least one enabled framework.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled_framework_only

        sig { params(enabled_framework_only: T::Boolean).void }
        attr_writer :enabled_framework_only

        # Only include items belonging to this framework.
        sig { returns(T.nilable(String)) }
        attr_reader :framework_id

        sig { params(framework_id: String).void }
        attr_writer :framework_id

        # Only include rules in one bucket of the compliance workflow. `open` covers rules
        # that still need attention, `done` covers rules that are fully satisfied, and
        # `excluded` covers rules that have been deactivated.
        sig do
          returns(
            T.nilable(Openlayer::Governance::RuleListParams::Group::OrSymbol)
          )
        end
        attr_reader :group

        sig do
          params(
            group: Openlayer::Governance::RuleListParams::Group::OrSymbol
          ).void
        end
        attr_writer :group

        # Whether to include each rule's results inline, in a `results` array.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_results

        sig { params(include_results: T::Boolean).void }
        attr_writer :include_results

        # Whether to include rules that are not part of any framework.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_unframed

        sig { params(include_unframed: T::Boolean).void }
        attr_writer :include_unframed

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

        # Only include rules with this scope.
        sig do
          returns(
            T.nilable(Openlayer::Governance::RuleListParams::Scope::OrSymbol)
          )
        end
        attr_reader :scope

        sig do
          params(
            scope: Openlayer::Governance::RuleListParams::Scope::OrSymbol
          ).void
        end
        attr_writer :scope

        # Filter by a free-text search over names and descriptions.
        sig { returns(T.nilable(String)) }
        attr_reader :search_query

        sig { params(search_query: String).void }
        attr_writer :search_query

        # The field to sort on.
        sig do
          returns(
            T.nilable(Openlayer::Governance::RuleListParams::SortBy::OrSymbol)
          )
        end
        attr_reader :sort_by

        sig do
          params(
            sort_by: Openlayer::Governance::RuleListParams::SortBy::OrSymbol
          ).void
        end
        attr_writer :sort_by

        # Only include items whose rule result has this compliance status.
        sig do
          returns(
            T.nilable(Openlayer::Governance::RuleListParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Openlayer::Governance::RuleListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Only include rules carrying all of these rule tags. Pass tag ids, which you can
        # look up with [List rule tags](/api-reference/rest/governance/list-rule-tags).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Only include rules of this type.
        sig do
          returns(
            T.nilable(Openlayer::Governance::RuleListParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Openlayer::Governance::RuleListParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            workspace_id: String,
            asc: T::Boolean,
            assignee_id: String,
            deactivated: T::Boolean,
            enabled_framework_only: T::Boolean,
            framework_id: String,
            group: Openlayer::Governance::RuleListParams::Group::OrSymbol,
            include_results: T::Boolean,
            include_unframed: T::Boolean,
            page: Integer,
            per_page: Integer,
            project_id: String,
            scope: Openlayer::Governance::RuleListParams::Scope::OrSymbol,
            search_query: String,
            sort_by: Openlayer::Governance::RuleListParams::SortBy::OrSymbol,
            status: Openlayer::Governance::RuleListParams::Status::OrSymbol,
            tags: T::Array[String],
            type: Openlayer::Governance::RuleListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          # Whether to sort in ascending order.
          asc: nil,
          # Only include rules assigned to this user.
          assignee_id: nil,
          # Only include rules that are deactivated (or active).
          deactivated: nil,
          # Only include items belonging to at least one enabled framework.
          enabled_framework_only: nil,
          # Only include items belonging to this framework.
          framework_id: nil,
          # Only include rules in one bucket of the compliance workflow. `open` covers rules
          # that still need attention, `done` covers rules that are fully satisfied, and
          # `excluded` covers rules that have been deactivated.
          group: nil,
          # Whether to include each rule's results inline, in a `results` array.
          include_results: nil,
          # Whether to include rules that are not part of any framework.
          include_unframed: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Only include items that apply to this project.
          project_id: nil,
          # Only include rules with this scope.
          scope: nil,
          # Filter by a free-text search over names and descriptions.
          search_query: nil,
          # The field to sort on.
          sort_by: nil,
          # Only include items whose rule result has this compliance status.
          status: nil,
          # Only include rules carrying all of these rule tags. Pass tag ids, which you can
          # look up with [List rule tags](/api-reference/rest/governance/list-rule-tags).
          tags: nil,
          # Only include rules of this type.
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              asc: T::Boolean,
              assignee_id: String,
              deactivated: T::Boolean,
              enabled_framework_only: T::Boolean,
              framework_id: String,
              group: Openlayer::Governance::RuleListParams::Group::OrSymbol,
              include_results: T::Boolean,
              include_unframed: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              scope: Openlayer::Governance::RuleListParams::Scope::OrSymbol,
              search_query: String,
              sort_by: Openlayer::Governance::RuleListParams::SortBy::OrSymbol,
              status: Openlayer::Governance::RuleListParams::Status::OrSymbol,
              tags: T::Array[String],
              type: Openlayer::Governance::RuleListParams::Type::OrSymbol,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Only include rules in one bucket of the compliance workflow. `open` covers rules
        # that still need attention, `done` covers rules that are fully satisfied, and
        # `excluded` covers rules that have been deactivated.
        module Group
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleListParams::Group)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPEN =
            T.let(
              :open,
              Openlayer::Governance::RuleListParams::Group::TaggedSymbol
            )
          EXCLUDED =
            T.let(
              :excluded,
              Openlayer::Governance::RuleListParams::Group::TaggedSymbol
            )
          DONE =
            T.let(
              :done,
              Openlayer::Governance::RuleListParams::Group::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleListParams::Group::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Only include rules with this scope.
        module Scope
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleListParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROJECT =
            T.let(
              :project,
              Openlayer::Governance::RuleListParams::Scope::TaggedSymbol
            )
          WORKSPACE =
            T.let(
              :workspace,
              Openlayer::Governance::RuleListParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleListParams::Scope::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The field to sort on.
        module SortBy
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleListParams::SortBy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAME =
            T.let(
              :name,
              Openlayer::Governance::RuleListParams::SortBy::TaggedSymbol
            )
          STATUS =
            T.let(
              :status,
              Openlayer::Governance::RuleListParams::SortBy::TaggedSymbol
            )
          FRAMEWORKS =
            T.let(
              :frameworks,
              Openlayer::Governance::RuleListParams::SortBy::TaggedSymbol
            )
          SCOPE =
            T.let(
              :scope,
              Openlayer::Governance::RuleListParams::SortBy::TaggedSymbol
            )
          DATE_CREATED =
            T.let(
              :dateCreated,
              Openlayer::Governance::RuleListParams::SortBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleListParams::SortBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Only include items whose rule result has this compliance status.
        module Status
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(
              :running,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )
          PASSING =
            T.let(
              :passing,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )
          FAILING =
            T.let(
              :failing,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )
          DUE_SOON =
            T.let(
              :due_soon,
              Openlayer::Governance::RuleListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleListParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Only include rules of this type.
        module Type
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLATFORM =
            T.let(
              :platform,
              Openlayer::Governance::RuleListParams::Type::TaggedSymbol
            )
          EVIDENCE =
            T.let(
              :evidence,
              Openlayer::Governance::RuleListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleListParams::Type::TaggedSymbol
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
