# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Projects#list
    class ProjectListParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute name
      #   Filter list of items by project name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute page
      #   The page to return in a paginated query.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per_page
      #   Maximum number of items to return per page.
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute task_type
      #   Filter list of items by task type.
      #
      #   @return [Symbol, Openlayer::Models::ProjectListParams::TaskType, nil]
      optional :task_type, enum: -> { Openlayer::ProjectListParams::TaskType }

      # @!method initialize(name: nil, page: nil, per_page: nil, task_type: nil, request_options: {})
      #   @param name [String] Filter list of items by project name.
      #
      #   @param page [Integer] The page to return in a paginated query.
      #
      #   @param per_page [Integer] Maximum number of items to return per page.
      #
      #   @param task_type [Symbol, Openlayer::Models::ProjectListParams::TaskType] Filter list of items by task type.
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

      # Filter list of items by task type.
      module TaskType
        extend Openlayer::Internal::Type::Enum

        LLM_BASE = :"llm-base"
        TABULAR_CLASSIFICATION = :"tabular-classification"
        TABULAR_REGRESSION = :"tabular-regression"
        TEXT_CLASSIFICATION = :"text-classification"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
