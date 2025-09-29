# typed: strong

module Openlayer
  module Models
    class ProjectListResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::ProjectListResponse,
            Openlayer::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Openlayer::Models::ProjectListResponse::Item]) }
      attr_accessor :items

      sig do
        params(
          items: T::Array[Openlayer::Models::ProjectListResponse::Item::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(items:)
      end

      sig do
        override.returns(
          { items: T::Array[Openlayer::Models::ProjectListResponse::Item] }
        )
      end
      def to_hash
      end

      class Item < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::ProjectListResponse::Item,
              Openlayer::Internal::AnyHash
            )
          end

        # The project name.
        sig { returns(String) }
        attr_accessor :name

        # The task type of the project.
        sig do
          returns(
            Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol
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
        sig { returns(Openlayer::Models::ProjectListResponse::Item::Links) }
        attr_reader :links

        sig do
          params(
            links: Openlayer::Models::ProjectListResponse::Item::Links::OrHash
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
              Openlayer::Models::ProjectListResponse::Item::Source::TaggedSymbol
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
            T.nilable(Openlayer::Models::ProjectListResponse::Item::GitRepo)
          )
        end
        attr_reader :git_repo

        sig do
          params(
            git_repo:
              T.nilable(
                Openlayer::Models::ProjectListResponse::Item::GitRepo::OrHash
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
            links: Openlayer::Models::ProjectListResponse::Item::Links::OrHash,
            monitoring_goal_count: Integer,
            name: String,
            source:
              T.nilable(
                Openlayer::Models::ProjectListResponse::Item::Source::OrSymbol
              ),
            task_type:
              Openlayer::Models::ProjectListResponse::Item::TaskType::OrSymbol,
            version_count: Integer,
            workspace_id: T.nilable(String),
            description: T.nilable(String),
            git_repo:
              T.nilable(
                Openlayer::Models::ProjectListResponse::Item::GitRepo::OrHash
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
              links: Openlayer::Models::ProjectListResponse::Item::Links,
              monitoring_goal_count: Integer,
              name: String,
              source:
                T.nilable(
                  Openlayer::Models::ProjectListResponse::Item::Source::TaggedSymbol
                ),
              task_type:
                Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol,
              version_count: Integer,
              workspace_id: T.nilable(String),
              description: T.nilable(String),
              git_repo:
                T.nilable(Openlayer::Models::ProjectListResponse::Item::GitRepo)
            }
          )
        end
        def to_hash
        end

        class Links < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::ProjectListResponse::Item::Links,
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
                Openlayer::Models::ProjectListResponse::Item::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEB =
            T.let(
              :web,
              Openlayer::Models::ProjectListResponse::Item::Source::TaggedSymbol
            )
          API =
            T.let(
              :api,
              Openlayer::Models::ProjectListResponse::Item::Source::TaggedSymbol
            )
          NULL =
            T.let(
              :null,
              Openlayer::Models::ProjectListResponse::Item::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::ProjectListResponse::Item::Source::TaggedSymbol
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
                Openlayer::Models::ProjectListResponse::Item::TaskType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LLM_BASE =
            T.let(
              :"llm-base",
              Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol
            )
          TABULAR_CLASSIFICATION =
            T.let(
              :"tabular-classification",
              Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol
            )
          TABULAR_REGRESSION =
            T.let(
              :"tabular-regression",
              Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol
            )
          TEXT_CLASSIFICATION =
            T.let(
              :"text-classification",
              Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Models::ProjectListResponse::Item::TaskType::TaggedSymbol
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
                Openlayer::Models::ProjectListResponse::Item::GitRepo,
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
    end
  end
end
