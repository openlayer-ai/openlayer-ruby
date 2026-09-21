# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#update
      class FrameworkUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute framework_id
        #
        #   @return [String]
        required :framework_id, String

        # @!attribute avatar
        #   The icon shown for the framework.
        #
        #   @return [Openlayer::Models::Governance::FrameworkUpdateParams::Avatar, nil]
        optional :avatar, -> { Openlayer::Governance::FrameworkUpdateParams::Avatar }, nil?: true

        # @!attribute description
        #   A short description of the framework.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute enabled
        #   Whether the framework is active. Rules of a disabled framework are not evaluated
        #   and do not count towards compliance.
        #
        #   @return [Boolean, nil]
        optional :enabled, Openlayer::Internal::Type::Boolean

        # @!attribute extended_description
        #   A longer, rich-text description, as a TipTap JSON document.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :extended_description,
                 Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                 api_name: :extendedDescription,
                 nil?: true

        # @!attribute href
        #   A link to the external standard or regulation the framework is based on.
        #
        #   @return [String, nil]
        optional :href, String, nil?: true

        # @!attribute name
        #   The framework name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute project_selector
        #   Determines which projects the framework applies to. An empty or `null` `match`
        #   array applies the framework to every project in the workspace.
        #
        #   @return [Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector, nil]
        optional :project_selector,
                 -> { Openlayer::Governance::FrameworkUpdateParams::ProjectSelector },
                 api_name: :projectSelector,
                 nil?: true

        # @!attribute tags
        #   Free-form labels on the framework.
        #
        #   @return [Array<String>, nil]
        optional :tags, Openlayer::Internal::Type::ArrayOf[String]

        # @!method initialize(framework_id:, avatar: nil, description: nil, enabled: nil, extended_description: nil, href: nil, name: nil, project_selector: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::FrameworkUpdateParams} for more details.
        #
        #   @param framework_id [String]
        #
        #   @param avatar [Openlayer::Models::Governance::FrameworkUpdateParams::Avatar, nil] The icon shown for the framework.
        #
        #   @param description [String, nil] A short description of the framework.
        #
        #   @param enabled [Boolean] Whether the framework is active. Rules of a disabled framework are not evaluated
        #
        #   @param extended_description [Hash{Symbol=>Object}, nil] A longer, rich-text description, as a TipTap JSON document.
        #
        #   @param href [String, nil] A link to the external standard or regulation the framework is based on.
        #
        #   @param name [String] The framework name.
        #
        #   @param project_selector [Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector, nil] Determines which projects the framework applies to. An empty or `null` `match` a
        #
        #   @param tags [Array<String>] Free-form labels on the framework.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        class Avatar < Openlayer::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Openlayer::Models::Governance::FrameworkUpdateParams::Avatar::Type]
          required :type, enum: -> { Openlayer::Governance::FrameworkUpdateParams::Avatar::Type }

          # @!attribute value
          #
          #   @return [String]
          required :value, String

          # @!method initialize(type:, value:)
          #   The icon shown for the framework.
          #
          #   @param type [Symbol, Openlayer::Models::Governance::FrameworkUpdateParams::Avatar::Type]
          #   @param value [String]

          # @see Openlayer::Models::Governance::FrameworkUpdateParams::Avatar#type
          module Type
            extend Openlayer::Internal::Type::Enum

            EMOJI = :emoji
            IMAGE_URL = :imageUrl
            BUILTIN_IMAGE = :builtinImage

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ProjectSelector < Openlayer::Internal::Type::BaseModel
          # @!attribute match
          #   Match criteria, ANDed together.
          #
          #   @return [Array<Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector::Match>, nil]
          optional :match,
                   -> {
                     Openlayer::Internal::Type::ArrayOf[Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match]
                   },
                   nil?: true

          # @!method initialize(match: nil)
          #   Determines which projects the framework applies to. An empty or `null` `match`
          #   array applies the framework to every project in the workspace.
          #
          #   @param match [Array<Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector::Match>, nil] Match criteria, ANDed together.

          class Match < Openlayer::Internal::Type::BaseModel
            # @!attribute property
            #   The project property to match against.
            #
            #   @return [Symbol, Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property]
            required :property,
                     enum: -> { Openlayer::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property }

            # @!attribute value
            #   The value to match against. Pass an array to match any of several values, or
            #   `null` to match projects where the property is unset. Omit it for `exists` and
            #   `notExists`.
            #
            #   @return [Object]
            required :value, Openlayer::Internal::Type::Unknown

            # @!attribute operator
            #   How to compare the project property with `value`. One of `equals`, `notEquals`,
            #   `contains`, `notContains`, `startsWith`, `endsWith`, `in`, `notIn`,
            #   `greaterThan`, `greaterThanOrEqual`, `lessThan`, `lessThanOrEqual`,
            #   `equalsIgnoreCase`, `containsIgnoreCase`, `matches`, `exists`, or `notExists`.
            #
            #   @return [String, nil]
            optional :operator, String

            # @!method initialize(property:, value:, operator: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector::Match}
            #   for more details.
            #
            #   @param property [Symbol, Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector::Match::Property] The project property to match against.
            #
            #   @param value [Object] The value to match against. Pass an array to match any of several values, or `nu
            #
            #   @param operator [String] How to compare the project property with `value`. One of `equals`, `notEquals`,

            # The project property to match against.
            #
            # @see Openlayer::Models::Governance::FrameworkUpdateParams::ProjectSelector::Match#property
            module Property
              extend Openlayer::Internal::Type::Enum

              TASK_TYPE = :taskType
              RISK_LEVEL = :riskLevel
              RISK_TOTAL_SCORE = :riskTotalScore
              NAME = :name
              OWNER_ID = :ownerId
              MODEL_TYPES = :modelTypes

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
