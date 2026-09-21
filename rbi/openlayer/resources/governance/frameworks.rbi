# typed: strong

module Openlayer
  module Resources
    class Governance
      class Frameworks
        sig { returns(Openlayer::Resources::Governance::Frameworks::Documents) }
        attr_reader :documents

        sig { returns(Openlayer::Resources::Governance::Frameworks::Sections) }
        attr_reader :sections

        sig do
          returns(Openlayer::Resources::Governance::Frameworks::Subsections)
        end
        attr_reader :subsections

        # Create a custom governance framework in a workspace.
        #
        # Use this to track compliance against an internal policy, or against a standard
        # Openlayer does not ship as a built-in framework. A new framework starts with no
        # rules -- add them from the Openlayer app, or map an existing rule to it.
        #
        # A framework is created disabled unless you pass `enabled: true`. While it is
        # disabled its rules are not evaluated and do not count towards compliance.
        sig do
          params(
            workspace_id: String,
            name: String,
            description: T.nilable(String),
            enabled: T::Boolean,
            project_selector:
              T.nilable(
                Openlayer::Governance::FrameworkCreateParams::ProjectSelector::OrHash
              ),
            tags: T::Array[String],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::FrameworkCreateResponse)
        end
        def create(
          # The workspace id.
          workspace_id,
          # The framework name.
          name:,
          # A short description of the framework.
          description: nil,
          # Whether the framework is active. Rules of a disabled framework are not evaluated
          # and do not count towards compliance.
          enabled: nil,
          # Determines which projects the framework applies to. An empty or `null` `match`
          # array applies the framework to every project in the workspace.
          project_selector: nil,
          # Free-form labels on the framework.
          tags: nil,
          request_options: {}
        )
        end

        # Retrieve a governance framework by its id.
        sig do
          params(
            framework_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::FrameworkRetrieveResponse)
        end
        def retrieve(
          # The framework id.
          framework_id,
          request_options: {}
        )
        end

        # Update a governance framework.
        #
        # The most common use is activating or deactivating a framework for the workspace
        # by setting `enabled`. Rules of a disabled framework are not evaluated and do not
        # count towards compliance.
        #
        # Frameworks that ship with Openlayer report `immutable: true`. For those, only
        # `enabled`, `tags`, and `projectSelector` can be changed -- their name and
        # definition are managed by Openlayer.
        #
        # Only the fields you send are changed.
        sig do
          params(
            framework_id: String,
            avatar:
              T.nilable(
                Openlayer::Governance::FrameworkUpdateParams::Avatar::OrHash
              ),
            description: T.nilable(String),
            enabled: T::Boolean,
            extended_description: T.nilable(T::Hash[Symbol, T.anything]),
            href: T.nilable(String),
            name: String,
            project_selector:
              T.nilable(
                Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::OrHash
              ),
            tags: T::Array[String],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::FrameworkUpdateResponse)
        end
        def update(
          # The framework id.
          framework_id,
          # The icon shown for the framework.
          avatar: nil,
          # A short description of the framework.
          description: nil,
          # Whether the framework is active. Rules of a disabled framework are not evaluated
          # and do not count towards compliance.
          enabled: nil,
          # A longer, rich-text description, as a TipTap JSON document.
          extended_description: nil,
          # A link to the external standard or regulation the framework is based on.
          href: nil,
          # The framework name.
          name: nil,
          # Determines which projects the framework applies to. An empty or `null` `match`
          # array applies the framework to every project in the workspace.
          project_selector: nil,
          # Free-form labels on the framework.
          tags: nil,
          request_options: {}
        )
        end

        # List the governance frameworks in a workspace.
        #
        # A framework is a set of rules -- drawn from a regulation, a standard, or your
        # own internal policy -- that Openlayer tracks compliance against. Use this
        # endpoint to find the framework you want to report on, then read its rules and
        # rule results.
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
          ).returns(Openlayer::Models::Governance::FrameworkListResponse)
        end
        def list(
          # The workspace id.
          workspace_id,
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

        # Export a framework's evidence and progress as an audit-ready zip archive.
        #
        # The archive holds every evidence file uploaded against the framework's
        # evidence-based rules, a markdown report of the framework's progress and the
        # status of all its rules (broken down by documentation section when the framework
        # has documents), and CSV manifests of rules and evidence with SHA-256 checksums.
        #
        # Send `projectId` to export one project's compliance with the framework. Omit it
        # for the workspace-wide view across every project in the framework, including
        # workspace-scoped rules.
        #
        # The export runs as a background task, so this returns `202` immediately. To
        # collect the archive:
        #
        # 1. Poll `GET /background-tasks/{taskId}` with the returned `taskResultId` until
        #    `complete` is `true`.
        # 2. Read `outputs.storageUri` off that task.
        # 3. Exchange it for a download link at
        #    `GET /storage/presigned-url?storageUri=<uri>`.
        #
        # Rate limited to 2 requests per minute per framework. Asking for an export while
        # an identical one is still queued returns that task rather than starting a second
        # one.
        sig do
          params(
            framework_id: String,
            project_id: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::FrameworkExportResponse)
        end
        def export(
          # The framework id.
          framework_id,
          # Scope the export to this project. It must belong to the framework.
          project_id: nil,
          request_options: {}
        )
        end

        # Get a compliance roll-up for a framework, one row per project it applies to.
        #
        # Each row counts the project's rule results by status, so you can report on where
        # a framework is complete and where it is not without fetching every individual
        # rule result.
        sig do
          params(
            framework_id: String,
            asc: T::Boolean,
            page: Integer,
            per_page: Integer,
            sort_column:
              Openlayer::Governance::FrameworkListProjectRuleStatsParams::SortColumn::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse
          )
        end
        def list_project_rule_stats(
          # The framework id.
          framework_id,
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

        # List the projects a framework applies to.
        #
        # Which projects a framework covers is determined by its `projectSelector`. A
        # framework with an empty selector applies to every project in the workspace.
        sig do
          params(
            framework_id: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(
            Openlayer::Models::Governance::FrameworkListProjectsResponse
          )
        end
        def list_projects(
          # The framework id.
          framework_id,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          request_options: {}
        )
        end

        # List the rules that belong to a framework.
        #
        # To read the compliance status of these rules, use
        # [List rule results](/api-reference/rest/governance/list-rule-results) with the
        # `frameworkId` filter, or fetch the results of an individual rule.
        sig do
          params(
            framework_id: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::Governance::FrameworkListRulesResponse)
        end
        def list_rules(
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
