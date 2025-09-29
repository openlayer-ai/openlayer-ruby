# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class TestResultListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::InferencePipelines::TestResultListParams,
              Openlayer::Internal::AnyHash
            )
          end

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
              Openlayer::InferencePipelines::TestResultListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Openlayer::InferencePipelines::TestResultListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Filter objects by test type. Available types are `integrity`, `consistency`,
        # `performance`, `fairness`, and `robustness`.
        sig do
          returns(
            T.nilable(
              Openlayer::InferencePipelines::TestResultListParams::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Openlayer::InferencePipelines::TestResultListParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            page: Integer,
            per_page: Integer,
            status:
              Openlayer::InferencePipelines::TestResultListParams::Status::OrSymbol,
            type:
              Openlayer::InferencePipelines::TestResultListParams::Type::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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
              page: Integer,
              per_page: Integer,
              status:
                Openlayer::InferencePipelines::TestResultListParams::Status::OrSymbol,
              type:
                Openlayer::InferencePipelines::TestResultListParams::Type::OrSymbol,
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
              T.all(
                Symbol,
                Openlayer::InferencePipelines::TestResultListParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUNNING =
            T.let(
              :running,
              Openlayer::InferencePipelines::TestResultListParams::Status::TaggedSymbol
            )
          PASSING =
            T.let(
              :passing,
              Openlayer::InferencePipelines::TestResultListParams::Status::TaggedSymbol
            )
          FAILING =
            T.let(
              :failing,
              Openlayer::InferencePipelines::TestResultListParams::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Openlayer::InferencePipelines::TestResultListParams::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Openlayer::InferencePipelines::TestResultListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::InferencePipelines::TestResultListParams::Status::TaggedSymbol
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
              T.all(
                Symbol,
                Openlayer::InferencePipelines::TestResultListParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGRITY =
            T.let(
              :integrity,
              Openlayer::InferencePipelines::TestResultListParams::Type::TaggedSymbol
            )
          CONSISTENCY =
            T.let(
              :consistency,
              Openlayer::InferencePipelines::TestResultListParams::Type::TaggedSymbol
            )
          PERFORMANCE =
            T.let(
              :performance,
              Openlayer::InferencePipelines::TestResultListParams::Type::TaggedSymbol
            )
          FAIRNESS =
            T.let(
              :fairness,
              Openlayer::InferencePipelines::TestResultListParams::Type::TaggedSymbol
            )
          ROBUSTNESS =
            T.let(
              :robustness,
              Openlayer::InferencePipelines::TestResultListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::InferencePipelines::TestResultListParams::Type::TaggedSymbol
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
