# typed: strong

module Openlayer
  module Models
    module Projects
      class TestUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Projects::TestUpdateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Openlayer::Projects::TestUpdateParams::Payload])
        end
        attr_accessor :payloads

        sig do
          params(
            payloads:
              T::Array[Openlayer::Projects::TestUpdateParams::Payload::OrHash],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(payloads:, request_options: {})
        end

        sig do
          override.returns(
            {
              payloads:
                T::Array[Openlayer::Projects::TestUpdateParams::Payload],
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Payload < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Projects::TestUpdateParams::Payload,
                Openlayer::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Whether the test is archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          # The test description.
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :description

          # The test name.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            returns(
              T.nilable(
                Openlayer::Projects::TestUpdateParams::Payload::Suggested::OrBoolean
              )
            )
          end
          attr_reader :suggested

          sig do
            params(
              suggested:
                Openlayer::Projects::TestUpdateParams::Payload::Suggested::OrBoolean
            ).void
          end
          attr_writer :suggested

          sig do
            returns(
              T.nilable(
                T::Array[
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold
                ]
              )
            )
          end
          attr_reader :thresholds

          sig do
            params(
              thresholds:
                T::Array[
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::OrHash
                ]
            ).void
          end
          attr_writer :thresholds

          sig do
            params(
              id: String,
              archived: T::Boolean,
              description: T.nilable(T.anything),
              name: String,
              suggested:
                Openlayer::Projects::TestUpdateParams::Payload::Suggested::OrBoolean,
              thresholds:
                T::Array[
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Whether the test is archived.
            archived: nil,
            # The test description.
            description: nil,
            # The test name.
            name: nil,
            suggested: nil,
            thresholds: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                archived: T::Boolean,
                description: T.nilable(T.anything),
                name: String,
                suggested:
                  Openlayer::Projects::TestUpdateParams::Payload::Suggested::OrBoolean,
                thresholds:
                  T::Array[
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold
                  ]
              }
            )
          end
          def to_hash
          end

          module Suggested
            extend Openlayer::Internal::Type::Enum

            TaggedBoolean =
              T.type_alias do
                T.all(
                  T::Boolean,
                  Openlayer::Projects::TestUpdateParams::Payload::Suggested
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            FALSE =
              T.let(
                false,
                Openlayer::Projects::TestUpdateParams::Payload::Suggested::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::TestUpdateParams::Payload::Suggested::TaggedBoolean
                ]
              )
            end
            def self.values
            end
          end

          class Threshold < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold,
                  Openlayer::Internal::AnyHash
                )
              end

            # The insight name to be evaluated.
            sig do
              returns(
                T.nilable(
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::OrSymbol
                )
              )
            end
            attr_reader :insight_name

            sig do
              params(
                insight_name:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::OrSymbol
              ).void
            end
            attr_writer :insight_name

            # The insight parameters. Required only for some test subtypes. For example, for
            # tests that require a column name, the insight parameters will be [{'name':
            # 'column_name', 'value': 'Age'}]
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightParameter
                  ]
                )
              )
            end
            attr_accessor :insight_parameters

            # The measurement to be evaluated.
            sig { returns(T.nilable(String)) }
            attr_reader :measurement

            sig { params(measurement: String).void }
            attr_writer :measurement

            # The operator to be used for the evaluation.
            sig do
              returns(
                T.nilable(
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::OrSymbol
                )
              )
            end
            attr_reader :operator

            sig do
              params(
                operator:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::OrSymbol
              ).void
            end
            attr_writer :operator

            # Whether to use automatic anomaly detection or manual thresholds
            sig do
              returns(
                T.nilable(
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::OrSymbol
                )
              )
            end
            attr_reader :threshold_mode

            sig do
              params(
                threshold_mode:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::OrSymbol
              ).void
            end
            attr_writer :threshold_mode

            # The value to be compared.
            sig do
              returns(
                T.nilable(
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Value::Variants
                )
              )
            end
            attr_reader :value

            sig do
              params(
                value:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Value::Variants
              ).void
            end
            attr_writer :value

            sig do
              params(
                insight_name:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::OrSymbol,
                insight_parameters:
                  T.nilable(
                    T::Array[
                      Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightParameter::OrHash
                    ]
                  ),
                measurement: String,
                operator:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::OrSymbol,
                threshold_mode:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::OrSymbol,
                value:
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Value::Variants
              ).returns(T.attached_class)
            end
            def self.new(
              # The insight name to be evaluated.
              insight_name: nil,
              # The insight parameters. Required only for some test subtypes. For example, for
              # tests that require a column name, the insight parameters will be [{'name':
              # 'column_name', 'value': 'Age'}]
              insight_parameters: nil,
              # The measurement to be evaluated.
              measurement: nil,
              # The operator to be used for the evaluation.
              operator: nil,
              # Whether to use automatic anomaly detection or manual thresholds
              threshold_mode: nil,
              # The value to be compared.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  insight_name:
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::OrSymbol,
                  insight_parameters:
                    T.nilable(
                      T::Array[
                        Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightParameter
                      ]
                    ),
                  measurement: String,
                  operator:
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::OrSymbol,
                  threshold_mode:
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::OrSymbol,
                  value:
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::Value::Variants
                }
              )
            end
            def to_hash
            end

            # The insight name to be evaluated.
            module InsightName
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARACTER_LENGTH =
                T.let(
                  :characterLength,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CLASS_IMBALANCE =
                T.let(
                  :classImbalance,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
                T.let(
                  :expectColumnAToBeInColumnB,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              COLUMN_AVERAGE =
                T.let(
                  :columnAverage,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              COLUMN_DRIFT =
                T.let(
                  :columnDrift,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              COLUMN_VALUES_MATCH =
                T.let(
                  :columnValuesMatch,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CONFIDENCE_DISTRIBUTION =
                T.let(
                  :confidenceDistribution,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CONFLICTING_LABEL_ROW_COUNT =
                T.let(
                  :conflictingLabelRowCount,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CONTAINS_PII =
                T.let(
                  :containsPii,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CONTAINS_VALID_URL =
                T.let(
                  :containsValidUrl,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CORRELATED_FEATURES =
                T.let(
                  :correlatedFeatures,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              CUSTOM_METRIC =
                T.let(
                  :customMetric,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              DUPLICATE_ROW_COUNT =
                T.let(
                  :duplicateRowCount,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              EMPTY_FEATURES =
                T.let(
                  :emptyFeatures,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              FEATURE_DRIFT =
                T.let(
                  :featureDrift,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              FEATURE_PROFILE =
                T.let(
                  :featureProfile,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              GREAT_EXPECTATIONS =
                T.let(
                  :greatExpectations,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              GROUP_BY_COLUMN_STATS_CHECK =
                T.let(
                  :groupByColumnStatsCheck,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              ILL_FORMED_ROW_COUNT =
                T.let(
                  :illFormedRowCount,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              IS_CODE =
                T.let(
                  :isCode,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              IS_JSON =
                T.let(
                  :isJson,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              LLM_RUBRIC_V2 =
                T.let(
                  :llmRubricV2,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              LABEL_DRIFT =
                T.let(
                  :labelDrift,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              METRICS =
                T.let(
                  :metrics,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              NEW_CATEGORIES =
                T.let(
                  :newCategories,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              NEW_LABELS =
                T.let(
                  :newLabels,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              NULL_ROW_COUNT =
                T.let(
                  :nullRowCount,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              PP_SCORE =
                T.let(
                  :ppScore,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              QUASI_CONSTANT_FEATURES =
                T.let(
                  :quasiConstantFeatures,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              SENTENCE_LENGTH =
                T.let(
                  :sentenceLength,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              SIZE_RATIO =
                T.let(
                  :sizeRatio,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              SPECIAL_CHARACTERS =
                T.let(
                  :specialCharacters,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              STRING_VALIDATION =
                T.let(
                  :stringValidation,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )
              TRAIN_VAL_LEAKAGE_ROW_COUNT =
                T.let(
                  :trainValLeakageRowCount,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class InsightParameter < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightParameter,
                    Openlayer::Internal::AnyHash
                  )
                end

              # The name of the insight filter.
              sig { returns(String) }
              attr_accessor :name

              sig { returns(T.anything) }
              attr_accessor :value

              sig do
                params(name: String, value: T.anything).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The name of the insight filter.
                name:,
                value:
              )
              end

              sig { override.returns({ name: String, value: T.anything }) }
              def to_hash
              end
            end

            # The operator to be used for the evaluation.
            module Operator
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IS =
                T.let(
                  :is,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                )
              GREATER =
                T.let(
                  :">",
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                )
              GREATER_OR_EQUALS =
                T.let(
                  :">=",
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                )
              LESS =
                T.let(
                  :"<",
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                )
              LESS_OR_EQUALS =
                T.let(
                  :"<=",
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                )
              NOT_EQUALS =
                T.let(
                  :"!=",
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether to use automatic anomaly detection or manual thresholds
            module ThresholdMode
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUTOMATIC =
                T.let(
                  :automatic,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::TaggedSymbol
                )
              MANUAL =
                T.let(
                  :manual,
                  Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The value to be compared.
            module Value
              extend Openlayer::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(Float, T::Boolean, String, T::Array[String])
                end

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Projects::TestUpdateParams::Payload::Threshold::Value::Variants
                  ]
                )
              end
              def self.variants
              end

              StringArray =
                T.let(
                  Openlayer::Internal::Type::ArrayOf[String],
                  Openlayer::Internal::Type::Converter
                )
            end
          end
        end
      end
    end
  end
end
