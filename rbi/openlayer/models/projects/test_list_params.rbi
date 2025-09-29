# typed: strong

module Openlayer
  module Models
    module Projects
      class TestListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Projects::TestListParams,
              Openlayer::Internal::AnyHash
            )
          end

        # Filter for archived tests.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

        # Retrive tests created by a specific project version.
        sig { returns(T.nilable(String)) }
        attr_accessor :origin_version_id

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

        # Filter for suggested tests.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :suggested

        sig { params(suggested: T::Boolean).void }
        attr_writer :suggested

        # Filter objects by test type. Available types are `integrity`, `consistency`,
        # `performance`, `fairness`, and `robustness`.
        sig do
          returns(
            T.nilable(Openlayer::Projects::TestListParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: Openlayer::Projects::TestListParams::Type::OrSymbol).void
        end
        attr_writer :type

        # Retrive tests with usesProductionData (monitoring).
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :uses_production_data

        sig do
          params(
            include_archived: T::Boolean,
            origin_version_id: T.nilable(String),
            page: Integer,
            per_page: Integer,
            suggested: T::Boolean,
            type: Openlayer::Projects::TestListParams::Type::OrSymbol,
            uses_production_data: T.nilable(T::Boolean),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter for archived tests.
          include_archived: nil,
          # Retrive tests created by a specific project version.
          origin_version_id: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Filter for suggested tests.
          suggested: nil,
          # Filter objects by test type. Available types are `integrity`, `consistency`,
          # `performance`, `fairness`, and `robustness`.
          type: nil,
          # Retrive tests with usesProductionData (monitoring).
          uses_production_data: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              include_archived: T::Boolean,
              origin_version_id: T.nilable(String),
              page: Integer,
              per_page: Integer,
              suggested: T::Boolean,
              type: Openlayer::Projects::TestListParams::Type::OrSymbol,
              uses_production_data: T.nilable(T::Boolean),
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter objects by test type. Available types are `integrity`, `consistency`,
        # `performance`, `fairness`, and `robustness`.
        module Type
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Projects::TestListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGRITY =
            T.let(
              :integrity,
              Openlayer::Projects::TestListParams::Type::TaggedSymbol
            )
          CONSISTENCY =
            T.let(
              :consistency,
              Openlayer::Projects::TestListParams::Type::TaggedSymbol
            )
          PERFORMANCE =
            T.let(
              :performance,
              Openlayer::Projects::TestListParams::Type::TaggedSymbol
            )
          FAIRNESS =
            T.let(
              :fairness,
              Openlayer::Projects::TestListParams::Type::TaggedSymbol
            )
          ROBUSTNESS =
            T.let(
              :robustness,
              Openlayer::Projects::TestListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Openlayer::Projects::TestListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
