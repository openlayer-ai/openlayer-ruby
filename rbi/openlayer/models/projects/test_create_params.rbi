# typed: strong

module Openlayer
  module Models
    module Projects
      class TestCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Projects::TestCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        # The test description.
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :description

        # The test name.
        sig { returns(String) }
        attr_accessor :name

        # The test subtype.
        sig do
          returns(Openlayer::Projects::TestCreateParams::Subtype::OrSymbol)
        end
        attr_accessor :subtype

        sig do
          returns(T::Array[Openlayer::Projects::TestCreateParams::Threshold])
        end
        attr_accessor :thresholds

        # The test type.
        sig { returns(Openlayer::Projects::TestCreateParams::Type::OrSymbol) }
        attr_accessor :type

        # Whether the test is archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # The delay window in seconds. Only applies to tests that use production data.
        sig { returns(T.nilable(Float)) }
        attr_accessor :delay_window

        # The evaluation window in seconds. Only applies to tests that use production
        # data.
        sig { returns(T.nilable(Float)) }
        attr_accessor :evaluation_window

        # Whether the test uses an ML model.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :uses_ml_model

        sig { params(uses_ml_model: T::Boolean).void }
        attr_writer :uses_ml_model

        # Whether the test uses production data (monitoring mode only).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :uses_production_data

        sig { params(uses_production_data: T::Boolean).void }
        attr_writer :uses_production_data

        # Whether the test uses a reference dataset (monitoring mode only).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :uses_reference_dataset

        sig { params(uses_reference_dataset: T::Boolean).void }
        attr_writer :uses_reference_dataset

        # Whether the test uses a training dataset.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :uses_training_dataset

        sig { params(uses_training_dataset: T::Boolean).void }
        attr_writer :uses_training_dataset

        # Whether the test uses a validation dataset.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :uses_validation_dataset

        sig { params(uses_validation_dataset: T::Boolean).void }
        attr_writer :uses_validation_dataset

        sig do
          params(
            description: T.nilable(T.anything),
            name: String,
            subtype: Openlayer::Projects::TestCreateParams::Subtype::OrSymbol,
            thresholds:
              T::Array[
                Openlayer::Projects::TestCreateParams::Threshold::OrHash
              ],
            type: Openlayer::Projects::TestCreateParams::Type::OrSymbol,
            archived: T::Boolean,
            delay_window: T.nilable(Float),
            evaluation_window: T.nilable(Float),
            uses_ml_model: T::Boolean,
            uses_production_data: T::Boolean,
            uses_reference_dataset: T::Boolean,
            uses_training_dataset: T::Boolean,
            uses_validation_dataset: T::Boolean,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The test description.
          description:,
          # The test name.
          name:,
          # The test subtype.
          subtype:,
          thresholds:,
          # The test type.
          type:,
          # Whether the test is archived.
          archived: nil,
          # The delay window in seconds. Only applies to tests that use production data.
          delay_window: nil,
          # The evaluation window in seconds. Only applies to tests that use production
          # data.
          evaluation_window: nil,
          # Whether the test uses an ML model.
          uses_ml_model: nil,
          # Whether the test uses production data (monitoring mode only).
          uses_production_data: nil,
          # Whether the test uses a reference dataset (monitoring mode only).
          uses_reference_dataset: nil,
          # Whether the test uses a training dataset.
          uses_training_dataset: nil,
          # Whether the test uses a validation dataset.
          uses_validation_dataset: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              description: T.nilable(T.anything),
              name: String,
              subtype: Openlayer::Projects::TestCreateParams::Subtype::OrSymbol,
              thresholds:
                T::Array[Openlayer::Projects::TestCreateParams::Threshold],
              type: Openlayer::Projects::TestCreateParams::Type::OrSymbol,
              archived: T::Boolean,
              delay_window: T.nilable(Float),
              evaluation_window: T.nilable(Float),
              uses_ml_model: T::Boolean,
              uses_production_data: T::Boolean,
              uses_reference_dataset: T::Boolean,
              uses_training_dataset: T::Boolean,
              uses_validation_dataset: T::Boolean,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The test subtype.
        module Subtype
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Projects::TestCreateParams::Subtype)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ANOMALOUS_COLUMN_COUNT =
            T.let(
              :anomalousColumnCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CHARACTER_LENGTH =
            T.let(
              :characterLength,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CLASS_IMBALANCE_RATIO =
            T.let(
              :classImbalanceRatio,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
            T.let(
              :expectColumnAToBeInColumnB,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          COLUMN_AVERAGE =
            T.let(
              :columnAverage,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          COLUMN_DRIFT =
            T.let(
              :columnDrift,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          COLUMN_STATISTIC =
            T.let(
              :columnStatistic,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          COLUMN_VALUES_MATCH =
            T.let(
              :columnValuesMatch,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CONFLICTING_LABEL_ROW_COUNT =
            T.let(
              :conflictingLabelRowCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CONTAINS_PII =
            T.let(
              :containsPii,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CONTAINS_VALID_URL =
            T.let(
              :containsValidUrl,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CORRELATED_FEATURE_COUNT =
            T.let(
              :correlatedFeatureCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          CUSTOM_METRIC_THRESHOLD =
            T.let(
              :customMetricThreshold,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          DUPLICATE_ROW_COUNT =
            T.let(
              :duplicateRowCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          EMPTY_FEATURE =
            T.let(
              :emptyFeature,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          EMPTY_FEATURE_COUNT =
            T.let(
              :emptyFeatureCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          DRIFTED_FEATURE_COUNT =
            T.let(
              :driftedFeatureCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          FEATURE_MISSING_VALUES =
            T.let(
              :featureMissingValues,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          FEATURE_VALUE_VALIDATION =
            T.let(
              :featureValueValidation,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          GREAT_EXPECTATIONS =
            T.let(
              :greatExpectations,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          GROUP_BY_COLUMN_STATS_CHECK =
            T.let(
              :groupByColumnStatsCheck,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          ILL_FORMED_ROW_COUNT =
            T.let(
              :illFormedRowCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          IS_CODE =
            T.let(
              :isCode,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          IS_JSON =
            T.let(
              :isJson,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          LLM_RUBRIC_THRESHOLD_V2 =
            T.let(
              :llmRubricThresholdV2,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          LABEL_DRIFT =
            T.let(
              :labelDrift,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          METRIC_THRESHOLD =
            T.let(
              :metricThreshold,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          NEW_CATEGORY_COUNT =
            T.let(
              :newCategoryCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          NEW_LABEL_COUNT =
            T.let(
              :newLabelCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          NULL_ROW_COUNT =
            T.let(
              :nullRowCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          ROW_COUNT =
            T.let(
              :rowCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          PP_SCORE_VALUE_VALIDATION =
            T.let(
              :ppScoreValueValidation,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          QUASI_CONSTANT_FEATURE =
            T.let(
              :quasiConstantFeature,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          QUASI_CONSTANT_FEATURE_COUNT =
            T.let(
              :quasiConstantFeatureCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          SQL_QUERY =
            T.let(
              :sqlQuery,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          DTYPE_VALIDATION =
            T.let(
              :dtypeValidation,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          SENTENCE_LENGTH =
            T.let(
              :sentenceLength,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          SIZE_RATIO =
            T.let(
              :sizeRatio,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          SPECIAL_CHARACTERS_RATIO =
            T.let(
              :specialCharactersRatio,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          STRING_VALIDATION =
            T.let(
              :stringValidation,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )
          TRAIN_VAL_LEAKAGE_ROW_COUNT =
            T.let(
              :trainValLeakageRowCount,
              Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Projects::TestCreateParams::Subtype::TaggedSymbol
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
                Openlayer::Projects::TestCreateParams::Threshold,
                Openlayer::Internal::AnyHash
              )
            end

          # The insight name to be evaluated.
          sig do
            returns(
              T.nilable(
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::OrSymbol
              )
            )
          end
          attr_reader :insight_name

          sig do
            params(
              insight_name:
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::OrSymbol
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
                  Openlayer::Projects::TestCreateParams::Threshold::InsightParameter
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
                Openlayer::Projects::TestCreateParams::Threshold::Operator::OrSymbol
              )
            )
          end
          attr_reader :operator

          sig do
            params(
              operator:
                Openlayer::Projects::TestCreateParams::Threshold::Operator::OrSymbol
            ).void
          end
          attr_writer :operator

          # Whether to use automatic anomaly detection or manual thresholds
          sig do
            returns(
              T.nilable(
                Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::OrSymbol
              )
            )
          end
          attr_reader :threshold_mode

          sig do
            params(
              threshold_mode:
                Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::OrSymbol
            ).void
          end
          attr_writer :threshold_mode

          # The value to be compared.
          sig do
            returns(
              T.nilable(
                Openlayer::Projects::TestCreateParams::Threshold::Value::Variants
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Openlayer::Projects::TestCreateParams::Threshold::Value::Variants
            ).void
          end
          attr_writer :value

          sig do
            params(
              insight_name:
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::OrSymbol,
              insight_parameters:
                T.nilable(
                  T::Array[
                    Openlayer::Projects::TestCreateParams::Threshold::InsightParameter::OrHash
                  ]
                ),
              measurement: String,
              operator:
                Openlayer::Projects::TestCreateParams::Threshold::Operator::OrSymbol,
              threshold_mode:
                Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::OrSymbol,
              value:
                Openlayer::Projects::TestCreateParams::Threshold::Value::Variants
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
                  Openlayer::Projects::TestCreateParams::Threshold::InsightName::OrSymbol,
                insight_parameters:
                  T.nilable(
                    T::Array[
                      Openlayer::Projects::TestCreateParams::Threshold::InsightParameter
                    ]
                  ),
                measurement: String,
                operator:
                  Openlayer::Projects::TestCreateParams::Threshold::Operator::OrSymbol,
                threshold_mode:
                  Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::OrSymbol,
                value:
                  Openlayer::Projects::TestCreateParams::Threshold::Value::Variants
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
                  Openlayer::Projects::TestCreateParams::Threshold::InsightName
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CHARACTER_LENGTH =
              T.let(
                :characterLength,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CLASS_IMBALANCE =
              T.let(
                :classImbalance,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
              T.let(
                :expectColumnAToBeInColumnB,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            COLUMN_AVERAGE =
              T.let(
                :columnAverage,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            COLUMN_DRIFT =
              T.let(
                :columnDrift,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            COLUMN_VALUES_MATCH =
              T.let(
                :columnValuesMatch,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CONFIDENCE_DISTRIBUTION =
              T.let(
                :confidenceDistribution,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CONFLICTING_LABEL_ROW_COUNT =
              T.let(
                :conflictingLabelRowCount,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CONTAINS_PII =
              T.let(
                :containsPii,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CONTAINS_VALID_URL =
              T.let(
                :containsValidUrl,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CORRELATED_FEATURES =
              T.let(
                :correlatedFeatures,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            CUSTOM_METRIC =
              T.let(
                :customMetric,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            DUPLICATE_ROW_COUNT =
              T.let(
                :duplicateRowCount,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            EMPTY_FEATURES =
              T.let(
                :emptyFeatures,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            FEATURE_DRIFT =
              T.let(
                :featureDrift,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            FEATURE_PROFILE =
              T.let(
                :featureProfile,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            GREAT_EXPECTATIONS =
              T.let(
                :greatExpectations,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            GROUP_BY_COLUMN_STATS_CHECK =
              T.let(
                :groupByColumnStatsCheck,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            ILL_FORMED_ROW_COUNT =
              T.let(
                :illFormedRowCount,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            IS_CODE =
              T.let(
                :isCode,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            IS_JSON =
              T.let(
                :isJson,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            LLM_RUBRIC_V2 =
              T.let(
                :llmRubricV2,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            LABEL_DRIFT =
              T.let(
                :labelDrift,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            METRICS =
              T.let(
                :metrics,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            NEW_CATEGORIES =
              T.let(
                :newCategories,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            NEW_LABELS =
              T.let(
                :newLabels,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            NULL_ROW_COUNT =
              T.let(
                :nullRowCount,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            PP_SCORE =
              T.let(
                :ppScore,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            QUASI_CONSTANT_FEATURES =
              T.let(
                :quasiConstantFeatures,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            SENTENCE_LENGTH =
              T.let(
                :sentenceLength,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            SIZE_RATIO =
              T.let(
                :sizeRatio,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            SPECIAL_CHARACTERS =
              T.let(
                :specialCharacters,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            STRING_VALIDATION =
              T.let(
                :stringValidation,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )
            TRAIN_VAL_LEAKAGE_ROW_COUNT =
              T.let(
                :trainValLeakageRowCount,
                Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::TestCreateParams::Threshold::InsightName::TaggedSymbol
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
                  Openlayer::Projects::TestCreateParams::Threshold::InsightParameter,
                  Openlayer::Internal::AnyHash
                )
              end

            # The name of the insight filter.
            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.anything) }
            attr_accessor :value

            sig do
              params(name: String, value: T.anything).returns(T.attached_class)
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
                  Openlayer::Projects::TestCreateParams::Threshold::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IS =
              T.let(
                :is,
                Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
              )
            GREATER =
              T.let(
                :">",
                Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
              )
            GREATER_OR_EQUALS =
              T.let(
                :">=",
                Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
              )
            LESS =
              T.let(
                :"<",
                Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
              )
            LESS_OR_EQUALS =
              T.let(
                :"<=",
                Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
              )
            NOT_EQUALS =
              T.let(
                :"!=",
                Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::TestCreateParams::Threshold::Operator::TaggedSymbol
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
                  Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTOMATIC =
              T.let(
                :automatic,
                Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::TaggedSymbol
              )
            MANUAL =
              T.let(
                :manual,
                Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode::TaggedSymbol
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
                  Openlayer::Projects::TestCreateParams::Threshold::Value::Variants
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

        # The test type.
        module Type
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Projects::TestCreateParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGRITY =
            T.let(
              :integrity,
              Openlayer::Projects::TestCreateParams::Type::TaggedSymbol
            )
          CONSISTENCY =
            T.let(
              :consistency,
              Openlayer::Projects::TestCreateParams::Type::TaggedSymbol
            )
          PERFORMANCE =
            T.let(
              :performance,
              Openlayer::Projects::TestCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Projects::TestCreateParams::Type::TaggedSymbol
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
