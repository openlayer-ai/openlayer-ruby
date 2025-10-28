# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::Tests#create
      class TestCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

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
        #   @return [Symbol, Openlayer::Models::Projects::TestCreateParams::Subtype]
        required :subtype, enum: -> { Openlayer::Projects::TestCreateParams::Subtype }

        # @!attribute thresholds
        #
        #   @return [Array<Openlayer::Models::Projects::TestCreateParams::Threshold>]
        required :thresholds,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Projects::TestCreateParams::Threshold] }

        # @!attribute type
        #   The test type.
        #
        #   @return [Symbol, Openlayer::Models::Projects::TestCreateParams::Type]
        required :type, enum: -> { Openlayer::Projects::TestCreateParams::Type }

        # @!attribute archived
        #   Whether the test is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, Openlayer::Internal::Type::Boolean

        # @!attribute default_to_all_pipelines
        #   Whether to apply the test to all pipelines (data sources) or to a specific set
        #   of pipelines. Only applies to tests that use production data.
        #
        #   @return [Boolean, nil]
        optional :default_to_all_pipelines,
                 Openlayer::Internal::Type::Boolean,
                 api_name: :defaultToAllPipelines,
                 nil?: true

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

        # @!attribute exclude_pipelines
        #   Array of pipelines (data sources) to which the test should not be applied. Only
        #   applies to tests that use production data.
        #
        #   @return [Array<String>, nil]
        optional :exclude_pipelines,
                 Openlayer::Internal::Type::ArrayOf[String],
                 api_name: :excludePipelines,
                 nil?: true

        # @!attribute include_historical_data
        #   Whether to include historical data in the test result. Only applies to tests
        #   that use production data.
        #
        #   @return [Boolean, nil]
        optional :include_historical_data,
                 Openlayer::Internal::Type::Boolean,
                 api_name: :includeHistoricalData,
                 nil?: true

        # @!attribute include_pipelines
        #   Array of pipelines (data sources) to which the test should be applied. Only
        #   applies to tests that use production data.
        #
        #   @return [Array<String>, nil]
        optional :include_pipelines,
                 Openlayer::Internal::Type::ArrayOf[String],
                 api_name: :includePipelines,
                 nil?: true

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
        optional :uses_reference_dataset, Openlayer::Internal::Type::Boolean, api_name: :usesReferenceDataset

        # @!attribute uses_training_dataset
        #   Whether the test uses a training dataset.
        #
        #   @return [Boolean, nil]
        optional :uses_training_dataset, Openlayer::Internal::Type::Boolean, api_name: :usesTrainingDataset

        # @!attribute uses_validation_dataset
        #   Whether the test uses a validation dataset.
        #
        #   @return [Boolean, nil]
        optional :uses_validation_dataset,
                 Openlayer::Internal::Type::Boolean,
                 api_name: :usesValidationDataset

        # @!method initialize(description:, name:, subtype:, thresholds:, type:, archived: nil, default_to_all_pipelines: nil, delay_window: nil, evaluation_window: nil, exclude_pipelines: nil, include_historical_data: nil, include_pipelines: nil, uses_ml_model: nil, uses_production_data: nil, uses_reference_dataset: nil, uses_training_dataset: nil, uses_validation_dataset: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Projects::TestCreateParams} for more details.
        #
        #   @param description [Object, nil] The test description.
        #
        #   @param name [String] The test name.
        #
        #   @param subtype [Symbol, Openlayer::Models::Projects::TestCreateParams::Subtype] The test subtype.
        #
        #   @param thresholds [Array<Openlayer::Models::Projects::TestCreateParams::Threshold>]
        #
        #   @param type [Symbol, Openlayer::Models::Projects::TestCreateParams::Type] The test type.
        #
        #   @param archived [Boolean] Whether the test is archived.
        #
        #   @param default_to_all_pipelines [Boolean, nil] Whether to apply the test to all pipelines (data sources) or to a specific set o
        #
        #   @param delay_window [Float, nil] The delay window in seconds. Only applies to tests that use production data.
        #
        #   @param evaluation_window [Float, nil] The evaluation window in seconds. Only applies to tests that use production data
        #
        #   @param exclude_pipelines [Array<String>, nil] Array of pipelines (data sources) to which the test should not be applied. Only
        #
        #   @param include_historical_data [Boolean, nil] Whether to include historical data in the test result. Only applies to tests tha
        #
        #   @param include_pipelines [Array<String>, nil] Array of pipelines (data sources) to which the test should be applied. Only appl
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
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # The test subtype.
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
          #   @return [Symbol, Openlayer::Models::Projects::TestCreateParams::Threshold::InsightName, nil]
          optional :insight_name,
                   enum: -> { Openlayer::Projects::TestCreateParams::Threshold::InsightName },
                   api_name: :insightName

          # @!attribute insight_parameters
          #   The insight parameters. Required only for some test subtypes. For example, for
          #   tests that require a column name, the insight parameters will be [{'name':
          #   'column_name', 'value': 'Age'}]
          #
          #   @return [Array<Openlayer::Models::Projects::TestCreateParams::Threshold::InsightParameter>, nil]
          optional :insight_parameters,
                   -> {
                     Openlayer::Internal::Type::ArrayOf[Openlayer::Projects::TestCreateParams::Threshold::InsightParameter]
                   },
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
          #   @return [Symbol, Openlayer::Models::Projects::TestCreateParams::Threshold::Operator, nil]
          optional :operator, enum: -> { Openlayer::Projects::TestCreateParams::Threshold::Operator }

          # @!attribute threshold_mode
          #   Whether to use automatic anomaly detection or manual thresholds
          #
          #   @return [Symbol, Openlayer::Models::Projects::TestCreateParams::Threshold::ThresholdMode, nil]
          optional :threshold_mode,
                   enum: -> { Openlayer::Projects::TestCreateParams::Threshold::ThresholdMode },
                   api_name: :thresholdMode

          # @!attribute value
          #   The value to be compared.
          #
          #   @return [Float, Boolean, String, Array<String>, nil]
          optional :value, union: -> { Openlayer::Projects::TestCreateParams::Threshold::Value }

          # @!method initialize(insight_name: nil, insight_parameters: nil, measurement: nil, operator: nil, threshold_mode: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Openlayer::Models::Projects::TestCreateParams::Threshold} for more details.
          #
          #   @param insight_name [Symbol, Openlayer::Models::Projects::TestCreateParams::Threshold::InsightName] The insight name to be evaluated.
          #
          #   @param insight_parameters [Array<Openlayer::Models::Projects::TestCreateParams::Threshold::InsightParameter>, nil] The insight parameters. Required only for some test subtypes. For example, for t
          #
          #   @param measurement [String] The measurement to be evaluated.
          #
          #   @param operator [Symbol, Openlayer::Models::Projects::TestCreateParams::Threshold::Operator] The operator to be used for the evaluation.
          #
          #   @param threshold_mode [Symbol, Openlayer::Models::Projects::TestCreateParams::Threshold::ThresholdMode] Whether to use automatic anomaly detection or manual thresholds
          #
          #   @param value [Float, Boolean, String, Array<String>] The value to be compared.

          # The insight name to be evaluated.
          #
          # @see Openlayer::Models::Projects::TestCreateParams::Threshold#insight_name
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
          # @see Openlayer::Models::Projects::TestCreateParams::Threshold#operator
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
          # @see Openlayer::Models::Projects::TestCreateParams::Threshold#threshold_mode
          module ThresholdMode
            extend Openlayer::Internal::Type::Enum

            AUTOMATIC = :automatic
            MANUAL = :manual

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The value to be compared.
          #
          # @see Openlayer::Models::Projects::TestCreateParams::Threshold#value
          module Value
            extend Openlayer::Internal::Type::Union

            variant Float

            variant Openlayer::Internal::Type::Boolean

            variant String

            variant -> { Openlayer::Models::Projects::TestCreateParams::Threshold::Value::StringArray }

            # @!method self.variants
            #   @return [Array(Float, Boolean, String, Array<String>)]

            # @type [Openlayer::Internal::Type::Converter]
            StringArray = Openlayer::Internal::Type::ArrayOf[String]
          end
        end

        # The test type.
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
