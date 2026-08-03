# typed: strong

module Openlayer
  module Models
    class ProjectUpdateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::ProjectUpdateParams, Openlayer::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :project_id

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

      # The project name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # What the system in this project is intended to do.
      sig { returns(T.nilable(String)) }
      attr_accessor :purpose

      sig do
        params(
          project_id: String,
          data_retention_days: T.nilable(Integer),
          description: T.nilable(String),
          model_developer: T.nilable(String),
          model_types: T.nilable(T::Array[String]),
          name: String,
          purpose: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        project_id:,
        # Number of days to retain monitoring data for this project. Null means data is
        # retained indefinitely.
        data_retention_days: nil,
        # The project description.
        description: nil,
        # Who developed the model used in this project.
        model_developer: nil,
        # The kinds of model used in this project.
        model_types: nil,
        # The project name.
        name: nil,
        # What the system in this project is intended to do.
        purpose: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            project_id: String,
            data_retention_days: T.nilable(Integer),
            description: T.nilable(String),
            model_developer: T.nilable(String),
            model_types: T.nilable(T::Array[String]),
            name: String,
            purpose: T.nilable(String),
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
