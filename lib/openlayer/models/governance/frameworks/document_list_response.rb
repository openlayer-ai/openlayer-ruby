# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      module Frameworks
        # @see Openlayer::Resources::Governance::Frameworks::Documents#list
        class DocumentListResponse < Openlayer::Internal::Type::BaseModel
          # @!attribute items
          #
          #   @return [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item>]
          required :items,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item] }

          # @!method initialize(items:)
          #   @param items [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item>]

          class Item < Openlayer::Internal::Type::BaseModel
            # @!attribute title
            #   The document title.
            #
            #   @return [String]
            required :title, String

            response_only do
              # @!attribute id
              #   The document id.
              #
              #   @return [String]
              required :id, String

              # @!attribute date_created
              #   The creation date.
              #
              #   @return [Time]
              required :date_created, Time, api_name: :dateCreated

              # @!attribute date_updated
              #   The last update date.
              #
              #   @return [Time]
              required :date_updated, Time, api_name: :dateUpdated

              # @!attribute framework_id
              #   The framework the document belongs to.
              #
              #   @return [String]
              required :framework_id, String, api_name: :frameworkId

              # @!attribute sections
              #   The document's sections, in display order. Only returned when retrieving a
              #   single document.
              #
              #   @return [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section>, nil]
              optional :sections,
                       -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section] }
            end

            # @!method initialize(id:, date_created:, date_updated:, framework_id:, title:, sections: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item} for more
            #   details.
            #
            #   @param id [String] The document id.
            #
            #   @param date_created [Time] The creation date.
            #
            #   @param date_updated [Time] The last update date.
            #
            #   @param framework_id [String] The framework the document belongs to.
            #
            #   @param title [String] The document title.
            #
            #   @param sections [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section>] The document's sections, in display order. Only returned when retrieving a singl

            class Section < Openlayer::Internal::Type::BaseModel
              # @!attribute number
              #   The section number as it appears in the source standard.
              #
              #   @return [String]
              required :number, String

              # @!attribute sort_order
              #   The position of the section within the document.
              #
              #   @return [Integer]
              required :sort_order, Integer, api_name: :sortOrder

              # @!attribute title
              #   The section title.
              #
              #   @return [String]
              required :title, String

              # @!attribute text
              #   The section text.
              #
              #   @return [String, nil]
              optional :text, String, nil?: true

              response_only do
                # @!attribute id
                #   The section id.
                #
                #   @return [String]
                required :id, String

                # @!attribute document_id
                #   The document the section belongs to.
                #
                #   @return [String]
                required :document_id, String, api_name: :documentId

                # @!attribute rule_count
                #   How many rules are linked to this section, including its subsections. Use it to
                #   decide whether to fetch the section's rules.
                #
                #   @return [Integer, nil]
                optional :rule_count, Integer, api_name: :ruleCount

                # @!attribute rules
                #   The rules linked directly to this section.
                #
                #   @return [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule>, nil]
                optional :rules,
                         -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule] }

                # @!attribute subsections
                #   The section's subsections, in display order.
                #
                #   @return [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection>, nil]
                optional :subsections,
                         -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection] }
              end

              # @!method initialize(id:, document_id:, number:, sort_order:, title:, rule_count: nil, rules: nil, subsections: nil, text: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section}
              #   for more details.
              #
              #   @param id [String] The section id.
              #
              #   @param document_id [String] The document the section belongs to.
              #
              #   @param number [String] The section number as it appears in the source standard.
              #
              #   @param sort_order [Integer] The position of the section within the document.
              #
              #   @param title [String] The section title.
              #
              #   @param rule_count [Integer] How many rules are linked to this section, including its subsections. Use it to
              #
              #   @param rules [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule>] The rules linked directly to this section.
              #
              #   @param subsections [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection>] The section's subsections, in display order.
              #
              #   @param text [String, nil] The section text.

              class Rule < Openlayer::Internal::Type::BaseModel
                # @!attribute name
                #   The rule name.
                #
                #   @return [String]
                required :name, String

                # @!attribute scope
                #   Whether the rule is evaluated once for the whole workspace, or once per project
                #   the rule's frameworks apply to.
                #
                #   @return [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope]
                required :scope,
                         enum: -> { Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope }

                # @!attribute type
                #   `platform` rules are evaluated automatically from the state of your Openlayer
                #   workspace. `evidence` rules are satisfied by attaching evidence.
                #
                #   @return [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type]
                required :type,
                         enum: -> { Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type }

                # @!attribute automation_params
                #   Configuration for the platform check, when the automation takes parameters.
                #
                #   @return [Hash{Symbol=>Object}, nil]
                optional :automation_params,
                         Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                         api_name: :automationParams,
                         nil?: true

                # @!attribute automation_type
                #   Which workspace signal a platform rule checks, for example
                #   `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
                #   evidence rules.
                #
                #   @return [String, nil]
                optional :automation_type, String, api_name: :automationType, nil?: true

                # @!attribute deactivated
                #   Whether the rule is excluded from compliance calculations.
                #
                #   @return [Boolean, nil]
                optional :deactivated, Openlayer::Internal::Type::Boolean

                # @!attribute description
                #   What the rule requires.
                #
                #   @return [String, nil]
                optional :description, String, nil?: true

                # @!attribute evidence_type
                #   The kind of evidence that satisfies the rule. `null` for platform rules.
                #
                #   @return [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType, nil]
                optional :evidence_type,
                         enum: -> { Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType },
                         api_name: :evidenceType,
                         nil?: true

                # @!attribute renewal_cadence_days
                #   How often evidence must be renewed, in days. Once evidence is older than this,
                #   the rule result becomes `due_soon` and then `failing`.
                #
                #   @return [Integer, nil]
                optional :renewal_cadence_days, Integer, api_name: :renewalCadenceDays, nil?: true

                response_only do
                  # @!attribute id
                  #   The rule id.
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute date_created
                  #   The creation date.
                  #
                  #   @return [Time, nil]
                  optional :date_created, Time, api_name: :dateCreated

                  # @!attribute date_updated
                  #   The last update date.
                  #
                  #   @return [Time, nil]
                  optional :date_updated, Time, api_name: :dateUpdated

                  # @!attribute immutable
                  #   Whether the rule is managed by Openlayer and cannot be edited.
                  #
                  #   @return [Boolean, nil]
                  optional :immutable, Openlayer::Internal::Type::Boolean
                end

                # @!method initialize(id:, name:, scope:, type:, automation_params: nil, automation_type: nil, date_created: nil, date_updated: nil, deactivated: nil, description: nil, evidence_type: nil, immutable: nil, renewal_cadence_days: nil)
                #   Some parameter documentations has been truncated, see
                #   {Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule}
                #   for more details.
                #
                #   @param id [String] The rule id.
                #
                #   @param name [String] The rule name.
                #
                #   @param scope [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope] Whether the rule is evaluated once for the whole workspace, or once per project
                #
                #   @param type [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type] `platform` rules are evaluated automatically from the state of your Openlayer wo
                #
                #   @param automation_params [Hash{Symbol=>Object}, nil] Configuration for the platform check, when the automation takes parameters.
                #
                #   @param automation_type [String, nil] Which workspace signal a platform rule checks, for example `monitoring_mode_enab
                #
                #   @param date_created [Time] The creation date.
                #
                #   @param date_updated [Time] The last update date.
                #
                #   @param deactivated [Boolean] Whether the rule is excluded from compliance calculations.
                #
                #   @param description [String, nil] What the rule requires.
                #
                #   @param evidence_type [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType, nil] The kind of evidence that satisfies the rule. `null` for platform rules.
                #
                #   @param immutable [Boolean] Whether the rule is managed by Openlayer and cannot be edited.
                #
                #   @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t

                # Whether the rule is evaluated once for the whole workspace, or once per project
                # the rule's frameworks apply to.
                #
                # @see Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule#scope
                module Scope
                  extend Openlayer::Internal::Type::Enum

                  PROJECT = :project
                  WORKSPACE = :workspace

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # `platform` rules are evaluated automatically from the state of your Openlayer
                # workspace. `evidence` rules are satisfied by attaching evidence.
                #
                # @see Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule#type
                module Type
                  extend Openlayer::Internal::Type::Enum

                  PLATFORM = :platform
                  EVIDENCE = :evidence

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # The kind of evidence that satisfies the rule. `null` for platform rules.
                #
                # @see Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule#evidence_type
                module EvidenceType
                  extend Openlayer::Internal::Type::Enum

                  DOCUMENT = :document
                  TEXT = :text
                  URL = :url
                  CATEGORY_VALUE = :categoryValue

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class Subsection < Openlayer::Internal::Type::BaseModel
                # @!attribute number
                #   The subsection number as it appears in the source standard.
                #
                #   @return [String]
                required :number, String

                # @!attribute sort_order
                #   The position of the subsection within its section.
                #
                #   @return [Integer]
                required :sort_order, Integer, api_name: :sortOrder

                # @!attribute title
                #   The subsection title.
                #
                #   @return [String]
                required :title, String

                # @!attribute text
                #   The subsection text. This is the requirement your rules are mapped against.
                #
                #   @return [String, nil]
                optional :text, String, nil?: true

                response_only do
                  # @!attribute id
                  #   The subsection id.
                  #
                  #   @return [String]
                  required :id, String

                  # @!attribute section_id
                  #   The section the subsection belongs to.
                  #
                  #   @return [String]
                  required :section_id, String, api_name: :sectionId

                  # @!attribute rule_count
                  #   How many rules are linked to this subsection.
                  #
                  #   @return [Integer, nil]
                  optional :rule_count, Integer, api_name: :ruleCount

                  # @!attribute rules
                  #   The rules linked to this subsection.
                  #
                  #   @return [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule>, nil]
                  optional :rules,
                           -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule] }
                end

                # @!method initialize(id:, number:, section_id:, sort_order:, title:, rule_count: nil, rules: nil, text: nil)
                #   @param id [String] The subsection id.
                #
                #   @param number [String] The subsection number as it appears in the source standard.
                #
                #   @param section_id [String] The section the subsection belongs to.
                #
                #   @param sort_order [Integer] The position of the subsection within its section.
                #
                #   @param title [String] The subsection title.
                #
                #   @param rule_count [Integer] How many rules are linked to this subsection.
                #
                #   @param rules [Array<Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule>] The rules linked to this subsection.
                #
                #   @param text [String, nil] The subsection text. This is the requirement your rules are mapped against.

                class Rule < Openlayer::Internal::Type::BaseModel
                  # @!attribute name
                  #   The rule name.
                  #
                  #   @return [String]
                  required :name, String

                  # @!attribute scope
                  #   Whether the rule is evaluated once for the whole workspace, or once per project
                  #   the rule's frameworks apply to.
                  #
                  #   @return [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope]
                  required :scope,
                           enum: -> { Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope }

                  # @!attribute type
                  #   `platform` rules are evaluated automatically from the state of your Openlayer
                  #   workspace. `evidence` rules are satisfied by attaching evidence.
                  #
                  #   @return [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type]
                  required :type,
                           enum: -> { Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type }

                  # @!attribute automation_params
                  #   Configuration for the platform check, when the automation takes parameters.
                  #
                  #   @return [Hash{Symbol=>Object}, nil]
                  optional :automation_params,
                           Openlayer::Internal::Type::HashOf[Openlayer::Internal::Type::Unknown],
                           api_name: :automationParams,
                           nil?: true

                  # @!attribute automation_type
                  #   Which workspace signal a platform rule checks, for example
                  #   `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
                  #   evidence rules.
                  #
                  #   @return [String, nil]
                  optional :automation_type, String, api_name: :automationType, nil?: true

                  # @!attribute deactivated
                  #   Whether the rule is excluded from compliance calculations.
                  #
                  #   @return [Boolean, nil]
                  optional :deactivated, Openlayer::Internal::Type::Boolean

                  # @!attribute description
                  #   What the rule requires.
                  #
                  #   @return [String, nil]
                  optional :description, String, nil?: true

                  # @!attribute evidence_type
                  #   The kind of evidence that satisfies the rule. `null` for platform rules.
                  #
                  #   @return [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType, nil]
                  optional :evidence_type,
                           enum: -> { Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType },
                           api_name: :evidenceType,
                           nil?: true

                  # @!attribute renewal_cadence_days
                  #   How often evidence must be renewed, in days. Once evidence is older than this,
                  #   the rule result becomes `due_soon` and then `failing`.
                  #
                  #   @return [Integer, nil]
                  optional :renewal_cadence_days, Integer, api_name: :renewalCadenceDays, nil?: true

                  response_only do
                    # @!attribute id
                    #   The rule id.
                    #
                    #   @return [String]
                    required :id, String

                    # @!attribute date_created
                    #   The creation date.
                    #
                    #   @return [Time, nil]
                    optional :date_created, Time, api_name: :dateCreated

                    # @!attribute date_updated
                    #   The last update date.
                    #
                    #   @return [Time, nil]
                    optional :date_updated, Time, api_name: :dateUpdated

                    # @!attribute immutable
                    #   Whether the rule is managed by Openlayer and cannot be edited.
                    #
                    #   @return [Boolean, nil]
                    optional :immutable, Openlayer::Internal::Type::Boolean
                  end

                  # @!method initialize(id:, name:, scope:, type:, automation_params: nil, automation_type: nil, date_created: nil, date_updated: nil, deactivated: nil, description: nil, evidence_type: nil, immutable: nil, renewal_cadence_days: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule}
                  #   for more details.
                  #
                  #   @param id [String] The rule id.
                  #
                  #   @param name [String] The rule name.
                  #
                  #   @param scope [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope] Whether the rule is evaluated once for the whole workspace, or once per project
                  #
                  #   @param type [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type] `platform` rules are evaluated automatically from the state of your Openlayer wo
                  #
                  #   @param automation_params [Hash{Symbol=>Object}, nil] Configuration for the platform check, when the automation takes parameters.
                  #
                  #   @param automation_type [String, nil] Which workspace signal a platform rule checks, for example `monitoring_mode_enab
                  #
                  #   @param date_created [Time] The creation date.
                  #
                  #   @param date_updated [Time] The last update date.
                  #
                  #   @param deactivated [Boolean] Whether the rule is excluded from compliance calculations.
                  #
                  #   @param description [String, nil] What the rule requires.
                  #
                  #   @param evidence_type [Symbol, Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType, nil] The kind of evidence that satisfies the rule. `null` for platform rules.
                  #
                  #   @param immutable [Boolean] Whether the rule is managed by Openlayer and cannot be edited.
                  #
                  #   @param renewal_cadence_days [Integer, nil] How often evidence must be renewed, in days. Once evidence is older than this, t

                  # Whether the rule is evaluated once for the whole workspace, or once per project
                  # the rule's frameworks apply to.
                  #
                  # @see Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule#scope
                  module Scope
                    extend Openlayer::Internal::Type::Enum

                    PROJECT = :project
                    WORKSPACE = :workspace

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # `platform` rules are evaluated automatically from the state of your Openlayer
                  # workspace. `evidence` rules are satisfied by attaching evidence.
                  #
                  # @see Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule#type
                  module Type
                    extend Openlayer::Internal::Type::Enum

                    PLATFORM = :platform
                    EVIDENCE = :evidence

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # The kind of evidence that satisfies the rule. `null` for platform rules.
                  #
                  # @see Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule#evidence_type
                  module EvidenceType
                    extend Openlayer::Internal::Type::Enum

                    DOCUMENT = :document
                    TEXT = :text
                    URL = :url
                    CATEGORY_VALUE = :categoryValue

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
