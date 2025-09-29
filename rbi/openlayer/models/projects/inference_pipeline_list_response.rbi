# typed: strong

module Openlayer
  module Models
    module Projects
      class InferencePipelineListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Projects::InferencePipelineListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Openlayer::Models::Projects::InferencePipelineListResponse::Item
            ]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item
                ]
            }
          )
        end
        def to_hash
        end

        class Item < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::InferencePipelineListResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          # The inference pipeline description.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The inference pipeline name.
          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project
              )
            )
          end
          attr_reader :project

          sig do
            params(
              project:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::OrHash
                )
            ).void
          end
          attr_writer :project

          sig do
            returns(
              T.nilable(
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace
              )
            )
          end
          attr_reader :workspace

          sig do
            params(
              workspace:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::OrHash
                )
            ).void
          end
          attr_writer :workspace

          # The inference pipeline id.
          sig { returns(String) }
          attr_accessor :id

          # The creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The last test evaluation date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_last_evaluated

          # The last data sample received date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_last_sample_received

          # The next test evaluation date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_of_next_evaluation

          # The last updated date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # The number of tests failing.
          sig { returns(Integer) }
          attr_accessor :failing_goal_count

          sig do
            returns(
              Openlayer::Models::Projects::InferencePipelineListResponse::Item::Links
            )
          end
          attr_reader :links

          sig do
            params(
              links:
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Links::OrHash
            ).void
          end
          attr_writer :links

          # The number of tests passing.
          sig { returns(Integer) }
          attr_accessor :passing_goal_count

          # The project id.
          sig { returns(String) }
          attr_accessor :project_id

          # The status of test evaluation for the inference pipeline.
          sig do
            returns(
              Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The status message of test evaluation for the inference pipeline.
          sig { returns(T.nilable(String)) }
          attr_accessor :status_message

          # The total number of tests.
          sig { returns(Integer) }
          attr_accessor :total_goal_count

          # The workspace id.
          sig { returns(T.nilable(String)) }
          attr_reader :workspace_id

          sig { params(workspace_id: String).void }
          attr_writer :workspace_id

          sig do
            params(
              id: String,
              date_created: Time,
              date_last_evaluated: T.nilable(Time),
              date_last_sample_received: T.nilable(Time),
              date_of_next_evaluation: T.nilable(Time),
              date_updated: Time,
              description: T.nilable(String),
              failing_goal_count: Integer,
              links:
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Links::OrHash,
              name: String,
              passing_goal_count: Integer,
              project_id: String,
              status:
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::OrSymbol,
              status_message: T.nilable(String),
              total_goal_count: Integer,
              project:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::OrHash
                ),
              workspace:
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::OrHash
                ),
              workspace_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The inference pipeline id.
            id:,
            # The creation date.
            date_created:,
            # The last test evaluation date.
            date_last_evaluated:,
            # The last data sample received date.
            date_last_sample_received:,
            # The next test evaluation date.
            date_of_next_evaluation:,
            # The last updated date.
            date_updated:,
            # The inference pipeline description.
            description:,
            # The number of tests failing.
            failing_goal_count:,
            links:,
            # The inference pipeline name.
            name:,
            # The number of tests passing.
            passing_goal_count:,
            # The project id.
            project_id:,
            # The status of test evaluation for the inference pipeline.
            status:,
            # The status message of test evaluation for the inference pipeline.
            status_message:,
            # The total number of tests.
            total_goal_count:,
            project: nil,
            workspace: nil,
            # The workspace id.
            workspace_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                date_created: Time,
                date_last_evaluated: T.nilable(Time),
                date_last_sample_received: T.nilable(Time),
                date_of_next_evaluation: T.nilable(Time),
                date_updated: Time,
                description: T.nilable(String),
                failing_goal_count: Integer,
                links:
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Links,
                name: String,
                passing_goal_count: Integer,
                project_id: String,
                status:
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol,
                status_message: T.nilable(String),
                total_goal_count: Integer,
                project:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project
                  ),
                workspace:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace
                  ),
                workspace_id: String
              }
            )
          end
          def to_hash
          end

          class Links < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Links,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :app

            sig { params(app: String).returns(T.attached_class) }
            def self.new(app:)
            end

            sig { override.returns({ app: String }) }
            def to_hash
            end
          end

          # The status of test evaluation for the inference pipeline.
          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUEUED =
              T.let(
                :queued,
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :paused,
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Project < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project,
                  Openlayer::Internal::AnyHash
                )
              end

            # The project name.
            sig { returns(String) }
            attr_accessor :name

            # The task type of the project.
            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol
              )
            end
            attr_accessor :task_type

            # The project description.
            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # The project id.
            sig { returns(String) }
            attr_accessor :id

            # The project creator id.
            sig { returns(T.nilable(String)) }
            attr_accessor :creator_id

            # The project creation date.
            sig { returns(Time) }
            attr_accessor :date_created

            # The project last updated date.
            sig { returns(Time) }
            attr_accessor :date_updated

            # The number of tests in the development mode of the project.
            sig { returns(Integer) }
            attr_accessor :development_goal_count

            # The total number of tests in the project.
            sig { returns(Integer) }
            attr_accessor :goal_count

            # The number of inference pipelines in the project.
            sig { returns(Integer) }
            attr_accessor :inference_pipeline_count

            # Links to the project.
            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Links
              )
            end
            attr_reader :links

            sig do
              params(
                links:
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Links::OrHash
              ).void
            end
            attr_writer :links

            # The number of tests in the monitoring mode of the project.
            sig { returns(Integer) }
            attr_accessor :monitoring_goal_count

            # The source of the project.
            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::TaggedSymbol
                )
              )
            end
            attr_accessor :source

            # The number of versions (commits) in the project.
            sig { returns(Integer) }
            attr_accessor :version_count

            # The workspace id.
            sig { returns(T.nilable(String)) }
            attr_accessor :workspace_id

            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::GitRepo
                )
              )
            end
            attr_reader :git_repo

            sig do
              params(
                git_repo:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::GitRepo::OrHash
                  )
              ).void
            end
            attr_writer :git_repo

            sig do
              params(
                id: String,
                creator_id: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                development_goal_count: Integer,
                goal_count: Integer,
                inference_pipeline_count: Integer,
                links:
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Links::OrHash,
                monitoring_goal_count: Integer,
                name: String,
                source:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::OrSymbol
                  ),
                task_type:
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::OrSymbol,
                version_count: Integer,
                workspace_id: T.nilable(String),
                description: T.nilable(String),
                git_repo:
                  T.nilable(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::GitRepo::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # The project id.
              id:,
              # The project creator id.
              creator_id:,
              # The project creation date.
              date_created:,
              # The project last updated date.
              date_updated:,
              # The number of tests in the development mode of the project.
              development_goal_count:,
              # The total number of tests in the project.
              goal_count:,
              # The number of inference pipelines in the project.
              inference_pipeline_count:,
              # Links to the project.
              links:,
              # The number of tests in the monitoring mode of the project.
              monitoring_goal_count:,
              # The project name.
              name:,
              # The source of the project.
              source:,
              # The task type of the project.
              task_type:,
              # The number of versions (commits) in the project.
              version_count:,
              # The workspace id.
              workspace_id:,
              # The project description.
              description: nil,
              git_repo: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  creator_id: T.nilable(String),
                  date_created: Time,
                  date_updated: Time,
                  development_goal_count: Integer,
                  goal_count: Integer,
                  inference_pipeline_count: Integer,
                  links:
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Links,
                  monitoring_goal_count: Integer,
                  name: String,
                  source:
                    T.nilable(
                      Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::TaggedSymbol
                    ),
                  task_type:
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol,
                  version_count: Integer,
                  workspace_id: T.nilable(String),
                  description: T.nilable(String),
                  git_repo:
                    T.nilable(
                      Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::GitRepo
                    )
                }
              )
            end
            def to_hash
            end

            class Links < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Links,
                    Openlayer::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :app

              # Links to the project.
              sig { params(app: String).returns(T.attached_class) }
              def self.new(app:)
              end

              sig { override.returns({ app: String }) }
              def to_hash
              end
            end

            # The source of the project.
            module Source
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WEB =
                T.let(
                  :web,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::TaggedSymbol
                )
              API =
                T.let(
                  :api,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::TaggedSymbol
                )
              NULL =
                T.let(
                  :null,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::Source::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The task type of the project.
            module TaskType
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LLM_BASE =
                T.let(
                  :"llm-base",
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol
                )
              TABULAR_CLASSIFICATION =
                T.let(
                  :"tabular-classification",
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol
                )
              TABULAR_REGRESSION =
                T.let(
                  :"tabular-regression",
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol
                )
              TEXT_CLASSIFICATION =
                T.let(
                  :"text-classification",
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::TaskType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class GitRepo < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Project::GitRepo,
                    Openlayer::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :git_account_id

              sig { returns(Integer) }
              attr_accessor :git_id

              sig { returns(T.nilable(String)) }
              attr_reader :branch

              sig { params(branch: String).void }
              attr_writer :branch

              sig { returns(T.nilable(String)) }
              attr_reader :root_dir

              sig { params(root_dir: String).void }
              attr_writer :root_dir

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Time) }
              attr_accessor :date_connected

              sig { returns(Time) }
              attr_accessor :date_updated

              sig { returns(String) }
              attr_accessor :name

              sig { returns(T::Boolean) }
              attr_accessor :private

              sig { returns(String) }
              attr_accessor :project_id

              sig { returns(String) }
              attr_accessor :slug

              sig { returns(String) }
              attr_accessor :url

              sig do
                params(
                  id: String,
                  date_connected: Time,
                  date_updated: Time,
                  git_account_id: String,
                  git_id: Integer,
                  name: String,
                  private: T::Boolean,
                  project_id: String,
                  slug: String,
                  url: String,
                  branch: String,
                  root_dir: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                date_connected:,
                date_updated:,
                git_account_id:,
                git_id:,
                name:,
                private:,
                project_id:,
                slug:,
                url:,
                branch: nil,
                root_dir: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    date_connected: Time,
                    date_updated: Time,
                    git_account_id: String,
                    git_id: Integer,
                    name: String,
                    private: T::Boolean,
                    project_id: String,
                    slug: String,
                    url: String,
                    branch: String,
                    root_dir: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Workspace < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace,
                  Openlayer::Internal::AnyHash
                )
              end

            # The workspace name.
            sig { returns(String) }
            attr_accessor :name

            # The workspace slug.
            sig { returns(String) }
            attr_accessor :slug

            # Whether the workspace only allows SAML authentication.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :saml_only_access

            sig { params(saml_only_access: T::Boolean).void }
            attr_writer :saml_only_access

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :wildcard_domains

            sig { params(wildcard_domains: T::Array[String]).void }
            attr_writer :wildcard_domains

            # The workspace id.
            sig { returns(String) }
            attr_accessor :id

            # The workspace creator id.
            sig { returns(T.nilable(String)) }
            attr_accessor :creator_id

            # The workspace creation date.
            sig { returns(Time) }
            attr_accessor :date_created

            # The workspace last updated date.
            sig { returns(Time) }
            attr_accessor :date_updated

            # The number of invites in the workspace.
            sig { returns(Integer) }
            attr_accessor :invite_count

            # The number of members in the workspace.
            sig { returns(Integer) }
            attr_accessor :member_count

            # The end date of the current billing period.
            sig { returns(T.nilable(Time)) }
            attr_accessor :period_end_date

            # The start date of the current billing period.
            sig { returns(T.nilable(Time)) }
            attr_accessor :period_start_date

            # The number of projects in the workspace.
            sig { returns(Integer) }
            attr_accessor :project_count

            sig do
              returns(
                Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::MonthlyUsage
                  ]
                )
              )
            end
            attr_reader :monthly_usage

            sig do
              params(
                monthly_usage:
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::MonthlyUsage::OrHash
                  ]
              ).void
            end
            attr_writer :monthly_usage

            sig do
              params(
                id: String,
                creator_id: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                invite_count: Integer,
                member_count: Integer,
                name: String,
                period_end_date: T.nilable(Time),
                period_start_date: T.nilable(Time),
                project_count: Integer,
                slug: String,
                status:
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::OrSymbol,
                monthly_usage:
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::MonthlyUsage::OrHash
                  ],
                saml_only_access: T::Boolean,
                wildcard_domains: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The workspace id.
              id:,
              # The workspace creator id.
              creator_id:,
              # The workspace creation date.
              date_created:,
              # The workspace last updated date.
              date_updated:,
              # The number of invites in the workspace.
              invite_count:,
              # The number of members in the workspace.
              member_count:,
              # The workspace name.
              name:,
              # The end date of the current billing period.
              period_end_date:,
              # The start date of the current billing period.
              period_start_date:,
              # The number of projects in the workspace.
              project_count:,
              # The workspace slug.
              slug:,
              status:,
              monthly_usage: nil,
              # Whether the workspace only allows SAML authentication.
              saml_only_access: nil,
              wildcard_domains: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  creator_id: T.nilable(String),
                  date_created: Time,
                  date_updated: Time,
                  invite_count: Integer,
                  member_count: Integer,
                  name: String,
                  period_end_date: T.nilable(Time),
                  period_start_date: T.nilable(Time),
                  project_count: Integer,
                  slug: String,
                  status:
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol,
                  invite_code: String,
                  monthly_usage:
                    T::Array[
                      Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::MonthlyUsage
                    ],
                  saml_only_access: T::Boolean,
                  wildcard_domains: T::Array[String]
                }
              )
            end
            def to_hash
            end

            module Status
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVE =
                T.let(
                  :active,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              PAST_DUE =
                T.let(
                  :past_due,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              UNPAID =
                T.let(
                  :unpaid,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :canceled,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              INCOMPLETE =
                T.let(
                  :incomplete,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              INCOMPLETE_EXPIRED =
                T.let(
                  :incomplete_expired,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              TRIALING =
                T.let(
                  :trialing,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )
              PAUSED =
                T.let(
                  :paused,
                  Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class MonthlyUsage < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Projects::InferencePipelineListResponse::Item::Workspace::MonthlyUsage,
                    Openlayer::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_accessor :execution_time_ms

              sig { returns(T.nilable(Date)) }
              attr_reader :month_year

              sig { params(month_year: Date).void }
              attr_writer :month_year

              sig { returns(T.nilable(Integer)) }
              attr_reader :prediction_count

              sig { params(prediction_count: Integer).void }
              attr_writer :prediction_count

              sig do
                params(
                  execution_time_ms: T.nilable(Integer),
                  month_year: Date,
                  prediction_count: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                execution_time_ms: nil,
                month_year: nil,
                prediction_count: nil
              )
              end

              sig do
                override.returns(
                  {
                    execution_time_ms: T.nilable(Integer),
                    month_year: Date,
                    prediction_count: Integer
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
end
