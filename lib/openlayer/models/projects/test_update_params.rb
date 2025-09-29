# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::Tests#update
      class TestUpdateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute payloads
        #
        #   @return [Array<Openlayer::Models::Projects::TestUpdateParams::Payload>]
        required :payloads,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Projects::TestUpdateParams::Payload] }

        # @!method initialize(payloads:, request_options: {})
        #   @param payloads [Array<Openlayer::Models::Projects::TestUpdateParams::Payload>]
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        class Payload < Openlayer::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute archived
          #   Whether the test is archived.
          #
          #   @return [Boolean, nil]
          optional :archived, Openlayer::Internal::Type::Boolean

          # @!attribute description
          #   The test description.
          #
          #   @return [Object, nil]
          optional :description, Openlayer::Internal::Type::Unknown, nil?: true

          # @!attribute name
          #   The test name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute suggested
          #
          #   @return [Boolean, Openlayer::Models::Projects::TestUpdateParams::Payload::Suggested, nil]
          optional :suggested, enum: -> { Openlayer::Projects::TestUpdateParams::Payload::Suggested }

          # @!attribute thresholds
          #
          #   @return [Array<Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold>, nil]
          optional :thresholds,
                   -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Projects::TestUpdateParams::Payload::Threshold] }

          # @!method initialize(id:, archived: nil, description: nil, name: nil, suggested: nil, thresholds: nil)
          #   @param id [String]
          #
          #   @param archived [Boolean] Whether the test is archived.
          #
          #   @param description [Object, nil] The test description.
          #
          #   @param name [String] The test name.
          #
          #   @param suggested [Boolean, Openlayer::Models::Projects::TestUpdateParams::Payload::Suggested]
          #
          #   @param thresholds [Array<Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold>]

          # @see Openlayer::Models::Projects::TestUpdateParams::Payload#suggested
          module Suggested
            extend Openlayer::Internal::Type::Enum

            FALSE = false

            # @!method self.values
            #   @return [Array<Boolean>]
          end

          class Threshold < Openlayer::Internal::Type::BaseModel
            # @!attribute insight_name
            #   The insight name to be evaluated.
            #
            #   @return [Symbol, Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::InsightName, nil]
            optional :insight_name,
                     enum: -> { Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightName },
                     api_name: :insightName

            # @!attribute insight_parameters
            #   The insight parameters. Required only for some test subtypes. For example, for
            #   tests that require a column name, the insight parameters will be [{'name':
            #   'column_name', 'value': 'Age'}]
            #
            #   @return [Array<Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::InsightParameter>, nil]
            optional :insight_parameters,
                     -> {
                       Openlayer::Internal::Type::ArrayOf[Openlayer::Projects::TestUpdateParams::Payload::Threshold::InsightParameter]
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
            #   @return [Symbol, Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::Operator, nil]
            optional :operator, enum: -> { Openlayer::Projects::TestUpdateParams::Payload::Threshold::Operator }

            # @!attribute threshold_mode
            #   Whether to use automatic anomaly detection or manual thresholds
            #
            #   @return [Symbol, Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode, nil]
            optional :threshold_mode,
                     enum: -> { Openlayer::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode },
                     api_name: :thresholdMode

            # @!attribute value
            #   The value to be compared.
            #
            #   @return [Float, Boolean, String, Array<String>, nil]
            optional :value, union: -> { Openlayer::Projects::TestUpdateParams::Payload::Threshold::Value }

            # @!method initialize(insight_name: nil, insight_parameters: nil, measurement: nil, operator: nil, threshold_mode: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold} for more
            #   details.
            #
            #   @param insight_name [Symbol, Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::InsightName] The insight name to be evaluated.
            #
            #   @param insight_parameters [Array<Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::InsightParameter>, nil] The insight parameters. Required only for some test subtypes. For example, for t
            #
            #   @param measurement [String] The measurement to be evaluated.
            #
            #   @param operator [Symbol, Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::Operator] The operator to be used for the evaluation.
            #
            #   @param threshold_mode [Symbol, Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::ThresholdMode] Whether to use automatic anomaly detection or manual thresholds
            #
            #   @param value [Float, Boolean, String, Array<String>] The value to be compared.

            # The insight name to be evaluated.
            #
            # @see Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold#insight_name
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
            # @see Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold#operator
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
            # @see Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold#threshold_mode
            module ThresholdMode
              extend Openlayer::Internal::Type::Enum

              AUTOMATIC = :automatic
              MANUAL = :manual

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The value to be compared.
            #
            # @see Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold#value
            module Value
              extend Openlayer::Internal::Type::Union

              variant Float

              variant Openlayer::Internal::Type::Boolean

              variant String

              variant -> { Openlayer::Models::Projects::TestUpdateParams::Payload::Threshold::Value::StringArray }

              # @!method self.variants
              #   @return [Array(Float, Boolean, String, Array<String>)]

              # @type [Openlayer::Internal::Type::Converter]
              StringArray = Openlayer::Internal::Type::ArrayOf[String]
            end
          end
        end
      end
    end
  end
end
