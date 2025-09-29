# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Projects#create
    class ProjectCreateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute name
      #   The project name.
      #
      #   @return [String]
      required :name, String

      # @!attribute task_type
      #   The task type of the project.
      #
      #   @return [Symbol, Openlayer::Models::ProjectCreateParams::TaskType]
      required :task_type, enum: -> { Openlayer::ProjectCreateParams::TaskType }, api_name: :taskType

      # @!attribute description
      #   The project description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(name:, task_type:, description: nil, request_options: {})
      #   @param name [String] The project name.
      #
      #   @param task_type [Symbol, Openlayer::Models::ProjectCreateParams::TaskType] The task type of the project.
      #
      #   @param description [String, nil] The project description.
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

      # The task type of the project.
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
