# typed: strong

module Openlayer
  module Models
    class ProjectUpdateResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::ProjectUpdateResponse,
            Openlayer::Internal::AnyHash
          )
        end

      # The project name.
      sig { returns(String) }
      attr_accessor :name

      # The task type of the project.
      sig do
        returns(
          Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol
        )
      end
      attr_accessor :task_type

      # Number of days to retain monitoring data for this project. Null means data is
      # retained indefinitely.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :data_retention_days

      # The project description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Who developed the model used in this project.
      sig { returns(T.nilable(String)) }
      attr_accessor :model_developer

      # The kinds of model used in this project.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :model_types

      # What the system in this project is intended to do.
      sig { returns(T.nilable(String)) }
      attr_accessor :purpose

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
      sig { returns(Openlayer::Models::ProjectUpdateResponse::Links) }
      attr_reader :links

      sig do
        params(
          links: Openlayer::Models::ProjectUpdateResponse::Links::OrHash
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
            Openlayer::Models::ProjectUpdateResponse::Source::TaggedSymbol
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
        returns(T.nilable(Openlayer::Models::ProjectUpdateResponse::GitRepo))
      end
      attr_reader :git_repo

      sig do
        params(
          git_repo:
            T.nilable(Openlayer::Models::ProjectUpdateResponse::GitRepo::OrHash)
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
          links: Openlayer::Models::ProjectUpdateResponse::Links::OrHash,
          monitoring_goal_count: Integer,
          name: String,
          source:
            T.nilable(
              Openlayer::Models::ProjectUpdateResponse::Source::OrSymbol
            ),
          task_type:
            Openlayer::Models::ProjectUpdateResponse::TaskType::OrSymbol,
          version_count: Integer,
          workspace_id: T.nilable(String),
          data_retention_days: T.nilable(Integer),
          description: T.nilable(String),
          git_repo:
            T.nilable(
              Openlayer::Models::ProjectUpdateResponse::GitRepo::OrHash
            ),
          model_developer: T.nilable(String),
          model_types: T.nilable(T::Array[String]),
          purpose: T.nilable(String)
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
        # Number of days to retain monitoring data for this project. Null means data is
        # retained indefinitely.
        data_retention_days: nil,
        # The project description.
        description: nil,
        git_repo: nil,
        # Who developed the model used in this project.
        model_developer: nil,
        # The kinds of model used in this project.
        model_types: nil,
        # What the system in this project is intended to do.
        purpose: nil
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
            links: Openlayer::Models::ProjectUpdateResponse::Links,
            monitoring_goal_count: Integer,
            name: String,
            source:
              T.nilable(
                Openlayer::Models::ProjectUpdateResponse::Source::TaggedSymbol
              ),
            task_type:
              Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol,
            version_count: Integer,
            workspace_id: T.nilable(String),
            data_retention_days: T.nilable(Integer),
            description: T.nilable(String),
            git_repo:
              T.nilable(Openlayer::Models::ProjectUpdateResponse::GitRepo),
            model_developer: T.nilable(String),
            model_types: T.nilable(T::Array[String]),
            purpose: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Links < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::ProjectUpdateResponse::Links,
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
            T.all(Symbol, Openlayer::Models::ProjectUpdateResponse::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEB =
          T.let(
            :web,
            Openlayer::Models::ProjectUpdateResponse::Source::TaggedSymbol
          )
        API =
          T.let(
            :api,
            Openlayer::Models::ProjectUpdateResponse::Source::TaggedSymbol
          )
        NULL =
          T.let(
            :null,
            Openlayer::Models::ProjectUpdateResponse::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Openlayer::Models::ProjectUpdateResponse::Source::TaggedSymbol
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
            T.all(Symbol, Openlayer::Models::ProjectUpdateResponse::TaskType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LLM_BASE =
          T.let(
            :"llm-base",
            Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol
          )
        TABULAR_CLASSIFICATION =
          T.let(
            :"tabular-classification",
            Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol
          )
        TABULAR_REGRESSION =
          T.let(
            :"tabular-regression",
            Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol
          )
        TEXT_CLASSIFICATION =
          T.let(
            :"text-classification",
            Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Openlayer::Models::ProjectUpdateResponse::TaskType::TaggedSymbol
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
              Openlayer::Models::ProjectUpdateResponse::GitRepo,
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
