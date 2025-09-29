# typed: strong

module Openlayer
  module Models
    module Projects
      class TestListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Projects::TestListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Openlayer::Models::Projects::TestListResponse::Item])
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Projects::TestListResponse::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[Openlayer::Models::Projects::TestListResponse::Item]
            }
          )
        end
        def to_hash
        end

        class Item < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Projects::TestListResponse::Item,
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
            returns(
              Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
            )
          end
          attr_accessor :subtype

          sig do
            returns(
              T::Array[
                Openlayer::Models::Projects::TestListResponse::Item::Threshold
              ]
            )
          end
          attr_accessor :thresholds

          # The test type.
          sig do
            returns(
              Openlayer::Models::Projects::TestListResponse::Item::Type::TaggedSymbol
            )
          end
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

          # The test id.
          sig { returns(String) }
          attr_accessor :id

          # The number of comments on the test.
          sig { returns(Integer) }
          attr_accessor :comment_count

          # The test creator id.
          sig { returns(T.nilable(String)) }
          attr_accessor :creator_id

          # The date the test was archived.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_archived

          # The creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The last updated date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # The test number.
          sig { returns(Integer) }
          attr_accessor :number

          # The project version (commit) id where the test was created.
          sig { returns(T.nilable(String)) }
          attr_accessor :origin_project_version_id

          # Whether the test is suggested or user-created.
          sig { returns(T::Boolean) }
          attr_accessor :suggested

          sig do
            params(
              id: String,
              comment_count: Integer,
              creator_id: T.nilable(String),
              date_archived: T.nilable(Time),
              date_created: Time,
              date_updated: Time,
              description: T.nilable(T.anything),
              name: String,
              number: Integer,
              origin_project_version_id: T.nilable(String),
              subtype:
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::OrSymbol,
              suggested: T::Boolean,
              thresholds:
                T::Array[
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::OrHash
                ],
              type:
                Openlayer::Models::Projects::TestListResponse::Item::Type::OrSymbol,
              archived: T::Boolean,
              delay_window: T.nilable(Float),
              evaluation_window: T.nilable(Float),
              uses_ml_model: T::Boolean,
              uses_production_data: T::Boolean,
              uses_reference_dataset: T::Boolean,
              uses_training_dataset: T::Boolean,
              uses_validation_dataset: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # The test id.
            id:,
            # The number of comments on the test.
            comment_count:,
            # The test creator id.
            creator_id:,
            # The date the test was archived.
            date_archived:,
            # The creation date.
            date_created:,
            # The last updated date.
            date_updated:,
            # The test description.
            description:,
            # The test name.
            name:,
            # The test number.
            number:,
            # The project version (commit) id where the test was created.
            origin_project_version_id:,
            # The test subtype.
            subtype:,
            # Whether the test is suggested or user-created.
            suggested:,
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
            uses_validation_dataset: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                comment_count: Integer,
                creator_id: T.nilable(String),
                date_archived: T.nilable(Time),
                date_created: Time,
                date_updated: Time,
                description: T.nilable(T.anything),
                name: String,
                number: Integer,
                origin_project_version_id: T.nilable(String),
                subtype:
                  Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol,
                suggested: T::Boolean,
                thresholds:
                  T::Array[
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold
                  ],
                type:
                  Openlayer::Models::Projects::TestListResponse::Item::Type::TaggedSymbol,
                archived: T::Boolean,
                delay_window: T.nilable(Float),
                evaluation_window: T.nilable(Float),
                uses_ml_model: T::Boolean,
                uses_production_data: T::Boolean,
                uses_reference_dataset: T::Boolean,
                uses_training_dataset: T::Boolean,
                uses_validation_dataset: T::Boolean
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
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::TestListResponse::Item::Subtype
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANOMALOUS_COLUMN_COUNT =
              T.let(
                :anomalousColumnCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CHARACTER_LENGTH =
              T.let(
                :characterLength,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CLASS_IMBALANCE_RATIO =
              T.let(
                :classImbalanceRatio,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
              T.let(
                :expectColumnAToBeInColumnB,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            COLUMN_AVERAGE =
              T.let(
                :columnAverage,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            COLUMN_DRIFT =
              T.let(
                :columnDrift,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            COLUMN_STATISTIC =
              T.let(
                :columnStatistic,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            COLUMN_VALUES_MATCH =
              T.let(
                :columnValuesMatch,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CONFLICTING_LABEL_ROW_COUNT =
              T.let(
                :conflictingLabelRowCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CONTAINS_PII =
              T.let(
                :containsPii,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CONTAINS_VALID_URL =
              T.let(
                :containsValidUrl,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CORRELATED_FEATURE_COUNT =
              T.let(
                :correlatedFeatureCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            CUSTOM_METRIC_THRESHOLD =
              T.let(
                :customMetricThreshold,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            DUPLICATE_ROW_COUNT =
              T.let(
                :duplicateRowCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            EMPTY_FEATURE =
              T.let(
                :emptyFeature,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            EMPTY_FEATURE_COUNT =
              T.let(
                :emptyFeatureCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            DRIFTED_FEATURE_COUNT =
              T.let(
                :driftedFeatureCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            FEATURE_MISSING_VALUES =
              T.let(
                :featureMissingValues,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            FEATURE_VALUE_VALIDATION =
              T.let(
                :featureValueValidation,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            GREAT_EXPECTATIONS =
              T.let(
                :greatExpectations,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            GROUP_BY_COLUMN_STATS_CHECK =
              T.let(
                :groupByColumnStatsCheck,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            ILL_FORMED_ROW_COUNT =
              T.let(
                :illFormedRowCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            IS_CODE =
              T.let(
                :isCode,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            IS_JSON =
              T.let(
                :isJson,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            LLM_RUBRIC_THRESHOLD_V2 =
              T.let(
                :llmRubricThresholdV2,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            LABEL_DRIFT =
              T.let(
                :labelDrift,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            METRIC_THRESHOLD =
              T.let(
                :metricThreshold,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            NEW_CATEGORY_COUNT =
              T.let(
                :newCategoryCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            NEW_LABEL_COUNT =
              T.let(
                :newLabelCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            NULL_ROW_COUNT =
              T.let(
                :nullRowCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            ROW_COUNT =
              T.let(
                :rowCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            PP_SCORE_VALUE_VALIDATION =
              T.let(
                :ppScoreValueValidation,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            QUASI_CONSTANT_FEATURE =
              T.let(
                :quasiConstantFeature,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            QUASI_CONSTANT_FEATURE_COUNT =
              T.let(
                :quasiConstantFeatureCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            SQL_QUERY =
              T.let(
                :sqlQuery,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            DTYPE_VALIDATION =
              T.let(
                :dtypeValidation,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            SENTENCE_LENGTH =
              T.let(
                :sentenceLength,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            SIZE_RATIO =
              T.let(
                :sizeRatio,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            SPECIAL_CHARACTERS_RATIO =
              T.let(
                :specialCharactersRatio,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            STRING_VALIDATION =
              T.let(
                :stringValidation,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )
            TRAIN_VAL_LEAKAGE_ROW_COUNT =
              T.let(
                :trainValLeakageRowCount,
                Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::TestListResponse::Item::Subtype::TaggedSymbol
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
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold,
                  Openlayer::Internal::AnyHash
                )
              end

            # The insight name to be evaluated.
            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              )
            end
            attr_reader :insight_name

            sig do
              params(
                insight_name:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::OrSymbol
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightParameter
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
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )
              )
            end
            attr_reader :operator

            sig do
              params(
                operator:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::OrSymbol
              ).void
            end
            attr_writer :operator

            # Whether to use automatic anomaly detection or manual thresholds
            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::TaggedSymbol
                )
              )
            end
            attr_reader :threshold_mode

            sig do
              params(
                threshold_mode:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::OrSymbol
              ).void
            end
            attr_writer :threshold_mode

            # The value to be compared.
            sig do
              returns(
                T.nilable(
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Value::Variants
                )
              )
            end
            attr_reader :value

            sig do
              params(
                value:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Value::Variants
              ).void
            end
            attr_writer :value

            sig do
              params(
                insight_name:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::OrSymbol,
                insight_parameters:
                  T.nilable(
                    T::Array[
                      Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightParameter::OrHash
                    ]
                  ),
                measurement: String,
                operator:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::OrSymbol,
                threshold_mode:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::OrSymbol,
                value:
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Value::Variants
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol,
                  insight_parameters:
                    T.nilable(
                      T::Array[
                        Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightParameter
                      ]
                    ),
                  measurement: String,
                  operator:
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol,
                  threshold_mode:
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::TaggedSymbol,
                  value:
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::Value::Variants
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CHARACTER_LENGTH =
                T.let(
                  :characterLength,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CLASS_IMBALANCE =
                T.let(
                  :classImbalance,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
                T.let(
                  :expectColumnAToBeInColumnB,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              COLUMN_AVERAGE =
                T.let(
                  :columnAverage,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              COLUMN_DRIFT =
                T.let(
                  :columnDrift,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              COLUMN_VALUES_MATCH =
                T.let(
                  :columnValuesMatch,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CONFIDENCE_DISTRIBUTION =
                T.let(
                  :confidenceDistribution,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CONFLICTING_LABEL_ROW_COUNT =
                T.let(
                  :conflictingLabelRowCount,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CONTAINS_PII =
                T.let(
                  :containsPii,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CONTAINS_VALID_URL =
                T.let(
                  :containsValidUrl,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CORRELATED_FEATURES =
                T.let(
                  :correlatedFeatures,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              CUSTOM_METRIC =
                T.let(
                  :customMetric,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              DUPLICATE_ROW_COUNT =
                T.let(
                  :duplicateRowCount,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              EMPTY_FEATURES =
                T.let(
                  :emptyFeatures,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              FEATURE_DRIFT =
                T.let(
                  :featureDrift,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              FEATURE_PROFILE =
                T.let(
                  :featureProfile,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              GREAT_EXPECTATIONS =
                T.let(
                  :greatExpectations,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              GROUP_BY_COLUMN_STATS_CHECK =
                T.let(
                  :groupByColumnStatsCheck,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              ILL_FORMED_ROW_COUNT =
                T.let(
                  :illFormedRowCount,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              IS_CODE =
                T.let(
                  :isCode,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              IS_JSON =
                T.let(
                  :isJson,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              LLM_RUBRIC_V2 =
                T.let(
                  :llmRubricV2,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              LABEL_DRIFT =
                T.let(
                  :labelDrift,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              METRICS =
                T.let(
                  :metrics,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              NEW_CATEGORIES =
                T.let(
                  :newCategories,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              NEW_LABELS =
                T.let(
                  :newLabels,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              NULL_ROW_COUNT =
                T.let(
                  :nullRowCount,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              PP_SCORE =
                T.let(
                  :ppScore,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              QUASI_CONSTANT_FEATURES =
                T.let(
                  :quasiConstantFeatures,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              SENTENCE_LENGTH =
                T.let(
                  :sentenceLength,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              SIZE_RATIO =
                T.let(
                  :sizeRatio,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              SPECIAL_CHARACTERS =
                T.let(
                  :specialCharacters,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              STRING_VALIDATION =
                T.let(
                  :stringValidation,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )
              TRAIN_VAL_LEAKAGE_ROW_COUNT =
                T.let(
                  :trainValLeakageRowCount,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightName::TaggedSymbol
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::InsightParameter,
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IS =
                T.let(
                  :is,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )
              GREATER =
                T.let(
                  :">",
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )
              GREATER_OR_EQUALS =
                T.let(
                  :">=",
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )
              LESS =
                T.let(
                  :"<",
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )
              LESS_OR_EQUALS =
                T.let(
                  :"<=",
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )
              NOT_EQUALS =
                T.let(
                  :"!=",
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::Operator::TaggedSymbol
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUTOMATIC =
                T.let(
                  :automatic,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::TaggedSymbol
                )
              MANUAL =
                T.let(
                  :manual,
                  Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::ThresholdMode::TaggedSymbol
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
                    Openlayer::Models::Projects::TestListResponse::Item::Threshold::Value::Variants
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
                T.all(
                  Symbol,
                  Openlayer::Models::Projects::TestListResponse::Item::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INTEGRITY =
              T.let(
                :integrity,
                Openlayer::Models::Projects::TestListResponse::Item::Type::TaggedSymbol
              )
            CONSISTENCY =
              T.let(
                :consistency,
                Openlayer::Models::Projects::TestListResponse::Item::Type::TaggedSymbol
              )
            PERFORMANCE =
              T.let(
                :performance,
                Openlayer::Models::Projects::TestListResponse::Item::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Projects::TestListResponse::Item::Type::TaggedSymbol
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
