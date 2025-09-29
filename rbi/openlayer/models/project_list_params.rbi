# typed: strong

module Openlayer
  module Models
    class ProjectListParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::ProjectListParams, Openlayer::Internal::AnyHash)
        end

      # Filter list of items by project name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The page to return in a paginated query.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Maximum number of items to return per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Filter list of items by task type.
      sig do
        returns(T.nilable(Openlayer::ProjectListParams::TaskType::OrSymbol))
      end
      attr_reader :task_type

      sig do
        params(task_type: Openlayer::ProjectListParams::TaskType::OrSymbol).void
      end
      attr_writer :task_type

      sig do
        params(
          name: String,
          page: Integer,
          per_page: Integer,
          task_type: Openlayer::ProjectListParams::TaskType::OrSymbol,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter list of items by project name.
        name: nil,
        # The page to return in a paginated query.
        page: nil,
        # Maximum number of items to return per page.
        per_page: nil,
        # Filter list of items by task type.
        task_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            page: Integer,
            per_page: Integer,
            task_type: Openlayer::ProjectListParams::TaskType::OrSymbol,
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter list of items by task type.
      module TaskType
        extend Openlayer::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Openlayer::ProjectListParams::TaskType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LLM_BASE =
          T.let(
            :"llm-base",
            Openlayer::ProjectListParams::TaskType::TaggedSymbol
          )
        TABULAR_CLASSIFICATION =
          T.let(
            :"tabular-classification",
            Openlayer::ProjectListParams::TaskType::TaggedSymbol
          )
        TABULAR_REGRESSION =
          T.let(
            :"tabular-regression",
            Openlayer::ProjectListParams::TaskType::TaggedSymbol
          )
        TEXT_CLASSIFICATION =
          T.let(
            :"text-classification",
            Openlayer::ProjectListParams::TaskType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Openlayer::ProjectListParams::TaskType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
