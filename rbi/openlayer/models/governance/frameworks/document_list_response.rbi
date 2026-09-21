# typed: strong

module Openlayer
  module Models
    module Governance
      module Frameworks
        class DocumentListResponse < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Governance::Frameworks::DocumentListResponse,
                Openlayer::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item
              ]
            )
          end
          attr_accessor :items

          sig do
            params(
              items:
                T::Array[
                  Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(items:)
          end

          sig do
            override.returns(
              {
                items:
                  T::Array[
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item
                  ]
              }
            )
          end
          def to_hash
          end

          class Item < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item,
                  Openlayer::Internal::AnyHash
                )
              end

            # The document title.
            sig { returns(String) }
            attr_accessor :title

            # The document id.
            sig { returns(String) }
            attr_accessor :id

            # The creation date.
            sig { returns(Time) }
            attr_accessor :date_created

            # The last update date.
            sig { returns(Time) }
            attr_accessor :date_updated

            # The framework the document belongs to.
            sig { returns(String) }
            attr_accessor :framework_id

            # The document's sections, in display order. Only returned when retrieving a
            # single document.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section
                  ]
                )
              )
            end
            attr_reader :sections

            sig do
              params(
                sections:
                  T::Array[
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::OrHash
                  ]
              ).void
            end
            attr_writer :sections

            sig do
              params(
                id: String,
                date_created: Time,
                date_updated: Time,
                framework_id: String,
                title: String,
                sections:
                  T::Array[
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The document id.
              id:,
              # The creation date.
              date_created:,
              # The last update date.
              date_updated:,
              # The framework the document belongs to.
              framework_id:,
              # The document title.
              title:,
              # The document's sections, in display order. Only returned when retrieving a
              # single document.
              sections: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  date_created: Time,
                  date_updated: Time,
                  framework_id: String,
                  title: String,
                  sections:
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section
                    ]
                }
              )
            end
            def to_hash
            end

            class Section < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section,
                    Openlayer::Internal::AnyHash
                  )
                end

              # The section number as it appears in the source standard.
              sig { returns(String) }
              attr_accessor :number

              # The position of the section within the document.
              sig { returns(Integer) }
              attr_accessor :sort_order

              # The section title.
              sig { returns(String) }
              attr_accessor :title

              # The section text.
              sig { returns(T.nilable(String)) }
              attr_accessor :text

              # The section id.
              sig { returns(String) }
              attr_accessor :id

              # The document the section belongs to.
              sig { returns(String) }
              attr_accessor :document_id

              # How many rules are linked to this section, including its subsections. Use it to
              # decide whether to fetch the section's rules.
              sig { returns(T.nilable(Integer)) }
              attr_reader :rule_count

              sig { params(rule_count: Integer).void }
              attr_writer :rule_count

              # The rules linked directly to this section.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule
                    ]
                  )
                )
              end
              attr_reader :rules

              sig do
                params(
                  rules:
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::OrHash
                    ]
                ).void
              end
              attr_writer :rules

              # The section's subsections, in display order.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection
                    ]
                  )
                )
              end
              attr_reader :subsections

              sig do
                params(
                  subsections:
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::OrHash
                    ]
                ).void
              end
              attr_writer :subsections

              sig do
                params(
                  id: String,
                  document_id: String,
                  number: String,
                  sort_order: Integer,
                  title: String,
                  rule_count: Integer,
                  rules:
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::OrHash
                    ],
                  subsections:
                    T::Array[
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::OrHash
                    ],
                  text: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # The section id.
                id:,
                # The document the section belongs to.
                document_id:,
                # The section number as it appears in the source standard.
                number:,
                # The position of the section within the document.
                sort_order:,
                # The section title.
                title:,
                # How many rules are linked to this section, including its subsections. Use it to
                # decide whether to fetch the section's rules.
                rule_count: nil,
                # The rules linked directly to this section.
                rules: nil,
                # The section's subsections, in display order.
                subsections: nil,
                # The section text.
                text: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    document_id: String,
                    number: String,
                    sort_order: Integer,
                    title: String,
                    rule_count: Integer,
                    rules:
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule
                      ],
                    subsections:
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection
                      ],
                    text: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Rule < Openlayer::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule,
                      Openlayer::Internal::AnyHash
                    )
                  end

                # The rule name.
                sig { returns(String) }
                attr_accessor :name

                # Whether the rule is evaluated once for the whole workspace, or once per project
                # the rule's frameworks apply to.
                sig do
                  returns(
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope::TaggedSymbol
                  )
                end
                attr_accessor :scope

                # `platform` rules are evaluated automatically from the state of your Openlayer
                # workspace. `evidence` rules are satisfied by attaching evidence.
                sig do
                  returns(
                    Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type::TaggedSymbol
                  )
                end
                attr_accessor :type

                # Configuration for the platform check, when the automation takes parameters.
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_accessor :automation_params

                # Which workspace signal a platform rule checks, for example
                # `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
                # evidence rules.
                sig { returns(T.nilable(String)) }
                attr_accessor :automation_type

                # Whether the rule is excluded from compliance calculations.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :deactivated

                sig { params(deactivated: T::Boolean).void }
                attr_writer :deactivated

                # What the rule requires.
                sig { returns(T.nilable(String)) }
                attr_accessor :description

                # The kind of evidence that satisfies the rule. `null` for platform rules.
                sig do
                  returns(
                    T.nilable(
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                    )
                  )
                end
                attr_accessor :evidence_type

                # How often evidence must be renewed, in days. Once evidence is older than this,
                # the rule result becomes `due_soon` and then `failing`.
                sig { returns(T.nilable(Integer)) }
                attr_accessor :renewal_cadence_days

                # The rule id.
                sig { returns(String) }
                attr_accessor :id

                # The creation date.
                sig { returns(T.nilable(Time)) }
                attr_reader :date_created

                sig { params(date_created: Time).void }
                attr_writer :date_created

                # The last update date.
                sig { returns(T.nilable(Time)) }
                attr_reader :date_updated

                sig { params(date_updated: Time).void }
                attr_writer :date_updated

                # Whether the rule is managed by Openlayer and cannot be edited.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :immutable

                sig { params(immutable: T::Boolean).void }
                attr_writer :immutable

                sig do
                  params(
                    id: String,
                    name: String,
                    scope:
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope::OrSymbol,
                    type:
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type::OrSymbol,
                    automation_params: T.nilable(T::Hash[Symbol, T.anything]),
                    automation_type: T.nilable(String),
                    date_created: Time,
                    date_updated: Time,
                    deactivated: T::Boolean,
                    description: T.nilable(String),
                    evidence_type:
                      T.nilable(
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::OrSymbol
                      ),
                    immutable: T::Boolean,
                    renewal_cadence_days: T.nilable(Integer)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The rule id.
                  id:,
                  # The rule name.
                  name:,
                  # Whether the rule is evaluated once for the whole workspace, or once per project
                  # the rule's frameworks apply to.
                  scope:,
                  # `platform` rules are evaluated automatically from the state of your Openlayer
                  # workspace. `evidence` rules are satisfied by attaching evidence.
                  type:,
                  # Configuration for the platform check, when the automation takes parameters.
                  automation_params: nil,
                  # Which workspace signal a platform rule checks, for example
                  # `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
                  # evidence rules.
                  automation_type: nil,
                  # The creation date.
                  date_created: nil,
                  # The last update date.
                  date_updated: nil,
                  # Whether the rule is excluded from compliance calculations.
                  deactivated: nil,
                  # What the rule requires.
                  description: nil,
                  # The kind of evidence that satisfies the rule. `null` for platform rules.
                  evidence_type: nil,
                  # Whether the rule is managed by Openlayer and cannot be edited.
                  immutable: nil,
                  # How often evidence must be renewed, in days. Once evidence is older than this,
                  # the rule result becomes `due_soon` and then `failing`.
                  renewal_cadence_days: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      name: String,
                      scope:
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope::TaggedSymbol,
                      type:
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type::TaggedSymbol,
                      automation_params: T.nilable(T::Hash[Symbol, T.anything]),
                      automation_type: T.nilable(String),
                      date_created: Time,
                      date_updated: Time,
                      deactivated: T::Boolean,
                      description: T.nilable(String),
                      evidence_type:
                        T.nilable(
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                        ),
                      immutable: T::Boolean,
                      renewal_cadence_days: T.nilable(Integer)
                    }
                  )
                end
                def to_hash
                end

                # Whether the rule is evaluated once for the whole workspace, or once per project
                # the rule's frameworks apply to.
                module Scope
                  extend Openlayer::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PROJECT =
                    T.let(
                      :project,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope::TaggedSymbol
                    )
                  WORKSPACE =
                    T.let(
                      :workspace,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Scope::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # `platform` rules are evaluated automatically from the state of your Openlayer
                # workspace. `evidence` rules are satisfied by attaching evidence.
                module Type
                  extend Openlayer::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PLATFORM =
                    T.let(
                      :platform,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type::TaggedSymbol
                    )
                  EVIDENCE =
                    T.let(
                      :evidence,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # The kind of evidence that satisfies the rule. `null` for platform rules.
                module EvidenceType
                  extend Openlayer::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  DOCUMENT =
                    T.let(
                      :document,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                    )
                  TEXT =
                    T.let(
                      :text,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                    )
                  URL =
                    T.let(
                      :url,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                    )
                  CATEGORY_VALUE =
                    T.let(
                      :categoryValue,
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Rule::EvidenceType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Subsection < Openlayer::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection,
                      Openlayer::Internal::AnyHash
                    )
                  end

                # The subsection number as it appears in the source standard.
                sig { returns(String) }
                attr_accessor :number

                # The position of the subsection within its section.
                sig { returns(Integer) }
                attr_accessor :sort_order

                # The subsection title.
                sig { returns(String) }
                attr_accessor :title

                # The subsection text. This is the requirement your rules are mapped against.
                sig { returns(T.nilable(String)) }
                attr_accessor :text

                # The subsection id.
                sig { returns(String) }
                attr_accessor :id

                # The section the subsection belongs to.
                sig { returns(String) }
                attr_accessor :section_id

                # How many rules are linked to this subsection.
                sig { returns(T.nilable(Integer)) }
                attr_reader :rule_count

                sig { params(rule_count: Integer).void }
                attr_writer :rule_count

                # The rules linked to this subsection.
                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule
                      ]
                    )
                  )
                end
                attr_reader :rules

                sig do
                  params(
                    rules:
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::OrHash
                      ]
                  ).void
                end
                attr_writer :rules

                sig do
                  params(
                    id: String,
                    number: String,
                    section_id: String,
                    sort_order: Integer,
                    title: String,
                    rule_count: Integer,
                    rules:
                      T::Array[
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::OrHash
                      ],
                    text: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The subsection id.
                  id:,
                  # The subsection number as it appears in the source standard.
                  number:,
                  # The section the subsection belongs to.
                  section_id:,
                  # The position of the subsection within its section.
                  sort_order:,
                  # The subsection title.
                  title:,
                  # How many rules are linked to this subsection.
                  rule_count: nil,
                  # The rules linked to this subsection.
                  rules: nil,
                  # The subsection text. This is the requirement your rules are mapped against.
                  text: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      number: String,
                      section_id: String,
                      sort_order: Integer,
                      title: String,
                      rule_count: Integer,
                      rules:
                        T::Array[
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule
                        ],
                      text: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                class Rule < Openlayer::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule,
                        Openlayer::Internal::AnyHash
                      )
                    end

                  # The rule name.
                  sig { returns(String) }
                  attr_accessor :name

                  # Whether the rule is evaluated once for the whole workspace, or once per project
                  # the rule's frameworks apply to.
                  sig do
                    returns(
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope::TaggedSymbol
                    )
                  end
                  attr_accessor :scope

                  # `platform` rules are evaluated automatically from the state of your Openlayer
                  # workspace. `evidence` rules are satisfied by attaching evidence.
                  sig do
                    returns(
                      Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type::TaggedSymbol
                    )
                  end
                  attr_accessor :type

                  # Configuration for the platform check, when the automation takes parameters.
                  sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                  attr_accessor :automation_params

                  # Which workspace signal a platform rule checks, for example
                  # `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
                  # evidence rules.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :automation_type

                  # Whether the rule is excluded from compliance calculations.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :deactivated

                  sig { params(deactivated: T::Boolean).void }
                  attr_writer :deactivated

                  # What the rule requires.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :description

                  # The kind of evidence that satisfies the rule. `null` for platform rules.
                  sig do
                    returns(
                      T.nilable(
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
                      )
                    )
                  end
                  attr_accessor :evidence_type

                  # How often evidence must be renewed, in days. Once evidence is older than this,
                  # the rule result becomes `due_soon` and then `failing`.
                  sig { returns(T.nilable(Integer)) }
                  attr_accessor :renewal_cadence_days

                  # The rule id.
                  sig { returns(String) }
                  attr_accessor :id

                  # The creation date.
                  sig { returns(T.nilable(Time)) }
                  attr_reader :date_created

                  sig { params(date_created: Time).void }
                  attr_writer :date_created

                  # The last update date.
                  sig { returns(T.nilable(Time)) }
                  attr_reader :date_updated

                  sig { params(date_updated: Time).void }
                  attr_writer :date_updated

                  # Whether the rule is managed by Openlayer and cannot be edited.
                  sig { returns(T.nilable(T::Boolean)) }
                  attr_reader :immutable

                  sig { params(immutable: T::Boolean).void }
                  attr_writer :immutable

                  sig do
                    params(
                      id: String,
                      name: String,
                      scope:
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope::OrSymbol,
                      type:
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type::OrSymbol,
                      automation_params: T.nilable(T::Hash[Symbol, T.anything]),
                      automation_type: T.nilable(String),
                      date_created: Time,
                      date_updated: Time,
                      deactivated: T::Boolean,
                      description: T.nilable(String),
                      evidence_type:
                        T.nilable(
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::OrSymbol
                        ),
                      immutable: T::Boolean,
                      renewal_cadence_days: T.nilable(Integer)
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The rule id.
                    id:,
                    # The rule name.
                    name:,
                    # Whether the rule is evaluated once for the whole workspace, or once per project
                    # the rule's frameworks apply to.
                    scope:,
                    # `platform` rules are evaluated automatically from the state of your Openlayer
                    # workspace. `evidence` rules are satisfied by attaching evidence.
                    type:,
                    # Configuration for the platform check, when the automation takes parameters.
                    automation_params: nil,
                    # Which workspace signal a platform rule checks, for example
                    # `monitoring_mode_enabled`, `test_setup`, or `project_owner_set`. `null` for
                    # evidence rules.
                    automation_type: nil,
                    # The creation date.
                    date_created: nil,
                    # The last update date.
                    date_updated: nil,
                    # Whether the rule is excluded from compliance calculations.
                    deactivated: nil,
                    # What the rule requires.
                    description: nil,
                    # The kind of evidence that satisfies the rule. `null` for platform rules.
                    evidence_type: nil,
                    # Whether the rule is managed by Openlayer and cannot be edited.
                    immutable: nil,
                    # How often evidence must be renewed, in days. Once evidence is older than this,
                    # the rule result becomes `due_soon` and then `failing`.
                    renewal_cadence_days: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        id: String,
                        name: String,
                        scope:
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope::TaggedSymbol,
                        type:
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type::TaggedSymbol,
                        automation_params:
                          T.nilable(T::Hash[Symbol, T.anything]),
                        automation_type: T.nilable(String),
                        date_created: Time,
                        date_updated: Time,
                        deactivated: T::Boolean,
                        description: T.nilable(String),
                        evidence_type:
                          T.nilable(
                            Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
                          ),
                        immutable: T::Boolean,
                        renewal_cadence_days: T.nilable(Integer)
                      }
                    )
                  end
                  def to_hash
                  end

                  # Whether the rule is evaluated once for the whole workspace, or once per project
                  # the rule's frameworks apply to.
                  module Scope
                    extend Openlayer::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PROJECT =
                      T.let(
                        :project,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope::TaggedSymbol
                      )
                    WORKSPACE =
                      T.let(
                        :workspace,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Scope::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end

                  # `platform` rules are evaluated automatically from the state of your Openlayer
                  # workspace. `evidence` rules are satisfied by attaching evidence.
                  module Type
                    extend Openlayer::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    PLATFORM =
                      T.let(
                        :platform,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type::TaggedSymbol
                      )
                    EVIDENCE =
                      T.let(
                        :evidence,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end

                  # The kind of evidence that satisfies the rule. `null` for platform rules.
                  module EvidenceType
                    extend Openlayer::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    DOCUMENT =
                      T.let(
                        :document,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
                      )
                    TEXT =
                      T.let(
                        :text,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
                      )
                    URL =
                      T.let(
                        :url,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
                      )
                    CATEGORY_VALUE =
                      T.let(
                        :categoryValue,
                        Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Openlayer::Models::Governance::Frameworks::DocumentListResponse::Item::Section::Subsection::Rule::EvidenceType::TaggedSymbol
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
    end
  end
end
