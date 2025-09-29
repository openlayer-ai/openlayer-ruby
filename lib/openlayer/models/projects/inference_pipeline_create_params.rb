# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::InferencePipelines#create
      class InferencePipelineCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute description
        #   The inference pipeline description.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute name
        #   The inference pipeline name.
        #
        #   @return [String]
        required :name, String

        # @!attribute project
        #
        #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::Project, nil]
        optional :project, -> { Openlayer::Projects::InferencePipelineCreateParams::Project }, nil?: true

        # @!attribute workspace
        #
        #   @return [Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace, nil]
        optional :workspace, -> { Openlayer::Projects::InferencePipelineCreateParams::Workspace }, nil?: true

        # @!method initialize(description:, name:, project: nil, workspace: nil, request_options: {})
        #   @param description [String, nil] The inference pipeline description.
        #
        #   @param name [String] The inference pipeline name.
        #
        #   @param project [Openlayer::Models::Projects::InferencePipelineCreateParams::Project, nil]
        #
        #   @param workspace [Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace, nil]
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        class Project < Openlayer::Internal::Type::BaseModel
          # @!attribute name
          #   The project name.
          #
          #   @return [String]
          required :name, String

          # @!attribute task_type
          #   The task type of the project.
          #
          #   @return [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::Project::TaskType]
          required :task_type,
                   enum: -> { Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType },
                   api_name: :taskType

          # @!attribute description
          #   The project description.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!method initialize(name:, task_type:, description: nil)
          #   @param name [String] The project name.
          #
          #   @param task_type [Symbol, Openlayer::Models::Projects::InferencePipelineCreateParams::Project::TaskType] The task type of the project.
          #
          #   @param description [String, nil] The project description.

          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#links
          class Links < Openlayer::Internal::Type::BaseModel
            # @!attribute app
            #
            #   @return [String]
            required :app, String

            # @!method initialize(app:)
            #   Links to the project.
            #
            #   @param app [String]
          end

          # The source of the project.
          #
          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#source
          module Source
            extend Openlayer::Internal::Type::Enum

            WEB = :web
            API = :api
            NULL = :null

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The task type of the project.
          #
          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#task_type
          module TaskType
            extend Openlayer::Internal::Type::Enum

            LLM_BASE = :"llm-base"
            TABULAR_CLASSIFICATION = :"tabular-classification"
            TABULAR_REGRESSION = :"tabular-regression"
            TEXT_CLASSIFICATION = :"text-classification"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Project#git_repo
          class GitRepo < Openlayer::Internal::Type::BaseModel
            # @!attribute git_account_id
            #
            #   @return [String]
            required :git_account_id, String, api_name: :gitAccountId

            # @!attribute git_id
            #
            #   @return [Integer]
            required :git_id, Integer, api_name: :gitId

            # @!attribute branch
            #
            #   @return [String, nil]
            optional :branch, String

            # @!attribute root_dir
            #
            #   @return [String, nil]
            optional :root_dir, String, api_name: :rootDir

            # @!method initialize(git_account_id:, git_id:, branch: nil, root_dir: nil)
            #   @param git_account_id [String]
            #   @param git_id [Integer]
            #   @param branch [String]
            #   @param root_dir [String]
          end
        end

        class Workspace < Openlayer::Internal::Type::BaseModel
          # @!attribute name
          #   The workspace name.
          #
          #   @return [String]
          required :name, String

          # @!attribute slug
          #   The workspace slug.
          #
          #   @return [String]
          required :slug, String

          # @!attribute saml_only_access
          #   Whether the workspace only allows SAML authentication.
          #
          #   @return [Boolean, nil]
          optional :saml_only_access, Openlayer::Internal::Type::Boolean, api_name: :samlOnlyAccess

          # @!attribute wildcard_domains
          #
          #   @return [Array<String>, nil]
          optional :wildcard_domains, Openlayer::Internal::Type::ArrayOf[String], api_name: :wildcardDomains

          request_only do
            # @!attribute invite_code
            #   The workspace invite code.
            #
            #   @return [String, nil]
            optional :invite_code, String, api_name: :inviteCode
          end

          # @!method initialize(name:, slug:, invite_code: nil, saml_only_access: nil, wildcard_domains: nil)
          #   @param name [String] The workspace name.
          #
          #   @param slug [String] The workspace slug.
          #
          #   @param invite_code [String] The workspace invite code.
          #
          #   @param saml_only_access [Boolean] Whether the workspace only allows SAML authentication.
          #
          #   @param wildcard_domains [Array<String>]

          # @see Openlayer::Models::Projects::InferencePipelineCreateParams::Workspace#status
          module Status
            extend Openlayer::Internal::Type::Enum

            ACTIVE = :active
            PAST_DUE = :past_due
            UNPAID = :unpaid
            CANCELED = :canceled
            INCOMPLETE = :incomplete
            INCOMPLETE_EXPIRED = :incomplete_expired
            TRIALING = :trialing
            PAUSED = :paused

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class MonthlyUsage < Openlayer::Internal::Type::BaseModel
            # @!attribute execution_time_ms
            #
            #   @return [Integer, nil]
            optional :execution_time_ms, Integer, api_name: :executionTimeMs, nil?: true

            # @!attribute month_year
            #
            #   @return [Date, nil]
            optional :month_year, Date, api_name: :monthYear

            # @!attribute prediction_count
            #
            #   @return [Integer, nil]
            optional :prediction_count, Integer, api_name: :predictionCount

            # @!method initialize(execution_time_ms: nil, month_year: nil, prediction_count: nil)
            #   @param execution_time_ms [Integer, nil]
            #   @param month_year [Date]
            #   @param prediction_count [Integer]
          end
        end
      end
    end
  end
end
