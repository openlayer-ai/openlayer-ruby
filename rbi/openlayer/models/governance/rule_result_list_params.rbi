# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleResultListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleResultListParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

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

        # Only include results of this rule.
        sig { returns(T.nilable(String)) }
        attr_reader :rule_id

        sig { params(rule_id: String).void }
        attr_writer :rule_id

        # Only include rules with this scope.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::RuleResultListParams::Scope::OrSymbol
            )
          )
        end
        attr_reader :scope

        sig do
          params(
            scope: Openlayer::Governance::RuleResultListParams::Scope::OrSymbol
          ).void
        end
        attr_writer :scope

        # Filter by a free-text search over names and descriptions.
        sig { returns(T.nilable(String)) }
        attr_reader :search_query

        sig { params(search_query: String).void }
        attr_writer :search_query

        # Only include items whose rule result has this compliance status.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::RuleResultListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Openlayer::Governance::RuleResultListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Only include rules of this type.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::RuleResultListParams::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Openlayer::Governance::RuleResultListParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            workspace_id: String,
            enabled_framework_only: T::Boolean,
            framework_id: String,
            include_unframed: T::Boolean,
            page: Integer,
            per_page: Integer,
            project_id: String,
            rule_id: String,
            scope: Openlayer::Governance::RuleResultListParams::Scope::OrSymbol,
            search_query: String,
            status:
              Openlayer::Governance::RuleResultListParams::Status::OrSymbol,
            type: Openlayer::Governance::RuleResultListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          # Only include items belonging to at least one enabled framework.
          enabled_framework_only: nil,
          # Only include items belonging to this framework.
          framework_id: nil,
          # Whether to include rules that are not part of any framework.
          include_unframed: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Only include items that apply to this project.
          project_id: nil,
          # Only include results of this rule.
          rule_id: nil,
          # Only include rules with this scope.
          scope: nil,
          # Filter by a free-text search over names and descriptions.
          search_query: nil,
          # Only include items whose rule result has this compliance status.
          status: nil,
          # Only include rules of this type.
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              enabled_framework_only: T::Boolean,
              framework_id: String,
              include_unframed: T::Boolean,
              page: Integer,
              per_page: Integer,
              project_id: String,
              rule_id: String,
              scope:
                Openlayer::Governance::RuleResultListParams::Scope::OrSymbol,
              search_query: String,
              status:
                Openlayer::Governance::RuleResultListParams::Status::OrSymbol,
              type: Openlayer::Governance::RuleResultListParams::Type::OrSymbol,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Only include rules with this scope.
        module Scope
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Governance::RuleResultListParams::Scope)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROJECT =
            T.let(
              :project,
              Openlayer::Governance::RuleResultListParams::Scope::TaggedSymbol
            )
          WORKSPACE =
            T.let(
              :workspace,
              Openlayer::Governance::RuleResultListParams::Scope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleResultListParams::Scope::TaggedSymbol
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
              T.all(Symbol, Openlayer::Governance::RuleResultListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(
              :running,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )
          PASSING =
            T.let(
              :passing,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )
          FAILING =
            T.let(
              :failing,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )
          DUE_SOON =
            T.let(
              :due_soon,
              Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleResultListParams::Status::TaggedSymbol
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
              T.all(Symbol, Openlayer::Governance::RuleResultListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLATFORM =
            T.let(
              :platform,
              Openlayer::Governance::RuleResultListParams::Type::TaggedSymbol
            )
          EVIDENCE =
            T.let(
              :evidence,
              Openlayer::Governance::RuleResultListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Governance::RuleResultListParams::Type::TaggedSymbol
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
