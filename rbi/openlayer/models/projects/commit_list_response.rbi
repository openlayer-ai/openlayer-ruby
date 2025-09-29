# typed: strong

module Openlayer
  module Models
    module Projects
      class CommitListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Projects::CommitListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Openlayer::Models::Projects::CommitListResponse::Item]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Projects::CommitListResponse::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[Openlayer::Models::Projects::CommitListResponse::Item]
            }
          )
        end
        def to_hash
        end

        class Item < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::CommitListResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          # The details of a commit (project version).
          sig do
            returns(
              Openlayer::Models::Projects::CommitListResponse::Item::Commit
            )
          end
          attr_reader :commit

          sig do
            params(
              commit:
                Openlayer::Models::Projects::CommitListResponse::Item::Commit::OrHash
            ).void
          end
          attr_writer :commit

          # Whether the commit is archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :archived

          # The deployment status associated with the commit's model.
          sig { returns(T.nilable(String)) }
          attr_reader :deployment_status

          sig { params(deployment_status: String).void }
          attr_writer :deployment_status

          # The project version (commit) id.
          sig { returns(String) }
          attr_accessor :id

          # The commit archive date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_archived

          # The project version (commit) creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The number of tests that are failing for the commit.
          sig { returns(Integer) }
          attr_accessor :failing_goal_count

          # The model id.
          sig { returns(T.nilable(String)) }
          attr_accessor :ml_model_id

          # The number of tests that are passing for the commit.
          sig { returns(Integer) }
          attr_accessor :passing_goal_count

          # The project id.
          sig { returns(String) }
          attr_accessor :project_id

          # The commit status. Initially, the commit is `queued`, then, it switches to
          # `running`. Finally, it can be `paused`, `failed`, or `completed`.
          sig do
            returns(
              Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The commit status message.
          sig { returns(T.nilable(String)) }
          attr_accessor :status_message

          # The total number of tests for the commit.
          sig { returns(Integer) }
          attr_accessor :total_goal_count

          # The training dataset id.
          sig { returns(T.nilable(String)) }
          attr_accessor :training_dataset_id

          # The validation dataset id.
          sig { returns(T.nilable(String)) }
          attr_accessor :validation_dataset_id

          sig do
            returns(
              T.nilable(
                Openlayer::Models::Projects::CommitListResponse::Item::Links
              )
            )
          end
          attr_reader :links

          sig do
            params(
              links:
                Openlayer::Models::Projects::CommitListResponse::Item::Links::OrHash
            ).void
          end
          attr_writer :links

          sig do
            params(
              id: String,
              commit:
                Openlayer::Models::Projects::CommitListResponse::Item::Commit::OrHash,
              date_archived: T.nilable(Time),
              date_created: Time,
              failing_goal_count: Integer,
              ml_model_id: T.nilable(String),
              passing_goal_count: Integer,
              project_id: String,
              status:
                Openlayer::Models::Projects::CommitListResponse::Item::Status::OrSymbol,
              status_message: T.nilable(String),
              total_goal_count: Integer,
              training_dataset_id: T.nilable(String),
              validation_dataset_id: T.nilable(String),
              archived: T.nilable(T::Boolean),
              deployment_status: String,
              links:
                Openlayer::Models::Projects::CommitListResponse::Item::Links::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The project version (commit) id.
            id:,
            # The details of a commit (project version).
            commit:,
            # The commit archive date.
            date_archived:,
            # The project version (commit) creation date.
            date_created:,
            # The number of tests that are failing for the commit.
            failing_goal_count:,
            # The model id.
            ml_model_id:,
            # The number of tests that are passing for the commit.
            passing_goal_count:,
            # The project id.
            project_id:,
            # The commit status. Initially, the commit is `queued`, then, it switches to
            # `running`. Finally, it can be `paused`, `failed`, or `completed`.
            status:,
            # The commit status message.
            status_message:,
            # The total number of tests for the commit.
            total_goal_count:,
            # The training dataset id.
            training_dataset_id:,
            # The validation dataset id.
            validation_dataset_id:,
            # Whether the commit is archived.
            archived: nil,
            # The deployment status associated with the commit's model.
            deployment_status: nil,
            links: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                commit:
                  Openlayer::Models::Projects::CommitListResponse::Item::Commit,
                date_archived: T.nilable(Time),
                date_created: Time,
                failing_goal_count: Integer,
                ml_model_id: T.nilable(String),
                passing_goal_count: Integer,
                project_id: String,
                status:
                  Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol,
                status_message: T.nilable(String),
                storage_uri: String,
                total_goal_count: Integer,
                training_dataset_id: T.nilable(String),
                validation_dataset_id: T.nilable(String),
                archived: T.nilable(T::Boolean),
                deployment_status: String,
                links:
                  Openlayer::Models::Projects::CommitListResponse::Item::Links
              }
            )
          end
          def to_hash
          end

          class Commit < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::CommitListResponse::Item::Commit,
                  Openlayer::Internal::AnyHash
                )
              end

            # The commit message.
            sig { returns(String) }
            attr_accessor :message

            # The commit id.
            sig { returns(String) }
            attr_accessor :id

            # The author id of the commit.
            sig { returns(String) }
            attr_accessor :author_id

            # The size of the commit bundle in bytes.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :file_size

            # The model id.
            sig { returns(T.nilable(String)) }
            attr_accessor :ml_model_id

            # The storage URI where the commit bundle is stored.
            sig { returns(String) }
            attr_accessor :storage_uri

            # The training dataset id.
            sig { returns(T.nilable(String)) }
            attr_accessor :training_dataset_id

            # The validation dataset id.
            sig { returns(T.nilable(String)) }
            attr_accessor :validation_dataset_id

            # The commit creation date.
            sig { returns(T.nilable(Time)) }
            attr_reader :date_created

            sig { params(date_created: Time).void }
            attr_writer :date_created

            # The ref of the corresponding git commit.
            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_ref

            sig { params(git_commit_ref: String).void }
            attr_writer :git_commit_ref

            # The SHA of the corresponding git commit.
            sig { returns(T.nilable(Integer)) }
            attr_reader :git_commit_sha

            sig { params(git_commit_sha: Integer).void }
            attr_writer :git_commit_sha

            # The URL of the corresponding git commit.
            sig { returns(T.nilable(String)) }
            attr_reader :git_commit_url

            sig { params(git_commit_url: String).void }
            attr_writer :git_commit_url

            # The details of a commit (project version).
            sig do
              params(
                id: String,
                author_id: String,
                file_size: T.nilable(Integer),
                message: String,
                ml_model_id: T.nilable(String),
                storage_uri: String,
                training_dataset_id: T.nilable(String),
                validation_dataset_id: T.nilable(String),
                date_created: Time,
                git_commit_ref: String,
                git_commit_sha: Integer,
                git_commit_url: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The commit id.
              id:,
              # The author id of the commit.
              author_id:,
              # The size of the commit bundle in bytes.
              file_size:,
              # The commit message.
              message:,
              # The model id.
              ml_model_id:,
              # The storage URI where the commit bundle is stored.
              storage_uri:,
              # The training dataset id.
              training_dataset_id:,
              # The validation dataset id.
              validation_dataset_id:,
              # The commit creation date.
              date_created: nil,
              # The ref of the corresponding git commit.
              git_commit_ref: nil,
              # The SHA of the corresponding git commit.
              git_commit_sha: nil,
              # The URL of the corresponding git commit.
              git_commit_url: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  author_id: String,
                  file_size: T.nilable(Integer),
                  message: String,
                  ml_model_id: T.nilable(String),
                  storage_uri: String,
                  training_dataset_id: T.nilable(String),
                  validation_dataset_id: T.nilable(String),
                  date_created: Time,
                  git_commit_ref: String,
                  git_commit_sha: Integer,
                  git_commit_url: String
                }
              )
            end
            def to_hash
            end
          end

          # The commit status. Initially, the commit is `queued`, then, it switches to
          # `running`. Finally, it can be `paused`, `failed`, or `completed`.
          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::CommitListResponse::Item::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUEUED =
              T.let(
                :queued,
                Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :paused,
                Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::CommitListResponse::Item::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Links < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Projects::CommitListResponse::Item::Links,
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
        end
      end
    end
  end
end
