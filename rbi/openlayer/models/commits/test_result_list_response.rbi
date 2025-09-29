# typed: strong

module Openlayer
  module Models
    module Commits
      class TestResultListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Commits::TestResultListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Openlayer::Models::Commits::TestResultListResponse::Item]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Commits::TestResultListResponse::Item::OrHash
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
                  Openlayer::Models::Commits::TestResultListResponse::Item
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
                Openlayer::Models::Commits::TestResultListResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          # The status of the test.
          sig do
            returns(
              Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The status message.
          sig { returns(T.nilable(String)) }
          attr_accessor :status_message

          sig do
            returns(
              T.nilable(
                Openlayer::Models::Commits::TestResultListResponse::Item::Goal
              )
            )
          end
          attr_reader :goal

          sig do
            params(
              goal:
                Openlayer::Models::Commits::TestResultListResponse::Item::Goal::OrHash
            ).void
          end
          attr_writer :goal

          # Project version (commit) id.
          sig { returns(String) }
          attr_accessor :id

          # The creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The data end date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_data_ends

          # The data start date.
          sig { returns(T.nilable(Time)) }
          attr_accessor :date_data_starts

          # The last updated date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # The inference pipeline id.
          sig { returns(T.nilable(String)) }
          attr_accessor :inference_pipeline_id

          # The project version (commit) id.
          sig { returns(T.nilable(String)) }
          attr_accessor :project_version_id

          # The test id.
          sig { returns(T.nilable(String)) }
          attr_accessor :goal_id

          sig do
            params(
              id: String,
              date_created: Time,
              date_data_ends: T.nilable(Time),
              date_data_starts: T.nilable(Time),
              date_updated: Time,
              inference_pipeline_id: T.nilable(String),
              project_version_id: T.nilable(String),
              status:
                Openlayer::Models::Commits::TestResultListResponse::Item::Status::OrSymbol,
              status_message: T.nilable(String),
              goal:
                Openlayer::Models::Commits::TestResultListResponse::Item::Goal::OrHash,
              goal_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Project version (commit) id.
            id:,
            # The creation date.
            date_created:,
            # The data end date.
            date_data_ends:,
            # The data start date.
            date_data_starts:,
            # The last updated date.
            date_updated:,
            # The inference pipeline id.
            inference_pipeline_id:,
            # The project version (commit) id.
            project_version_id:,
            # The status of the test.
            status:,
            # The status message.
            status_message:,
            goal: nil,
            # The test id.
            goal_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                date_created: Time,
                date_data_ends: T.nilable(Time),
                date_data_starts: T.nilable(Time),
                date_updated: Time,
                inference_pipeline_id: T.nilable(String),
                project_version_id: T.nilable(String),
                status:
                  Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol,
                status_message: T.nilable(String),
                goal:
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal,
                goal_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # The status of the test.
          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RUNNING =
              T.let(
                :running,
                Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
              )
            PASSING =
              T.let(
                :passing,
                Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
              )
            FAILING =
              T.let(
                :failing,
                Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
              )
            SKIPPED =
              T.let(
                :skipped,
                Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Commits::TestResultListResponse::Item::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Goal < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal,
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
                Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
              )
            end
            attr_accessor :subtype

            sig do
              returns(
                T::Array[
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold
                ]
              )
            end
            attr_accessor :thresholds

            # The test type.
            sig do
              returns(
                Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::TaggedSymbol
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
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::OrSymbol,
                suggested: T::Boolean,
                thresholds:
                  T::Array[
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::OrHash
                  ],
                type:
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::OrSymbol,
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
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol,
                  suggested: T::Boolean,
                  thresholds:
                    T::Array[
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold
                    ],
                  type:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::TaggedSymbol,
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
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANOMALOUS_COLUMN_COUNT =
                T.let(
                  :anomalousColumnCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CHARACTER_LENGTH =
                T.let(
                  :characterLength,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CLASS_IMBALANCE_RATIO =
                T.let(
                  :classImbalanceRatio,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
                T.let(
                  :expectColumnAToBeInColumnB,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              COLUMN_AVERAGE =
                T.let(
                  :columnAverage,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              COLUMN_DRIFT =
                T.let(
                  :columnDrift,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              COLUMN_STATISTIC =
                T.let(
                  :columnStatistic,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              COLUMN_VALUES_MATCH =
                T.let(
                  :columnValuesMatch,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CONFLICTING_LABEL_ROW_COUNT =
                T.let(
                  :conflictingLabelRowCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CONTAINS_PII =
                T.let(
                  :containsPii,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CONTAINS_VALID_URL =
                T.let(
                  :containsValidUrl,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CORRELATED_FEATURE_COUNT =
                T.let(
                  :correlatedFeatureCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              CUSTOM_METRIC_THRESHOLD =
                T.let(
                  :customMetricThreshold,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              DUPLICATE_ROW_COUNT =
                T.let(
                  :duplicateRowCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              EMPTY_FEATURE =
                T.let(
                  :emptyFeature,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              EMPTY_FEATURE_COUNT =
                T.let(
                  :emptyFeatureCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              DRIFTED_FEATURE_COUNT =
                T.let(
                  :driftedFeatureCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              FEATURE_MISSING_VALUES =
                T.let(
                  :featureMissingValues,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              FEATURE_VALUE_VALIDATION =
                T.let(
                  :featureValueValidation,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              GREAT_EXPECTATIONS =
                T.let(
                  :greatExpectations,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              GROUP_BY_COLUMN_STATS_CHECK =
                T.let(
                  :groupByColumnStatsCheck,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              ILL_FORMED_ROW_COUNT =
                T.let(
                  :illFormedRowCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              IS_CODE =
                T.let(
                  :isCode,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              IS_JSON =
                T.let(
                  :isJson,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              LLM_RUBRIC_THRESHOLD_V2 =
                T.let(
                  :llmRubricThresholdV2,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              LABEL_DRIFT =
                T.let(
                  :labelDrift,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              METRIC_THRESHOLD =
                T.let(
                  :metricThreshold,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              NEW_CATEGORY_COUNT =
                T.let(
                  :newCategoryCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              NEW_LABEL_COUNT =
                T.let(
                  :newLabelCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              NULL_ROW_COUNT =
                T.let(
                  :nullRowCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              ROW_COUNT =
                T.let(
                  :rowCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              PP_SCORE_VALUE_VALIDATION =
                T.let(
                  :ppScoreValueValidation,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              QUASI_CONSTANT_FEATURE =
                T.let(
                  :quasiConstantFeature,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              QUASI_CONSTANT_FEATURE_COUNT =
                T.let(
                  :quasiConstantFeatureCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              SQL_QUERY =
                T.let(
                  :sqlQuery,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              DTYPE_VALIDATION =
                T.let(
                  :dtypeValidation,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              SENTENCE_LENGTH =
                T.let(
                  :sentenceLength,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              SIZE_RATIO =
                T.let(
                  :sizeRatio,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              SPECIAL_CHARACTERS_RATIO =
                T.let(
                  :specialCharactersRatio,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              STRING_VALIDATION =
                T.let(
                  :stringValidation,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )
              TRAIN_VAL_LEAKAGE_ROW_COUNT =
                T.let(
                  :trainValLeakageRowCount,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype::TaggedSymbol
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
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold,
                    Openlayer::Internal::AnyHash
                  )
                end

              # The insight name to be evaluated.
              sig do
                returns(
                  T.nilable(
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                )
              end
              attr_reader :insight_name

              sig do
                params(
                  insight_name:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::OrSymbol
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter
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
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )
                )
              end
              attr_reader :operator

              sig do
                params(
                  operator:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::OrSymbol
                ).void
              end
              attr_writer :operator

              # Whether to use automatic anomaly detection or manual thresholds
              sig do
                returns(
                  T.nilable(
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::TaggedSymbol
                  )
                )
              end
              attr_reader :threshold_mode

              sig do
                params(
                  threshold_mode:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::OrSymbol
                ).void
              end
              attr_writer :threshold_mode

              # The value to be compared.
              sig do
                returns(
                  T.nilable(
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value::Variants
                  )
                )
              end
              attr_reader :value

              sig do
                params(
                  value:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value::Variants
                ).void
              end
              attr_writer :value

              sig do
                params(
                  insight_name:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::OrSymbol,
                  insight_parameters:
                    T.nilable(
                      T::Array[
                        Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter::OrHash
                      ]
                    ),
                  measurement: String,
                  operator:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::OrSymbol,
                  threshold_mode:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::OrSymbol,
                  value:
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value::Variants
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol,
                    insight_parameters:
                      T.nilable(
                        T::Array[
                          Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter
                        ]
                      ),
                    measurement: String,
                    operator:
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol,
                    threshold_mode:
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::TaggedSymbol,
                    value:
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value::Variants
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CHARACTER_LENGTH =
                  T.let(
                    :characterLength,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CLASS_IMBALANCE =
                  T.let(
                    :classImbalance,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B =
                  T.let(
                    :expectColumnAToBeInColumnB,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                COLUMN_AVERAGE =
                  T.let(
                    :columnAverage,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                COLUMN_DRIFT =
                  T.let(
                    :columnDrift,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                COLUMN_VALUES_MATCH =
                  T.let(
                    :columnValuesMatch,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CONFIDENCE_DISTRIBUTION =
                  T.let(
                    :confidenceDistribution,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CONFLICTING_LABEL_ROW_COUNT =
                  T.let(
                    :conflictingLabelRowCount,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CONTAINS_PII =
                  T.let(
                    :containsPii,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CONTAINS_VALID_URL =
                  T.let(
                    :containsValidUrl,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CORRELATED_FEATURES =
                  T.let(
                    :correlatedFeatures,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                CUSTOM_METRIC =
                  T.let(
                    :customMetric,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                DUPLICATE_ROW_COUNT =
                  T.let(
                    :duplicateRowCount,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                EMPTY_FEATURES =
                  T.let(
                    :emptyFeatures,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                FEATURE_DRIFT =
                  T.let(
                    :featureDrift,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                FEATURE_PROFILE =
                  T.let(
                    :featureProfile,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                GREAT_EXPECTATIONS =
                  T.let(
                    :greatExpectations,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                GROUP_BY_COLUMN_STATS_CHECK =
                  T.let(
                    :groupByColumnStatsCheck,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                ILL_FORMED_ROW_COUNT =
                  T.let(
                    :illFormedRowCount,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                IS_CODE =
                  T.let(
                    :isCode,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                IS_JSON =
                  T.let(
                    :isJson,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                LLM_RUBRIC_V2 =
                  T.let(
                    :llmRubricV2,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                LABEL_DRIFT =
                  T.let(
                    :labelDrift,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                METRICS =
                  T.let(
                    :metrics,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                NEW_CATEGORIES =
                  T.let(
                    :newCategories,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                NEW_LABELS =
                  T.let(
                    :newLabels,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                NULL_ROW_COUNT =
                  T.let(
                    :nullRowCount,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                PP_SCORE =
                  T.let(
                    :ppScore,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                QUASI_CONSTANT_FEATURES =
                  T.let(
                    :quasiConstantFeatures,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                SENTENCE_LENGTH =
                  T.let(
                    :sentenceLength,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                SIZE_RATIO =
                  T.let(
                    :sizeRatio,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                SPECIAL_CHARACTERS =
                  T.let(
                    :specialCharacters,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                STRING_VALIDATION =
                  T.let(
                    :stringValidation,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )
                TRAIN_VAL_LEAKAGE_ROW_COUNT =
                  T.let(
                    :trainValLeakageRowCount,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName::TaggedSymbol
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter,
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IS =
                  T.let(
                    :is,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )
                GREATER =
                  T.let(
                    :">",
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )
                GREATER_OR_EQUALS =
                  T.let(
                    :">=",
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )
                LESS =
                  T.let(
                    :"<",
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )
                LESS_OR_EQUALS =
                  T.let(
                    :"<=",
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )
                NOT_EQUALS =
                  T.let(
                    :"!=",
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator::TaggedSymbol
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AUTOMATIC =
                  T.let(
                    :automatic,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::TaggedSymbol
                  )
                MANUAL =
                  T.let(
                    :manual,
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode::TaggedSymbol
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
                      Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value::Variants
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
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INTEGRITY =
                T.let(
                  :integrity,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::TaggedSymbol
                )
              CONSISTENCY =
                T.let(
                  :consistency,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::TaggedSymbol
                )
              PERFORMANCE =
                T.let(
                  :performance,
                  Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type::TaggedSymbol
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
