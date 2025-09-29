# typed: strong

module Openlayer
  module Models
    module Projects
      class InferencePipelineCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Projects::InferencePipelineCreateParams,
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
              Openlayer::Projects::InferencePipelineCreateParams::Project
            )
          )
        end
        attr_reader :project

        sig do
          params(
            project:
              T.nilable(
                Openlayer::Projects::InferencePipelineCreateParams::Project::OrHash
              )
          ).void
        end
        attr_writer :project

        sig do
          returns(
            T.nilable(
              Openlayer::Projects::InferencePipelineCreateParams::Workspace
            )
          )
        end
        attr_reader :workspace

        sig do
          params(
            workspace:
              T.nilable(
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::OrHash
              )
          ).void
        end
        attr_writer :workspace

        sig do
          params(
            description: T.nilable(String),
            name: String,
            project:
              T.nilable(
                Openlayer::Projects::InferencePipelineCreateParams::Project::OrHash
              ),
            workspace:
              T.nilable(
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::OrHash
              ),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The inference pipeline description.
          description:,
          # The inference pipeline name.
          name:,
          project: nil,
          workspace: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              description: T.nilable(String),
              name: String,
              project:
                T.nilable(
                  Openlayer::Projects::InferencePipelineCreateParams::Project
                ),
              workspace:
                T.nilable(
                  Openlayer::Projects::InferencePipelineCreateParams::Workspace
                ),
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Project < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Projects::InferencePipelineCreateParams::Project,
                Openlayer::Internal::AnyHash
              )
            end

          # The project name.
          sig { returns(String) }
          attr_accessor :name

          # The task type of the project.
          sig do
            returns(
              Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::OrSymbol
            )
          end
          attr_accessor :task_type

          # The project description.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig do
            params(
              name: String,
              task_type:
                Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::OrSymbol,
              description: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The project name.
            name:,
            # The task type of the project.
            task_type:,
            # The project description.
            description: nil
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
                  Openlayer::Projects::InferencePipelineCreateParams::Project::Links,
                monitoring_goal_count: Integer,
                name: String,
                source:
                  T.nilable(
                    Openlayer::Projects::InferencePipelineCreateParams::Project::Source::OrSymbol
                  ),
                task_type:
                  Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::OrSymbol,
                version_count: Integer,
                workspace_id: T.nilable(String),
                description: T.nilable(String),
                git_repo:
                  T.nilable(
                    Openlayer::Projects::InferencePipelineCreateParams::Project::GitRepo
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
                  Openlayer::Projects::InferencePipelineCreateParams::Project::Links,
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
                  Openlayer::Projects::InferencePipelineCreateParams::Project::Source
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEB =
              T.let(
                :web,
                Openlayer::Projects::InferencePipelineCreateParams::Project::Source::TaggedSymbol
              )
            API =
              T.let(
                :api,
                Openlayer::Projects::InferencePipelineCreateParams::Project::Source::TaggedSymbol
              )
            NULL =
              T.let(
                :null,
                Openlayer::Projects::InferencePipelineCreateParams::Project::Source::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::InferencePipelineCreateParams::Project::Source::TaggedSymbol
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
                  Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LLM_BASE =
              T.let(
                :"llm-base",
                Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::TaggedSymbol
              )
            TABULAR_CLASSIFICATION =
              T.let(
                :"tabular-classification",
                Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::TaggedSymbol
              )
            TABULAR_REGRESSION =
              T.let(
                :"tabular-regression",
                Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::TaggedSymbol
              )
            TEXT_CLASSIFICATION =
              T.let(
                :"text-classification",
                Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::InferencePipelineCreateParams::Project::TaskType::TaggedSymbol
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
                  Openlayer::Projects::InferencePipelineCreateParams::Project::GitRepo,
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

            sig do
              params(
                git_account_id: String,
                git_id: Integer,
                branch: String,
                root_dir: String
              ).returns(T.attached_class)
            end
            def self.new(git_account_id:, git_id:, branch: nil, root_dir: nil)
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
                Openlayer::Projects::InferencePipelineCreateParams::Workspace,
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

          # The workspace invite code.
          sig { returns(T.nilable(String)) }
          attr_reader :invite_code

          sig { params(invite_code: String).void }
          attr_writer :invite_code

          sig do
            params(
              name: String,
              slug: String,
              invite_code: String,
              saml_only_access: T::Boolean,
              wildcard_domains: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The workspace name.
            name:,
            # The workspace slug.
            slug:,
            # The workspace invite code.
            invite_code: nil,
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
                  Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::OrSymbol,
                invite_code: String,
                monthly_usage:
                  T::Array[
                    Openlayer::Projects::InferencePipelineCreateParams::Workspace::MonthlyUsage
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
                  Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACTIVE =
              T.let(
                :active,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            PAST_DUE =
              T.let(
                :past_due,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            UNPAID =
              T.let(
                :unpaid,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            INCOMPLETE =
              T.let(
                :incomplete,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            INCOMPLETE_EXPIRED =
              T.let(
                :incomplete_expired,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            TRIALING =
              T.let(
                :trialing,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :paused,
                Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::InferencePipelineCreateParams::Workspace::Status::TaggedSymbol
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
                  Openlayer::Projects::InferencePipelineCreateParams::Workspace::MonthlyUsage,
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
