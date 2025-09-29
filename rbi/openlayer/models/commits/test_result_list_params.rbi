# typed: strong

module Openlayer
  module Models
    module Commits
      class TestResultListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Commits::TestResultListParams,
              Openlayer::Internal::AnyHash
            )
          end

        # Filter for archived tests.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_archived

        sig { params(include_archived: T::Boolean).void }
        attr_writer :include_archived

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

        # Filter list of test results by status. Available statuses are `running`,
        # `passing`, `failing`, `skipped`, and `error`.
        sig do
          returns(
            T.nilable(
              Openlayer::Commits::TestResultListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Openlayer::Commits::TestResultListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter objects by test type. Available types are `integrity`, `consistency`,
        # `performance`, `fairness`, and `robustness`.
        sig do
          returns(
            T.nilable(Openlayer::Commits::TestResultListParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Openlayer::Commits::TestResultListParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            include_archived: T::Boolean,
            page: Integer,
            per_page: Integer,
            status: Openlayer::Commits::TestResultListParams::Status::OrSymbol,
            type: Openlayer::Commits::TestResultListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter for archived tests.
          include_archived: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Filter list of test results by status. Available statuses are `running`,
          # `passing`, `failing`, `skipped`, and `error`.
          status: nil,
          # Filter objects by test type. Available types are `integrity`, `consistency`,
          # `performance`, `fairness`, and `robustness`.
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              include_archived: T::Boolean,
              page: Integer,
              per_page: Integer,
              status:
                Openlayer::Commits::TestResultListParams::Status::OrSymbol,
              type: Openlayer::Commits::TestResultListParams::Type::OrSymbol,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter list of test results by status. Available statuses are `running`,
        # `passing`, `failing`, `skipped`, and `error`.
        module Status
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Commits::TestResultListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(
              :running,
              Openlayer::Commits::TestResultListParams::Status::TaggedSymbol
            )
          PASSING =
            T.let(
              :passing,
              Openlayer::Commits::TestResultListParams::Status::TaggedSymbol
            )
          FAILING =
            T.let(
              :failing,
              Openlayer::Commits::TestResultListParams::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Openlayer::Commits::TestResultListParams::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Openlayer::Commits::TestResultListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Commits::TestResultListParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter objects by test type. Available types are `integrity`, `consistency`,
        # `performance`, `fairness`, and `robustness`.
        module Type
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Commits::TestResultListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGRITY =
            T.let(
              :integrity,
              Openlayer::Commits::TestResultListParams::Type::TaggedSymbol
            )
          CONSISTENCY =
            T.let(
              :consistency,
              Openlayer::Commits::TestResultListParams::Type::TaggedSymbol
            )
          PERFORMANCE =
            T.let(
              :performance,
              Openlayer::Commits::TestResultListParams::Type::TaggedSymbol
            )
          FAIRNESS =
            T.let(
              :fairness,
              Openlayer::Commits::TestResultListParams::Type::TaggedSymbol
            )
          ROBUSTNESS =
            T.let(
              :robustness,
              Openlayer::Commits::TestResultListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Commits::TestResultListParams::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
