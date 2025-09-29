# typed: strong

module Openlayer
  module Models
    class ProjectCreateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::ProjectCreateParams, Openlayer::Internal::AnyHash)
        end

      # The project name.
      sig { returns(String) }
      attr_accessor :name

      # The task type of the project.
      sig { returns(Openlayer::ProjectCreateParams::TaskType::OrSymbol) }
      attr_accessor :task_type

      # The project description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig do
        params(
          name: String,
          task_type: Openlayer::ProjectCreateParams::TaskType::OrSymbol,
          description: T.nilable(String),
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The project name.
        name:,
        # The task type of the project.
        task_type:,
        # The project description.
        description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            task_type: Openlayer::ProjectCreateParams::TaskType::OrSymbol,
            description: T.nilable(String),
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The task type of the project.
      module TaskType
        extend Openlayer::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Openlayer::ProjectCreateParams::TaskType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LLM_BASE =
          T.let(
            :"llm-base",
            Openlayer::ProjectCreateParams::TaskType::TaggedSymbol
          )
        TABULAR_CLASSIFICATION =
          T.let(
            :"tabular-classification",
            Openlayer::ProjectCreateParams::TaskType::TaggedSymbol
          )
        TABULAR_REGRESSION =
          T.let(
            :"tabular-regression",
            Openlayer::ProjectCreateParams::TaskType::TaggedSymbol
          )
        TEXT_CLASSIFICATION =
          T.let(
            :"text-classification",
            Openlayer::ProjectCreateParams::TaskType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Openlayer::ProjectCreateParams::TaskType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
