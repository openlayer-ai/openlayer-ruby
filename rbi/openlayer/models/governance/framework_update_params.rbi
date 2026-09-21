# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::FrameworkUpdateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :framework_id

        # The icon shown for the framework.
        sig do
          returns(
            T.nilable(Openlayer::Governance::FrameworkUpdateParams::Avatar)
          )
        end
        attr_reader :avatar

        sig do
          params(
            avatar:
              T.nilable(
                Openlayer::Governance::FrameworkUpdateParams::Avatar::OrHash
              )
          ).void
        end
        attr_writer :avatar

        # A short description of the framework.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Whether the framework is active. Rules of a disabled framework are not evaluated
        # and do not count towards compliance.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # A longer, rich-text description, as a TipTap JSON document.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :extended_description

        # A link to the external standard or regulation the framework is based on.
        sig { returns(T.nilable(String)) }
        attr_accessor :href

        # The framework name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Determines which projects the framework applies to. An empty or `null` `match`
        # array applies the framework to every project in the workspace.
        sig do
          returns(
            T.nilable(
              Openlayer::Governance::FrameworkUpdateParams::ProjectSelector
            )
          )
        end
        attr_reader :project_selector

        sig do
          params(
            project_selector:
              T.nilable(
                Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::OrHash
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
            framework_id: String,
            avatar:
              T.nilable(
                Openlayer::Governance::FrameworkUpdateParams::Avatar::OrHash
              ),
            description: T.nilable(String),
            enabled: T::Boolean,
            extended_description: T.nilable(T::Hash[Symbol, T.anything]),
            href: T.nilable(String),
            name: String,
            project_selector:
              T.nilable(
                Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::OrHash
              ),
            tags: T::Array[String],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          framework_id:,
          # The icon shown for the framework.
          avatar: nil,
          # A short description of the framework.
          description: nil,
          # Whether the framework is active. Rules of a disabled framework are not evaluated
          # and do not count towards compliance.
          enabled: nil,
          # A longer, rich-text description, as a TipTap JSON document.
          extended_description: nil,
          # A link to the external standard or regulation the framework is based on.
          href: nil,
          # The framework name.
          name: nil,
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
              framework_id: String,
              avatar:
                T.nilable(Openlayer::Governance::FrameworkUpdateParams::Avatar),
              description: T.nilable(String),
              enabled: T::Boolean,
              extended_description: T.nilable(T::Hash[Symbol, T.anything]),
              href: T.nilable(String),
              name: String,
              project_selector:
                T.nilable(
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector
                ),
              tags: T::Array[String],
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Avatar < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::FrameworkUpdateParams::Avatar,
                Openlayer::Internal::AnyHash
              )
            end

          sig do
            returns(
              Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig { returns(String) }
          attr_accessor :value

          # The icon shown for the framework.
          sig do
            params(
              type:
                Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(type:, value:)
          end

          sig do
            override.returns(
              {
                type:
                  Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          module Type
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Governance::FrameworkUpdateParams::Avatar::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMOJI =
              T.let(
                :emoji,
                Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::TaggedSymbol
              )
            IMAGE_URL =
              T.let(
                :imageUrl,
                Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::TaggedSymbol
              )
            BUILTIN_IMAGE =
              T.let(
                :builtinImage,
                Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Governance::FrameworkUpdateParams::Avatar::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ProjectSelector < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Governance::FrameworkUpdateParams::ProjectSelector,
                Openlayer::Internal::AnyHash
              )
            end

          # Match criteria, ANDed together.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match
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
                    Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::OrHash
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
                      Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match
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
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match,
                  Openlayer::Internal::AnyHash
                )
              end

            # The project property to match against.
            sig do
              returns(
                Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::OrSymbol
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
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::OrSymbol,
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
                    Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::OrSymbol,
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
                    Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TASK_TYPE =
                T.let(
                  :taskType,
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              RISK_LEVEL =
                T.let(
                  :riskLevel,
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              RISK_TOTAL_SCORE =
                T.let(
                  :riskTotalScore,
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              NAME =
                T.let(
                  :name,
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              OWNER_ID =
                T.let(
                  :ownerId,
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
                )
              MODEL_TYPES =
                T.let(
                  :modelTypes,
                  Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property::TaggedSymbol
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
