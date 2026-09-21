# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkCreateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::FrameworkCreateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        # Whether the framework is active. Rules of a disabled framework are not evaluated
        # and do not count towards compliance.
        sig { returns(T::Boolean) }
        attr_accessor :enabled

        # The framework name.
        sig { returns(String) }
        attr_accessor :name

        # Free-form labels on the framework.
        sig { returns(T::Array[String]) }
        attr_accessor :tags

        # The icon shown for the framework.
        sig do
          returns(
            T.nilable(
              Openlayer::Models::Governance::FrameworkCreateResponse::Avatar
            )
          )
        end
        attr_reader :avatar

        sig do
          params(
            avatar:
              T.nilable(
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::OrHash
              )
          ).void
        end
        attr_writer :avatar

        # Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
        # `iso_42001`, `nist_ai_rmf`, or `traiga`. `null` for frameworks you create
        # yourself.
        sig { returns(T.nilable(String)) }
        attr_accessor :built_in_slug

        # A short description of the framework.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # A longer, rich-text description, as a TipTap JSON document.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :extended_description

        # A link to the external standard or regulation the framework is based on.
        sig { returns(T.nilable(String)) }
        attr_accessor :href

        # Determines which projects the framework applies to. An empty or `null` `match`
        # array applies the framework to every project in the workspace.
        sig do
          returns(
            T.nilable(
              Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector
            )
          )
        end
        attr_reader :project_selector

        sig do
          params(
            project_selector:
              T.nilable(
                Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::OrHash
              )
          ).void
        end
        attr_writer :project_selector

        # The framework id.
        sig { returns(String) }
        attr_accessor :id

        # The creation date.
        sig { returns(Time) }
        attr_accessor :date_created

        # The last update date.
        sig { returns(Time) }
        attr_accessor :date_updated

        # The id of the workspace the framework belongs to.
        sig { returns(String) }
        attr_accessor :workspace_id

        # The user who created the framework. `null` for built-in frameworks.
        sig { returns(T.nilable(String)) }
        attr_accessor :creator_id

        # Whether the framework definition is managed by Openlayer and cannot be edited.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :immutable

        sig { params(immutable: T::Boolean).void }
        attr_writer :immutable

        # Compliance roll-up for the framework. Present only on
        # `GET /workspaces/{workspaceId}/frameworks` when the request sets
        # `includeRuleStats=true`.
        sig do
          returns(
            T.nilable(
              Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats
            )
          )
        end
        attr_reader :rule_stats

        sig do
          params(
            rule_stats:
              Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::OrHash
          ).void
        end
        attr_writer :rule_stats

        sig do
          params(
            id: String,
            date_created: Time,
            date_updated: Time,
            enabled: T::Boolean,
            name: String,
            tags: T::Array[String],
            workspace_id: String,
            avatar:
              T.nilable(
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::OrHash
              ),
            built_in_slug: T.nilable(String),
            creator_id: T.nilable(String),
            description: T.nilable(String),
            extended_description: T.nilable(T::Hash[Symbol, T.anything]),
            href: T.nilable(String),
            immutable: T::Boolean,
            project_selector:
              T.nilable(
                Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::OrHash
              ),
            rule_stats:
              Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The framework id.
          id:,
          # The creation date.
          date_created:,
          # The last update date.
          date_updated:,
          # Whether the framework is active. Rules of a disabled framework are not evaluated
          # and do not count towards compliance.
          enabled:,
          # The framework name.
          name:,
          # Free-form labels on the framework.
          tags:,
          # The id of the workspace the framework belongs to.
          workspace_id:,
          # The icon shown for the framework.
          avatar: nil,
          # Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
          # `iso_42001`, `nist_ai_rmf`, or `traiga`. `null` for frameworks you create
          # yourself.
          built_in_slug: nil,
          # The user who created the framework. `null` for built-in frameworks.
          creator_id: nil,
          # A short description of the framework.
          description: nil,
          # A longer, rich-text description, as a TipTap JSON document.
          extended_description: nil,
          # A link to the external standard or regulation the framework is based on.
          href: nil,
          # Whether the framework definition is managed by Openlayer and cannot be edited.
          immutable: nil,
          # Determines which projects the framework applies to. An empty or `null` `match`
          # array applies the framework to every project in the workspace.
          project_selector: nil,
          # Compliance roll-up for the framework. Present only on
          # `GET /workspaces/{workspaceId}/frameworks` when the request sets
          # `includeRuleStats=true`.
          rule_stats: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              date_created: Time,
              date_updated: Time,
              enabled: T::Boolean,
              name: String,
              tags: T::Array[String],
              workspace_id: String,
              avatar:
                T.nilable(
                  Openlayer::Models::Governance::FrameworkCreateResponse::Avatar
                ),
              built_in_slug: T.nilable(String),
              creator_id: T.nilable(String),
              description: T.nilable(String),
              extended_description: T.nilable(T::Hash[Symbol, T.anything]),
              href: T.nilable(String),
              immutable: T::Boolean,
              project_selector:
                T.nilable(
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector
                ),
              rule_stats:
                Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats
            }
          )
        end
        def to_hash
        end

        class Avatar < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar,
                Openlayer::Internal::AnyHash
              )
            end

          sig do
            returns(
              Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(String) }
          attr_accessor :value

          # The icon shown for the framework.
          sig do
            params(
              type:
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(type:, value:)
          end

          sig do
            override.returns(
              {
                type:
                  Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::TaggedSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          module Type
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMOJI =
              T.let(
                :emoji,
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::TaggedSymbol
              )
            IMAGE_URL =
              T.let(
                :imageUrl,
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::TaggedSymbol
              )
            BUILTIN_IMAGE =
              T.let(
                :builtinImage,
                Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Governance::FrameworkCreateResponse::Avatar::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ProjectSelector < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector,
                Openlayer::Internal::AnyHash
              )
            end

          # Match criteria, ANDed together.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match
                ]
              )
            )
          end
          attr_accessor :match

          # Determines which projects the framework applies to. An empty or `null` `match`
          # array applies the framework to every project in the workspace.
          sig do
            params(
              match:
                T.nilable(
                  T::Array[
                    Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::OrHash
                  ]
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Match criteria, ANDed together.
            match: nil
          )
          end

          sig do
            override.returns(
              {
                match:
                  T.nilable(
                    T::Array[
                      Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match
                    ]
                  )
              }
            )
          end
          def to_hash
          end

          class Match < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match,
                  Openlayer::Internal::AnyHash
                )
              end

            # The project property to match against.
            sig do
              returns(
                Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
              )
            end
            attr_accessor :property

            # The value to match against. Pass an array to match any of several values, or
            # `null` to match projects where the property is unset. Omit it for `exists` and
            # `notExists`.
            sig { returns(T.anything) }
            attr_accessor :value

            # How to compare the project property with `value`. One of `equals`, `notEquals`,
            # `contains`, `notContains`, `startsWith`, `endsWith`, `in`, `notIn`,
            # `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`,
            # `equalsIgnoreCase`, `containsIgnoreCase`, `matches`, `exists`, or `notExists`.
            sig { returns(T.nilable(String)) }
            attr_reader :operator

            sig { params(operator: String).void }
            attr_writer :operator

            sig do
              params(
                property:
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::OrSymbol,
                value: T.anything,
                operator: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The project property to match against.
              property:,
              # The value to match against. Pass an array to match any of several values, or
              # `null` to match projects where the property is unset. Omit it for `exists` and
              # `notExists`.
              value:,
              # How to compare the project property with `value`. One of `equals`, `notEquals`,
              # `contains`, `notContains`, `startsWith`, `endsWith`, `in`, `notIn`,
              # `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`,
              # `equalsIgnoreCase`, `containsIgnoreCase`, `matches`, `exists`, or `notExists`.
              operator: nil
            )
            end

            sig do
              override.returns(
                {
                  property:
                    Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol,
                  value: T.anything,
                  operator: String
                }
              )
            end
            def to_hash
            end

            # The project property to match against.
            module Property
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TASK_TYPE =
                T.let(
                  :taskType,
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                )
              RISK_LEVEL =
                T.let(
                  :riskLevel,
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                )
              RISK_TOTAL_SCORE =
                T.let(
                  :riskTotalScore,
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                )
              NAME =
                T.let(
                  :name,
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                )
              OWNER_ID =
                T.let(
                  :ownerId,
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                )
              MODEL_TYPES =
                T.let(
                  :modelTypes,
                  Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Governance::FrameworkCreateResponse::ProjectSelector::Match::Property::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class RuleStats < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats,
                Openlayer::Internal::AnyHash
              )
            end

          # How many of the framework's projects fall into each completion band, where a
          # project's completion is the share of its rule results that are passing or
          # skipped. Projects with no evaluated results count as `low`.
          #
          # Zeroed when the request carries `projectId`: the bands compare a framework's
          # projects against each other, which says nothing about a single project.
          sig do
            returns(
              Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::ProjectCompletion
            )
          end
          attr_reader :project_completion

          sig do
            params(
              project_completion:
                Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::ProjectCompletion::OrHash
            ).void
          end
          attr_writer :project_completion

          # Rule result counts by status for this framework, matching what
          # `/workspaces/{workspaceId}/rule-stats?frameworkId=<id>` reports. Narrowed to a
          # single project when the request also carries `projectId`.
          sig do
            returns(
              Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::RuleResults
            )
          end
          attr_reader :rule_results

          sig do
            params(
              rule_results:
                Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::RuleResults::OrHash
            ).void
          end
          attr_writer :rule_results

          # Compliance roll-up for the framework. Present only on
          # `GET /workspaces/{workspaceId}/frameworks` when the request sets
          # `includeRuleStats=true`.
          sig do
            params(
              project_completion:
                Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::ProjectCompletion::OrHash,
              rule_results:
                Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::RuleResults::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # How many of the framework's projects fall into each completion band, where a
            # project's completion is the share of its rule results that are passing or
            # skipped. Projects with no evaluated results count as `low`.
            #
            # Zeroed when the request carries `projectId`: the bands compare a framework's
            # projects against each other, which says nothing about a single project.
            project_completion:,
            # Rule result counts by status for this framework, matching what
            # `/workspaces/{workspaceId}/rule-stats?frameworkId=<id>` reports. Narrowed to a
            # single project when the request also carries `projectId`.
            rule_results:
          )
          end

          sig do
            override.returns(
              {
                project_completion:
                  Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::ProjectCompletion,
                rule_results:
                  Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::RuleResults
              }
            )
          end
          def to_hash
          end

          class ProjectCompletion < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::ProjectCompletion,
                  Openlayer::Internal::AnyHash
                )
              end

            # Projects at 80% completion or above.
            sig { returns(Integer) }
            attr_accessor :high

            # Projects below 20% completion.
            sig { returns(Integer) }
            attr_accessor :low

            # Projects at or above 20% but below 80% completion.
            sig { returns(Integer) }
            attr_accessor :mid

            # How many of the framework's projects fall into each completion band, where a
            # project's completion is the share of its rule results that are passing or
            # skipped. Projects with no evaluated results count as `low`.
            #
            # Zeroed when the request carries `projectId`: the bands compare a framework's
            # projects against each other, which says nothing about a single project.
            sig do
              params(high: Integer, low: Integer, mid: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # Projects at 80% completion or above.
              high:,
              # Projects below 20% completion.
              low:,
              # Projects at or above 20% but below 80% completion.
              mid:
            )
            end

            sig do
              override.returns({ high: Integer, low: Integer, mid: Integer })
            end
            def to_hash
            end
          end

          class RuleResults < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::FrameworkCreateResponse::RuleStats::RuleResults,
                  Openlayer::Internal::AnyHash
                )
              end

            # The total number of rule results.
            sig { returns(Integer) }
            attr_accessor :total

            # The number of rule results whose evidence is about to expire.
            sig { returns(Integer) }
            attr_accessor :total_due_soon

            # The number of rule results that errored during evaluation.
            sig { returns(Integer) }
            attr_accessor :total_error

            # The number of failing rule results.
            sig { returns(Integer) }
            attr_accessor :total_failing

            # The number of passing rule results.
            sig { returns(Integer) }
            attr_accessor :total_passing

            # The number of rule results that have not been satisfied yet.
            sig { returns(Integer) }
            attr_accessor :total_pending

            # The number of rule results currently being evaluated.
            sig { returns(Integer) }
            attr_accessor :total_running

            # The number of skipped rule results.
            sig { returns(Integer) }
            attr_accessor :total_skipped

            # Rule result counts by status for this framework, matching what
            # `/workspaces/{workspaceId}/rule-stats?frameworkId=<id>` reports. Narrowed to a
            # single project when the request also carries `projectId`.
            sig do
              params(
                total: Integer,
                total_due_soon: Integer,
                total_error: Integer,
                total_failing: Integer,
                total_passing: Integer,
                total_pending: Integer,
                total_running: Integer,
                total_skipped: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # The total number of rule results.
              total:,
              # The number of rule results whose evidence is about to expire.
              total_due_soon:,
              # The number of rule results that errored during evaluation.
              total_error:,
              # The number of failing rule results.
              total_failing:,
              # The number of passing rule results.
              total_passing:,
              # The number of rule results that have not been satisfied yet.
              total_pending:,
              # The number of rule results currently being evaluated.
              total_running:,
              # The number of skipped rule results.
              total_skipped:
            )
            end

            sig do
              override.returns(
                {
                  total: Integer,
                  total_due_soon: Integer,
                  total_error: Integer,
                  total_failing: Integer,
                  total_passing: Integer,
                  total_pending: Integer,
                  total_running: Integer,
                  total_skipped: Integer
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
