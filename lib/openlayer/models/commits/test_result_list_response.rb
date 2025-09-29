# frozen_string_literal: true

module Openlayer
  module Models
    module Commits
      # @see Openlayer::Resources::Commits::TestResults#list
      class TestResultListResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Openlayer::Models::Commits::TestResultListResponse::Item>]
        required :items,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Commits::TestResultListResponse::Item] }

        # @!method initialize(items:)
        #   @param items [Array<Openlayer::Models::Commits::TestResultListResponse::Item>]

        class Item < Openlayer::Internal::Type::BaseModel
          # @!attribute status
          #   The status of the test.
          #
          #   @return [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Status]
          required :status, enum: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Status }

          # @!attribute status_message
          #   The status message.
          #
          #   @return [String, nil]
          required :status_message, String, api_name: :statusMessage, nil?: true

          # @!attribute goal
          #
          #   @return [Openlayer::Models::Commits::TestResultListResponse::Item::Goal, nil]
          optional :goal, -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal }

          response_only do
            # @!attribute id
            #   Project version (commit) id.
            #
            #   @return [String]
            required :id, String

            # @!attribute date_created
            #   The creation date.
            #
            #   @return [Time]
            required :date_created, Time, api_name: :dateCreated

            # @!attribute date_data_ends
            #   The data end date.
            #
            #   @return [Time, nil]
            required :date_data_ends, Time, api_name: :dateDataEnds, nil?: true

            # @!attribute date_data_starts
            #   The data start date.
            #
            #   @return [Time, nil]
            required :date_data_starts, Time, api_name: :dateDataStarts, nil?: true

            # @!attribute date_updated
            #   The last updated date.
            #
            #   @return [Time]
            required :date_updated, Time, api_name: :dateUpdated

            # @!attribute inference_pipeline_id
            #   The inference pipeline id.
            #
            #   @return [String, nil]
            required :inference_pipeline_id, String, api_name: :inferencePipelineId, nil?: true

            # @!attribute project_version_id
            #   The project version (commit) id.
            #
            #   @return [String, nil]
            required :project_version_id, String, api_name: :projectVersionId, nil?: true

            # @!attribute goal_id
            #   The test id.
            #
            #   @return [String, nil]
            optional :goal_id, String, api_name: :goalId, nil?: true
          end

          # @!method initialize(id:, date_created:, date_data_ends:, date_data_starts:, date_updated:, inference_pipeline_id:, project_version_id:, status:, status_message:, goal: nil, goal_id: nil)
          #   @param id [String] Project version (commit) id.
          #
          #   @param date_created [Time] The creation date.
          #
          #   @param date_data_ends [Time, nil] The data end date.
          #
          #   @param date_data_starts [Time, nil] The data start date.
          #
          #   @param date_updated [Time] The last updated date.
          #
          #   @param inference_pipeline_id [String, nil] The inference pipeline id.
          #
          #   @param project_version_id [String, nil] The project version (commit) id.
          #
          #   @param status [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Status] The status of the test.
          #
          #   @param status_message [String, nil] The status message.
          #
          #   @param goal [Openlayer::Models::Commits::TestResultListResponse::Item::Goal]
          #
          #   @param goal_id [String, nil] The test id.

          # The status of the test.
          #
          # @see Openlayer::Models::Commits::TestResultListResponse::Item#status
          module Status
            extend Openlayer::Internal::Type::Enum

            RUNNING = :running
            PASSING = :passing
            FAILING = :failing
            SKIPPED = :skipped
            ERROR = :error

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::Commits::TestResultListResponse::Item#goal
          class Goal < Openlayer::Internal::Type::BaseModel
            # @!attribute description
            #   The test description.
            #
            #   @return [Object, nil]
            required :description, Openlayer::Internal::Type::Unknown, nil?: true

            # @!attribute name
            #   The test name.
            #
            #   @return [String]
            required :name, String

            # @!attribute subtype
            #   The test subtype.
            #
            #   @return [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype]
            required :subtype, enum: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype }

            # @!attribute thresholds
            #
            #   @return [Array<Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold>]
            required :thresholds,
                     -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold] }

            # @!attribute type
            #   The test type.
            #
            #   @return [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type]
            required :type, enum: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type }

            # @!attribute archived
            #   Whether the test is archived.
            #
            #   @return [Boolean, nil]
            optional :archived, Openlayer::Internal::Type::Boolean

            # @!attribute delay_window
            #   The delay window in seconds. Only applies to tests that use production data.
            #
            #   @return [Float, nil]
            optional :delay_window, Float, api_name: :delayWindow, nil?: true

            # @!attribute evaluation_window
            #   The evaluation window in seconds. Only applies to tests that use production
            #   data.
            #
            #   @return [Float, nil]
            optional :evaluation_window, Float, api_name: :evaluationWindow, nil?: true

            # @!attribute uses_ml_model
            #   Whether the test uses an ML model.
            #
            #   @return [Boolean, nil]
            optional :uses_ml_model, Openlayer::Internal::Type::Boolean, api_name: :usesMlModel

            # @!attribute uses_production_data
            #   Whether the test uses production data (monitoring mode only).
            #
            #   @return [Boolean, nil]
            optional :uses_production_data, Openlayer::Internal::Type::Boolean, api_name: :usesProductionData

            # @!attribute uses_reference_dataset
            #   Whether the test uses a reference dataset (monitoring mode only).
            #
            #   @return [Boolean, nil]
            optional :uses_reference_dataset,
                     Openlayer::Internal::Type::Boolean,
                     api_name: :usesReferenceDataset

            # @!attribute uses_training_dataset
            #   Whether the test uses a training dataset.
            #
            #   @return [Boolean, nil]
            optional :uses_training_dataset,
                     Openlayer::Internal::Type::Boolean,
                     api_name: :usesTrainingDataset

            # @!attribute uses_validation_dataset
            #   Whether the test uses a validation dataset.
            #
            #   @return [Boolean, nil]
            optional :uses_validation_dataset,
                     Openlayer::Internal::Type::Boolean,
                     api_name: :usesValidationDataset

            response_only do
              # @!attribute id
              #   The test id.
              #
              #   @return [String]
              required :id, String

              # @!attribute comment_count
              #   The number of comments on the test.
              #
              #   @return [Integer]
              required :comment_count, Integer, api_name: :commentCount

              # @!attribute creator_id
              #   The test creator id.
              #
              #   @return [String, nil]
              required :creator_id, String, api_name: :creatorId, nil?: true

              # @!attribute date_archived
              #   The date the test was archived.
              #
              #   @return [Time, nil]
              required :date_archived, Time, api_name: :dateArchived, nil?: true

              # @!attribute date_created
              #   The creation date.
              #
              #   @return [Time]
              required :date_created, Time, api_name: :dateCreated

              # @!attribute date_updated
              #   The last updated date.
              #
              #   @return [Time]
              required :date_updated, Time, api_name: :dateUpdated

              # @!attribute number
              #   The test number.
              #
              #   @return [Integer]
              required :number, Integer

              # @!attribute origin_project_version_id
              #   The project version (commit) id where the test was created.
              #
              #   @return [String, nil]
              required :origin_project_version_id, String, api_name: :originProjectVersionId, nil?: true

              # @!attribute suggested
              #   Whether the test is suggested or user-created.
              #
              #   @return [Boolean]
              required :suggested, Openlayer::Internal::Type::Boolean
            end

            # @!method initialize(id:, comment_count:, creator_id:, date_archived:, date_created:, date_updated:, description:, name:, number:, origin_project_version_id:, subtype:, suggested:, thresholds:, type:, archived: nil, delay_window: nil, evaluation_window: nil, uses_ml_model: nil, uses_production_data: nil, uses_reference_dataset: nil, uses_training_dataset: nil, uses_validation_dataset: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::Commits::TestResultListResponse::Item::Goal} for more
            #   details.
            #
            #   @param id [String] The test id.
            #
            #   @param comment_count [Integer] The number of comments on the test.
            #
            #   @param creator_id [String, nil] The test creator id.
            #
            #   @param date_archived [Time, nil] The date the test was archived.
            #
            #   @param date_created [Time] The creation date.
            #
            #   @param date_updated [Time] The last updated date.
            #
            #   @param description [Object, nil] The test description.
            #
            #   @param name [String] The test name.
            #
            #   @param number [Integer] The test number.
            #
            #   @param origin_project_version_id [String, nil] The project version (commit) id where the test was created.
            #
            #   @param subtype [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Subtype] The test subtype.
            #
            #   @param suggested [Boolean] Whether the test is suggested or user-created.
            #
            #   @param thresholds [Array<Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold>]
            #
            #   @param type [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Type] The test type.
            #
            #   @param archived [Boolean] Whether the test is archived.
            #
            #   @param delay_window [Float, nil] The delay window in seconds. Only applies to tests that use production data.
            #
            #   @param evaluation_window [Float, nil] The evaluation window in seconds. Only applies to tests that use production data
            #
            #   @param uses_ml_model [Boolean] Whether the test uses an ML model.
            #
            #   @param uses_production_data [Boolean] Whether the test uses production data (monitoring mode only).
            #
            #   @param uses_reference_dataset [Boolean] Whether the test uses a reference dataset (monitoring mode only).
            #
            #   @param uses_training_dataset [Boolean] Whether the test uses a training dataset.
            #
            #   @param uses_validation_dataset [Boolean] Whether the test uses a validation dataset.

            # The test subtype.
            #
            # @see Openlayer::Models::Commits::TestResultListResponse::Item::Goal#subtype
            module Subtype
              extend Openlayer::Internal::Type::Enum

              ANOMALOUS_COLUMN_COUNT = :anomalousColumnCount
              CHARACTER_LENGTH = :characterLength
              CLASS_IMBALANCE_RATIO = :classImbalanceRatio
              EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B = :expectColumnAToBeInColumnB
              COLUMN_AVERAGE = :columnAverage
              COLUMN_DRIFT = :columnDrift
              COLUMN_STATISTIC = :columnStatistic
              COLUMN_VALUES_MATCH = :columnValuesMatch
              CONFLICTING_LABEL_ROW_COUNT = :conflictingLabelRowCount
              CONTAINS_PII = :containsPii
              CONTAINS_VALID_URL = :containsValidUrl
              CORRELATED_FEATURE_COUNT = :correlatedFeatureCount
              CUSTOM_METRIC_THRESHOLD = :customMetricThreshold
              DUPLICATE_ROW_COUNT = :duplicateRowCount
              EMPTY_FEATURE = :emptyFeature
              EMPTY_FEATURE_COUNT = :emptyFeatureCount
              DRIFTED_FEATURE_COUNT = :driftedFeatureCount
              FEATURE_MISSING_VALUES = :featureMissingValues
              FEATURE_VALUE_VALIDATION = :featureValueValidation
              GREAT_EXPECTATIONS = :greatExpectations
              GROUP_BY_COLUMN_STATS_CHECK = :groupByColumnStatsCheck
              ILL_FORMED_ROW_COUNT = :illFormedRowCount
              IS_CODE = :isCode
              IS_JSON = :isJson
              LLM_RUBRIC_THRESHOLD_V2 = :llmRubricThresholdV2
              LABEL_DRIFT = :labelDrift
              METRIC_THRESHOLD = :metricThreshold
              NEW_CATEGORY_COUNT = :newCategoryCount
              NEW_LABEL_COUNT = :newLabelCount
              NULL_ROW_COUNT = :nullRowCount
              ROW_COUNT = :rowCount
              PP_SCORE_VALUE_VALIDATION = :ppScoreValueValidation
              QUASI_CONSTANT_FEATURE = :quasiConstantFeature
              QUASI_CONSTANT_FEATURE_COUNT = :quasiConstantFeatureCount
              SQL_QUERY = :sqlQuery
              DTYPE_VALIDATION = :dtypeValidation
              SENTENCE_LENGTH = :sentenceLength
              SIZE_RATIO = :sizeRatio
              SPECIAL_CHARACTERS_RATIO = :specialCharactersRatio
              STRING_VALIDATION = :stringValidation
              TRAIN_VAL_LEAKAGE_ROW_COUNT = :trainValLeakageRowCount

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class Threshold < Openlayer::Internal::Type::BaseModel
              # @!attribute insight_name
              #   The insight name to be evaluated.
              #
              #   @return [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName, nil]
              optional :insight_name,
                       enum: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName },
                       api_name: :insightName

              # @!attribute insight_parameters
              #   The insight parameters. Required only for some test subtypes. For example, for
              #   tests that require a column name, the insight parameters will be [{'name':
              #   'column_name', 'value': 'Age'}]
              #
              #   @return [Array<Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter>, nil]
              optional :insight_parameters,
                       -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter] },
                       api_name: :insightParameters,
                       nil?: true

              # @!attribute measurement
              #   The measurement to be evaluated.
              #
              #   @return [String, nil]
              optional :measurement, String

              # @!attribute operator
              #   The operator to be used for the evaluation.
              #
              #   @return [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator, nil]
              optional :operator,
                       enum: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator }

              # @!attribute threshold_mode
              #   Whether to use automatic anomaly detection or manual thresholds
              #
              #   @return [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode, nil]
              optional :threshold_mode,
                       enum: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode },
                       api_name: :thresholdMode

              # @!attribute value
              #   The value to be compared.
              #
              #   @return [Float, Boolean, String, Array<String>, nil]
              optional :value,
                       union: -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value }

              # @!method initialize(insight_name: nil, insight_parameters: nil, measurement: nil, operator: nil, threshold_mode: nil, value: nil)
              #   Some parameter documentations has been truncated, see
              #   {Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold} for
              #   more details.
              #
              #   @param insight_name [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightName] The insight name to be evaluated.
              #
              #   @param insight_parameters [Array<Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::InsightParameter>, nil] The insight parameters. Required only for some test subtypes. For example, for t
              #
              #   @param measurement [String] The measurement to be evaluated.
              #
              #   @param operator [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Operator] The operator to be used for the evaluation.
              #
              #   @param threshold_mode [Symbol, Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::ThresholdMode] Whether to use automatic anomaly detection or manual thresholds
              #
              #   @param value [Float, Boolean, String, Array<String>] The value to be compared.

              # The insight name to be evaluated.
              #
              # @see Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold#insight_name
              module InsightName
                extend Openlayer::Internal::Type::Enum

                CHARACTER_LENGTH = :characterLength
                CLASS_IMBALANCE = :classImbalance
                EXPECT_COLUMN_A_TO_BE_IN_COLUMN_B = :expectColumnAToBeInColumnB
                COLUMN_AVERAGE = :columnAverage
                COLUMN_DRIFT = :columnDrift
                COLUMN_VALUES_MATCH = :columnValuesMatch
                CONFIDENCE_DISTRIBUTION = :confidenceDistribution
                CONFLICTING_LABEL_ROW_COUNT = :conflictingLabelRowCount
                CONTAINS_PII = :containsPii
                CONTAINS_VALID_URL = :containsValidUrl
                CORRELATED_FEATURES = :correlatedFeatures
                CUSTOM_METRIC = :customMetric
                DUPLICATE_ROW_COUNT = :duplicateRowCount
                EMPTY_FEATURES = :emptyFeatures
                FEATURE_DRIFT = :featureDrift
                FEATURE_PROFILE = :featureProfile
                GREAT_EXPECTATIONS = :greatExpectations
                GROUP_BY_COLUMN_STATS_CHECK = :groupByColumnStatsCheck
                ILL_FORMED_ROW_COUNT = :illFormedRowCount
                IS_CODE = :isCode
                IS_JSON = :isJson
                LLM_RUBRIC_V2 = :llmRubricV2
                LABEL_DRIFT = :labelDrift
                METRICS = :metrics
                NEW_CATEGORIES = :newCategories
                NEW_LABELS = :newLabels
                NULL_ROW_COUNT = :nullRowCount
                PP_SCORE = :ppScore
                QUASI_CONSTANT_FEATURES = :quasiConstantFeatures
                SENTENCE_LENGTH = :sentenceLength
                SIZE_RATIO = :sizeRatio
                SPECIAL_CHARACTERS = :specialCharacters
                STRING_VALIDATION = :stringValidation
                TRAIN_VAL_LEAKAGE_ROW_COUNT = :trainValLeakageRowCount

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class InsightParameter < Openlayer::Internal::Type::BaseModel
                # @!attribute name
                #   The name of the insight filter.
                #
                #   @return [String]
                required :name, String

                # @!attribute value
                #
                #   @return [Object]
                required :value, Openlayer::Internal::Type::Unknown

                # @!method initialize(name:, value:)
                #   @param name [String] The name of the insight filter.
                #
                #   @param value [Object]
              end

              # The operator to be used for the evaluation.
              #
              # @see Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold#operator
              module Operator
                extend Openlayer::Internal::Type::Enum

                IS = :is
                GREATER = :>
                GREATER_OR_EQUALS = :">="
                LESS = :<
                LESS_OR_EQUALS = :"<="
                NOT_EQUALS = :"!="

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Whether to use automatic anomaly detection or manual thresholds
              #
              # @see Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold#threshold_mode
              module ThresholdMode
                extend Openlayer::Internal::Type::Enum

                AUTOMATIC = :automatic
                MANUAL = :manual

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The value to be compared.
              #
              # @see Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold#value
              module Value
                extend Openlayer::Internal::Type::Union

                variant Float

                variant Openlayer::Internal::Type::Boolean

                variant String

                variant -> { Openlayer::Models::Commits::TestResultListResponse::Item::Goal::Threshold::Value::StringArray }

                # @!method self.variants
                #   @return [Array(Float, Boolean, String, Array<String>)]

                # @type [Openlayer::Internal::Type::Converter]
                StringArray = Openlayer::Internal::Type::ArrayOf[String]
              end
            end

            # The test type.
            #
            # @see Openlayer::Models::Commits::TestResultListResponse::Item::Goal#type
            module Type
              extend Openlayer::Internal::Type::Enum

              INTEGRITY = :integrity
              CONSISTENCY = :consistency
              PERFORMANCE = :performance

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
