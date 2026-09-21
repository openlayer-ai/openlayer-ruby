# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::FrameworkCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        # The framework name.
        sig { returns(String) }
        attr_accessor :name

        # A short description of the framework.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Whether the framework is active. Rules of a disabled framework are not evaluated
        # and do not count towards compliance.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # Determines which projects the framework applies to. An empty or `null` `match`
        # array applies the framework to every project in the workspace.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::FrameworkCreateParams::ProjectSelector
            )
          )
        end
        attr_reader :project_selector

        sig do
          params(
            project_selector:
              T.nilable(
                Openlayer::Governance::FrameworkCreateParams::ProjectSelector::OrHash
              )
          ).void
        end
        attr_writer :project_selector

        # Free-form labels on the framework.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(
            workspace_id: String,
            name: String,
            description: T.nilable(String),
            enabled: T::Boolean,
            project_selector:
              T.nilable(
                Openlayer::Governance::FrameworkCreateParams::ProjectSelector::OrHash
              ),
            tags: T::Array[String],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          # The framework name.
          name:,
          # A short description of the framework.
          description: nil,
          # Whether the framework is active. Rules of a disabled framework are not evaluated
          # and do not count towards compliance.
          enabled: nil,
          # Determines which projects the framework applies to. An empty or `null` `match`
          # array applies the framework to every project in the workspace.
          project_selector: nil,
          # Free-form labels on the framework.
          tags: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              name: String,
              description: T.nilable(String),
              enabled: T::Boolean,
              project_selector:
                T.nilable(
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector
                ),
              tags: T::Array[String],
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ProjectSelector < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::FrameworkCreateParams::ProjectSelector,
                Openlayer::Internal::AnyHash
              )
            end

          # Match criteria, ANDed together.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match
                ]
              )
            )
          end
          attr_accessor :match

          # Determines which projects the framework applies to. An empty or `null` `match`
          # array applies the framework to every project in the workspace.
          sig do
            params(
              match:
                T.nilable(
                  T::Array[
                    Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::OrHash
                  ]
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Match criteria, ANDed together.
            match: nil
          )
          end

          sig do
            override.returns(
              {
                match:
                  T.nilable(
                    T::Array[
                      Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match
                    ]
                  )
              }
            )
          end
          def to_hash
          end

          class Match < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match,
                  Openlayer::Internal::AnyHash
                )
              end

            # The project property to match against.
            sig do
              returns(
                Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::OrSymbol
              )
            end
            attr_accessor :property

            # The value to match against. Pass an array to match any of several values, or
            # `null` to match projects where the property is unset. Omit it for `exists` and
            # `notExists`.
            sig { returns(T.anything) }
            attr_accessor :value

            # How to compare the project property with `value`. One of `equals`, `notEquals`,
            # `contains`, `notContains`, `startsWith`, `endsWith`, `in`, `notIn`,
            # `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`,
            # `equalsIgnoreCase`, `containsIgnoreCase`, `matches`, `exists`, or `notExists`.
            sig { returns(T.nilable(String)) }
            attr_reader :operator

            sig { params(operator: String).void }
            attr_writer :operator

            sig do
              params(
                property:
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::OrSymbol,
                value: T.anything,
                operator: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The project property to match against.
              property:,
              # The value to match against. Pass an array to match any of several values, or
              # `null` to match projects where the property is unset. Omit it for `exists` and
              # `notExists`.
              value:,
              # How to compare the project property with `value`. One of `equals`, `notEquals`,
              # `contains`, `notContains`, `startsWith`, `endsWith`, `in`, `notIn`,
              # `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`,
              # `equalsIgnoreCase`, `containsIgnoreCase`, `matches`, `exists`, or `notExists`.
              operator: nil
            )
            end

            sig do
              override.returns(
                {
                  property:
                    Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::OrSymbol,
                  value: T.anything,
                  operator: String
                }
              )
            end
            def to_hash
            end

            # The project property to match against.
            module Property
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TASK_TYPE =
                T.let(
                  :taskType,
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              RISK_LEVEL =
                T.let(
                  :riskLevel,
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              RISK_TOTAL_SCORE =
                T.let(
                  :riskTotalScore,
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              NAME =
                T.let(
                  :name,
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              OWNER_ID =
                T.let(
                  :ownerId,
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              MODEL_TYPES =
                T.let(
                  :modelTypes,
                  Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Governance::FrameworkCreateParams::ProjectSelector::Match::Property::TaggedSymbol
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
  end
end
