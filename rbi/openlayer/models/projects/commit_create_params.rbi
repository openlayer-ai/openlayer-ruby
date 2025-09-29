# typed: strong

module Openlayer
  module Models
    module Projects
      class CommitCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Projects::CommitCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        # The details of a commit (project version).
        sig { returns(Openlayer::Projects::CommitCreateParams::Commit) }
        attr_reader :commit

        sig do
          params(
            commit: Openlayer::Projects::CommitCreateParams::Commit::OrHash
          ).void
        end
        attr_writer :commit

        # The storage URI where the commit bundle is stored.
        sig { returns(String) }
        attr_accessor :storage_uri

        # Whether the commit is archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :archived

        # The deployment status associated with the commit's model.
        sig { returns(T.nilable(String)) }
        attr_reader :deployment_status

        sig { params(deployment_status: String).void }
        attr_writer :deployment_status

        sig do
          params(
            commit: Openlayer::Projects::CommitCreateParams::Commit::OrHash,
            storage_uri: String,
            archived: T.nilable(T::Boolean),
            deployment_status: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The details of a commit (project version).
          commit:,
          # The storage URI where the commit bundle is stored.
          storage_uri:,
          # Whether the commit is archived.
          archived: nil,
          # The deployment status associated with the commit's model.
          deployment_status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              commit: Openlayer::Projects::CommitCreateParams::Commit,
              storage_uri: String,
              archived: T.nilable(T::Boolean),
              deployment_status: String,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Commit < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Projects::CommitCreateParams::Commit,
                Openlayer::Internal::AnyHash
              )
            end

          # The commit message.
          sig { returns(String) }
          attr_accessor :message

          # The details of a commit (project version).
          sig { params(message: String).returns(T.attached_class) }
          def self.new(
            # The commit message.
            message:
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
      end
    end
  end
end
