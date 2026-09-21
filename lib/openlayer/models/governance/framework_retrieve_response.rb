# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#retrieve
      class FrameworkRetrieveResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute enabled
        #   Whether the framework is active. Rules of a disabled framework are not evaluated
        #   and do not count towards compliance.
        #
        #   @return [Boolean]
        required :enabled, Openlayer::Internal::Type::Boolean

        # @!attribute name
        #   The framework name.
        #
        #   @return [String]
        required :name, String

        # @!attribute tags
        #   Free-form labels on the framework.
        #
        #   @return [Array<String>]
        required :tags, Openlayer::Internal::Type::ArrayOf[String]

        # @!attribute avatar
        #   The icon shown for the framework.
        #
        #   @return [Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar, nil]
        optional :avatar, -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar }, nil?: true

        # @!attribute built_in_slug
        #   Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
        #   `iso_42001`, `nist_ai_rmf`, or `traiga`. `null` for frameworks you create
        #   yourself.
        #
        #   @return [String, nil]
        optional :built_in_slug, String, api_name: :builtInSlug, nil?: true

        # @!attribute description
        #   A short description of the framework.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute extended_description
        #   A longer, rich-text description, as a TipTap JSON document.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :extended_description,
                 Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                 api_name: :extendedDescription,
                 nil?: true

        # @!attribute href
        #   A link to the external standard or regulation the framework is based on.
        #
        #   @return [String, nil]
        optional :href, String, nil?: true

        # @!attribute project_selector
        #   Determines which projects the framework applies to. An empty or `null` `match`
        #   array applies the framework to every project in the workspace.
        #
        #   @return [Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector, nil]
        optional :project_selector,
                 -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector },
                 api_name: :projectSelector,
                 nil?: true

        response_only do
          # @!attribute id
          #   The framework id.
          #
          #   @return [String]
          required :id, String

          # @!attribute date_created
          #   The creation date.
          #
          #   @return [Time]
          required :date_created, Time, api_name: :dateCreated

          # @!attribute date_updated
          #   The last update date.
          #
          #   @return [Time]
          required :date_updated, Time, api_name: :dateUpdated

          # @!attribute workspace_id
          #   The id of the workspace the framework belongs to.
          #
          #   @return [String]
          required :workspace_id, String, api_name: :workspaceId

          # @!attribute creator_id
          #   The user who created the framework. `null` for built-in frameworks.
          #
          #   @return [String, nil]
          optional :creator_id, String, api_name: :creatorId, nil?: true

          # @!attribute immutable
          #   Whether the framework definition is managed by Openlayer and cannot be edited.
          #
          #   @return [Boolean, nil]
          optional :immutable, Openlayer::Internal::Type::Boolean

          # @!attribute rule_stats
          #   Compliance roll-up for the framework. Present only on
          #   `GET /workspaces/{workspaceId}/frameworks` when the request sets
          #   `includeRuleStats=true`.
          #
          #   @return [Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats, nil]
          optional :rule_stats,
                   -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats },
                   api_name: :ruleStats
        end

        # @!method initialize(id:, date_created:, date_updated:, enabled:, name:, tags:, workspace_id:, avatar: nil, built_in_slug: nil, creator_id: nil, description: nil, extended_description: nil, href: nil, immutable: nil, project_selector: nil, rule_stats: nil)
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::FrameworkRetrieveResponse} for more details.
        #
        #   @param id [String] The framework id.
        #
        #   @param date_created [Time] The creation date.
        #
        #   @param date_updated [Time] The last update date.
        #
        #   @param enabled [Boolean] Whether the framework is active. Rules of a disabled framework are not evaluated
        #
        #   @param name [String] The framework name.
        #
        #   @param tags [Array<String>] Free-form labels on the framework.
        #
        #   @param workspace_id [String] The id of the workspace the framework belongs to.
        #
        #   @param avatar [Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar, nil] The icon shown for the framework.
        #
        #   @param built_in_slug [String, nil] Identifies a framework that ships with Openlayer, for example `eu_ai_act`,
        #   `iso\_
        #
        #   @param creator_id [String, nil] The user who created the framework. `null` for built-in frameworks.
        #
        #   @param description [String, nil] A short description of the framework.
        #
        #   @param extended_description [Hash{Symbol=>Object}, nil] A longer, rich-text description, as a TipTap JSON document.
        #
        #   @param href [String, nil] A link to the external standard or regulation the framework is based on.
        #
        #   @param immutable [Boolean] Whether the framework definition is managed by Openlayer and cannot be edited.
        #
        #   @param project_selector [Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector, nil] Determines which projects the framework applies to. An empty or `null` `match` a
        #
        #   @param rule_stats [Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats] Compliance roll-up for the framework. Present only on `GET /workspaces/{workspac

        # @see Openlayer::Models::Governance::FrameworkRetrieveResponse#avatar
        class Avatar < Openlayer::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar::Type]
          required :type, enum: -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar::Type }

          # @!attribute value
          #
          #   @return [String]
          required :value, String

          # @!method initialize(type:, value:)
          #   The icon shown for the framework.
          #
          #   @param type [Symbol, Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar::Type]
          #   @param value [String]

          # @see Openlayer::Models::Governance::FrameworkRetrieveResponse::Avatar#type
          module Type
            extend Openlayer::Internal::Type::Enum

            EMOJI = :emoji
            IMAGE_URL = :imageUrl
            BUILTIN_IMAGE = :builtinImage

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Openlayer::Models::Governance::FrameworkRetrieveResponse#project_selector
        class ProjectSelector < Openlayer::Internal::Type::BaseModel
          # @!attribute match
          #   Match criteria, ANDed together.
          #
          #   @return [Array<Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match>, nil]
          optional :match,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match] },
                   nil?: true

          # @!method initialize(match: nil)
          #   Determines which projects the framework applies to. An empty or `null` `match`
          #   array applies the framework to every project in the workspace.
          #
          #   @param match [Array<Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match>, nil] Match criteria, ANDed together.

          class Match < Openlayer::Internal::Type::BaseModel
            # @!attribute property
            #   The project property to match against.
            #
            #   @return [Symbol, Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match::Property]
            required :property,
                     enum: -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match::Property }

            # @!attribute value
            #   The value to match against. Pass an array to match any of several values, or
            #   `null` to match projects where the property is unset. Omit it for `exists` and
            #   `notExists`.
            #
            #   @return [Object]
            required :value, Openlayer::Internal::Type::Unknown

            # @!attribute operator
            #   How to compare the project property with `value`. One of `equals`, `notEquals`,
            #   `contains`, `notContains`, `startsWith`, `endsWith`, `in`, `notIn`,
            #   `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`,
            #   `equalsIgnoreCase`, `containsIgnoreCase`, `matches`, `exists`, or `notExists`.
            #
            #   @return [String, nil]
            optional :operator, String

            # @!method initialize(property:, value:, operator: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match}
            #   for more details.
            #
            #   @param property [Symbol, Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match::Property] The project property to match against.
            #
            #   @param value [Object] The value to match against. Pass an array to match any of several values, or `nu
            #
            #   @param operator [String] How to compare the project property with `value`. One of `equals`, `notEquals`,

            # The project property to match against.
            #
            # @see Openlayer::Models::Governance::FrameworkRetrieveResponse::ProjectSelector::Match#property
            module Property
              extend Openlayer::Internal::Type::Enum

              TASK_TYPE = :taskType
              RISK_LEVEL = :riskLevel
              RISK_TOTAL_SCORE = :riskTotalScore
              NAME = :name
              OWNER_ID = :ownerId
              MODEL_TYPES = :modelTypes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see Openlayer::Models::Governance::FrameworkRetrieveResponse#rule_stats
        class RuleStats < Openlayer::Internal::Type::BaseModel
          # @!attribute project_completion
          #   How many of the framework's projects fall into each completion band, where a
          #   project's completion is the share of its rule results that are passing or
          #   skipped. Projects with no evaluated results count as `low`.
          #
          #   Zeroed when the request carries `projectId`: the bands compare a framework's
          #   projects against each other, which says nothing about a single project.
          #
          #   @return [Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats::ProjectCompletion]
          required :project_completion,
                   -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats::ProjectCompletion },
                   api_name: :projectCompletion

          # @!attribute rule_results
          #   Rule result counts by status for this framework, matching what
          #   `/workspaces/{workspaceId}/rule-stats?frameworkId=<id>` reports. Narrowed to a
          #   single project when the request also carries `projectId`.
          #
          #   @return [Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats::RuleResults]
          required :rule_results,
                   -> { Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats::RuleResults },
                   api_name: :ruleResults

          # @!method initialize(project_completion:, rule_results:)
          #   Some parameter documentations has been truncated, see
          #   {Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats} for more
          #   details.
          #
          #   Compliance roll-up for the framework. Present only on
          #   `GET /workspaces/{workspaceId}/frameworks` when the request sets
          #   `includeRuleStats=true`.
          #
          #   @param project_completion [Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats::ProjectCompletion] How many of the framework's projects fall into each completion band, where a pro
          #
          #   @param rule_results [Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats::RuleResults] Rule result counts by status for this framework, matching what `/workspaces/{wor

          # @see Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats#project_completion
          class ProjectCompletion < Openlayer::Internal::Type::BaseModel
            # @!attribute high
            #   Projects at 80% completion or above.
            #
            #   @return [Integer]
            required :high, Integer

            # @!attribute low
            #   Projects below 20% completion.
            #
            #   @return [Integer]
            required :low, Integer

            # @!attribute mid
            #   Projects at or above 20% but below 80% completion.
            #
            #   @return [Integer]
            required :mid, Integer

            # @!method initialize(high:, low:, mid:)
            #   How many of the framework's projects fall into each completion band, where a
            #   project's completion is the share of its rule results that are passing or
            #   skipped. Projects with no evaluated results count as `low`.
            #
            #   Zeroed when the request carries `projectId`: the bands compare a framework's
            #   projects against each other, which says nothing about a single project.
            #
            #   @param high [Integer] Projects at 80% completion or above.
            #
            #   @param low [Integer] Projects below 20% completion.
            #
            #   @param mid [Integer] Projects at or above 20% but below 80% completion.
          end

          # @see Openlayer::Models::Governance::FrameworkRetrieveResponse::RuleStats#rule_results
          class RuleResults < Openlayer::Internal::Type::BaseModel
            # @!attribute total
            #   The total number of rule results.
            #
            #   @return [Integer]
            required :total, Integer

            # @!attribute total_due_soon
            #   The number of rule results whose evidence is about to expire.
            #
            #   @return [Integer]
            required :total_due_soon, Integer, api_name: :totalDueSoon

            # @!attribute total_error
            #   The number of rule results that errored during evaluation.
            #
            #   @return [Integer]
            required :total_error, Integer, api_name: :totalError

            # @!attribute total_failing
            #   The number of failing rule results.
            #
            #   @return [Integer]
            required :total_failing, Integer, api_name: :totalFailing

            # @!attribute total_passing
            #   The number of passing rule results.
            #
            #   @return [Integer]
            required :total_passing, Integer, api_name: :totalPassing

            # @!attribute total_pending
            #   The number of rule results that have not been satisfied yet.
            #
            #   @return [Integer]
            required :total_pending, Integer, api_name: :totalPending

            # @!attribute total_running
            #   The number of rule results currently being evaluated.
            #
            #   @return [Integer]
            required :total_running, Integer, api_name: :totalRunning

            # @!attribute total_skipped
            #   The number of skipped rule results.
            #
            #   @return [Integer]
            required :total_skipped, Integer, api_name: :totalSkipped

            # @!method initialize(total:, total_due_soon:, total_error:, total_failing:, total_passing:, total_pending:, total_running:, total_skipped:)
            #   Rule result counts by status for this framework, matching what
            #   `/workspaces/{workspaceId}/rule-stats?frameworkId=<id>` reports. Narrowed to a
            #   single project when the request also carries `projectId`.
            #
            #   @param total [Integer] The total number of rule results.
            #
            #   @param total_due_soon [Integer] The number of rule results whose evidence is about to expire.
            #
            #   @param total_error [Integer] The number of rule results that errored during evaluation.
            #
            #   @param total_failing [Integer] The number of failing rule results.
            #
            #   @param total_passing [Integer] The number of passing rule results.
            #
            #   @param total_pending [Integer] The number of rule results that have not been satisfied yet.
            #
            #   @param total_running [Integer] The number of rule results currently being evaluated.
            #
            #   @param total_skipped [Integer] The number of skipped rule results.
          end
        end
      end
    end
  end
end
