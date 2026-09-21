# frozen_string_literal: true

module Openlayer
  module Resources
    class Governance
      class Frameworks
        # @return [Openlayer::Resources::Governance::Frameworks::Documents]
        attr_reader :documents

        # @return [Openlayer::Resources::Governance::Frameworks::Sections]
        attr_reader :sections

        # @return [Openlayer::Resources::Governance::Frameworks::Subsections]
        attr_reader :subsections

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::FrameworkCreateParams} for more details.
        #
        # Create a custom governance framework in a workspace.
        #
        # Use this to track compliance against an internal policy, or against a standard
        # Openlayer does not ship as a built-in framework. A new framework starts with no
        # rules -- add them from the Openlayer app, or map an existing rule to it.
        #
        # A framework is created disabled unless you pass `enabled: true`. While it is
        # disabled its rules are not evaluated and do not count towards compliance.
        #
        # @overload create(workspace_id, name:, description: nil, enabled: nil, project_selector: nil, tags: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param name [String] The framework name.
        #
        # @param description [String, nil] A short description of the framework.
        #
        # @param enabled [Boolean] Whether the framework is active. Rules of a disabled framework are not evaluated
        #
        # @param project_selector [Openlayer::Models::Governance::FrameworkCreateParams::ProjectSelector, nil] Determines which projects the framework applies to. An empty or `null` `match` a
        #
        # @param tags [Array<String>] Free-form labels on the framework.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkCreateResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkCreateParams
        def create(workspace_id, params)
          parsed, options = Openlayer::Governance::FrameworkCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["workspaces/%1$s/frameworks", workspace_id],
            body: parsed,
            model: Openlayer::Models::Governance::FrameworkCreateResponse,
            options: options
          )
        end

        # Retrieve a governance framework by its id.
        #
        # @overload retrieve(framework_id, request_options: {})
        #
        # @param framework_id [String] The framework id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkRetrieveResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkRetrieveParams
        def retrieve(framework_id, params = {})
          @client.request(
            method: :get,
            path: ["frameworks/%1$s", framework_id],
            model: Openlayer::Models::Governance::FrameworkRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::FrameworkUpdateParams} for more details.
        #
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
        #
        # @overload update(framework_id, avatar: nil, description: nil, enabled: nil, extended_description: nil, href: nil, name: nil, project_selector: nil, tags: nil, request_options: {})
        #
        # @param framework_id [String] The framework id.
        #
        # @param avatar [Openlayer::Models::Governance::FrameworkUpdateParams::Avatar, nil] The icon shown for the framework.
        #
        # @param description [String, nil] A short description of the framework.
        #
        # @param enabled [Boolean] Whether the framework is active. Rules of a disabled framework are not evaluated
        #
        # @param extended_description [Hash{Symbol=>Object}, nil] A longer, rich-text description, as a TipTap JSON document.
        #
        # @param href [String, nil] A link to the external standard or regulation the framework is based on.
        #
        # @param name [String] The framework name.
        #
        # @param project_selector [Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector, nil] Determines which projects the framework applies to. An empty or `null` `match` a
        #
        # @param tags [Array<String>] Free-form labels on the framework.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkUpdateResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkUpdateParams
        def update(framework_id, params = {})
          parsed, options = Openlayer::Governance::FrameworkUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["frameworks/%1$s", framework_id],
            body: parsed,
            model: Openlayer::Models::Governance::FrameworkUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Governance::FrameworkListParams} for more details.
        #
        # List the governance frameworks in a workspace.
        #
        # A framework is a set of rules -- drawn from a regulation, a standard, or your
        # own internal policy -- that Openlayer tracks compliance against. Use this
        # endpoint to find the framework you want to report on, then read its rules and
        # rule results.
        #
        # @overload list(workspace_id, asc: nil, completion_operator: nil, completion_value: nil, enabled: nil, include_rule_stats: nil, page: nil, per_page: nil, project_id: nil, search_query: nil, sort_column: nil, tags: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param asc [Boolean] Whether to sort in ascending order.
        #
        # @param completion_operator [Symbol, Openlayer::Models::Governance::FrameworkListParams::CompletionOperator] How to compare each framework's completion percentage with `completionValue`. Mu
        #
        # @param completion_value [Integer] The completion percentage to compare against, from 0 to 100.
        #
        # @param enabled [Boolean] Only include frameworks that are enabled (or disabled).
        #
        # @param include_rule_stats [Boolean] Whether to include a `ruleStats` object on each framework, with its rule result
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param project_id [String] Only include items that apply to this project.
        #
        # @param search_query [String] Filter by a free-text search over names and descriptions.
        #
        # @param sort_column [Symbol, Openlayer::Models::Governance::FrameworkListParams::SortColumn] The column to sort on.
        #
        # @param tags [Array<String>] Only include frameworks carrying all of these tags.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkListResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkListParams
        def list(workspace_id, params = {})
          parsed, options = Openlayer::Governance::FrameworkListParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/frameworks", workspace_id],
            query: query.transform_keys(
              completion_operator: "completionOperator",
              completion_value: "completionValue",
              include_rule_stats: "includeRuleStats",
              per_page: "perPage",
              project_id: "projectId",
              search_query: "searchQuery",
              sort_column: "sortColumn"
            ),
            model: Openlayer::Models::Governance::FrameworkListResponse,
            options: options
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
        #
        # @overload export(framework_id, project_id: nil, request_options: {})
        #
        # @param framework_id [String] The framework id.
        #
        # @param project_id [String, nil] Scope the export to this project. It must belong to the framework.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkExportResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkExportParams
        def export(framework_id, params = {})
          parsed, options = Openlayer::Governance::FrameworkExportParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["frameworks/%1$s/export", framework_id],
            body: parsed,
            model: Openlayer::Models::Governance::FrameworkExportResponse,
            options: options
          )
        end

        # Get a compliance roll-up for a framework, one row per project it applies to.
        #
        # Each row counts the project's rule results by status, so you can report on where
        # a framework is complete and where it is not without fetching every individual
        # rule result.
        #
        # @overload list_project_rule_stats(framework_id, asc: nil, page: nil, per_page: nil, sort_column: nil, request_options: {})
        #
        # @param framework_id [String] The framework id.
        #
        # @param asc [Boolean] Whether to sort in ascending order.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param sort_column [Symbol, Openlayer::Models::Governance::FrameworkListProjectRuleStatsParams::SortColumn] The column to sort on.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkListProjectRuleStatsParams
        def list_project_rule_stats(framework_id, params = {})
          parsed, options = Openlayer::Governance::FrameworkListProjectRuleStatsParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["frameworks/%1$s/project-rule-stats", framework_id],
            query: query.transform_keys(per_page: "perPage", sort_column: "sortColumn"),
            model: Openlayer::Models::Governance::FrameworkListProjectRuleStatsResponse,
            options: options
          )
        end

        # List the projects a framework applies to.
        #
        # Which projects a framework covers is determined by its `projectSelector`. A
        # framework with an empty selector applies to every project in the workspace.
        #
        # @overload list_projects(framework_id, page: nil, per_page: nil, request_options: {})
        #
        # @param framework_id [String] The framework id.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkListProjectsResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkListProjectsParams
        def list_projects(framework_id, params = {})
          parsed, options = Openlayer::Governance::FrameworkListProjectsParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["frameworks/%1$s/projects", framework_id],
            query: query.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Governance::FrameworkListProjectsResponse,
            options: options
          )
        end

        # List the rules that belong to a framework.
        #
        # To read the compliance status of these rules, use
        # [List rule results](/api-reference/rest/governance/list-rule-results) with the
        # `frameworkId` filter, or fetch the results of an individual rule.
        #
        # @overload list_rules(framework_id, page: nil, per_page: nil, request_options: {})
        #
        # @param framework_id [String] The framework id.
        #
        # @param page [Integer] The page to return in a paginated query.
        #
        # @param per_page [Integer] Maximum number of items to return per page.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Governance::FrameworkListRulesResponse]
        #
        # @see Openlayer::Models::Governance::FrameworkListRulesParams
        def list_rules(framework_id, params = {})
          parsed, options = Openlayer::Governance::FrameworkListRulesParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["frameworks/%1$s/rules", framework_id],
            query: query.transform_keys(per_page: "perPage"),
            model: Openlayer::Models::Governance::FrameworkListRulesResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Openlayer::Client]
        def initialize(client:)
          @client = client
          @documents = Openlayer::Resources::Governance::Frameworks::Documents.new(client: client)
          @sections = Openlayer::Resources::Governance::Frameworks::Sections.new(client: client)
          @subsections = Openlayer::Resources::Governance::Frameworks::Subsections.new(client: client)
        end
      end
    end
  end
end
