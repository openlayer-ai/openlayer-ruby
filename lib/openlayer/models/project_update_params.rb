# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Projects#update
    class ProjectUpdateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute project_id
      #
      #   @return [String]
      required :project_id, String

      # @!attribute data_retention_days
      #   Number of days to retain monitoring data for this project. Null means data is
      #   retained indefinitely.
      #
      #   @return [Integer, nil]
      optional :data_retention_days, Integer, api_name: :dataRetentionDays, nil?: true

      # @!attribute description
      #   The project description.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute model_developer
      #   Who developed the model used in this project.
      #
      #   @return [String, nil]
      optional :model_developer, String, api_name: :modelDeveloper, nil?: true

      # @!attribute model_types
      #   The kinds of model used in this project.
      #
      #   @return [Array<String>, nil]
      optional :model_types, Openlayer::Internal::Type::ArrayOf[String], api_name: :modelTypes, nil?: true

      # @!attribute name
      #   The project name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute purpose
      #   What the system in this project is intended to do.
      #
      #   @return [String, nil]
      optional :purpose, String, nil?: true

      # @!method initialize(project_id:, data_retention_days: nil, description: nil, model_developer: nil, model_types: nil, name: nil, purpose: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Openlayer::Models::ProjectUpdateParams} for more details.
      #
      #   @param project_id [String]
      #
      #   @param data_retention_days [Integer, nil] Number of days to retain monitoring data for this project. Null means data is re
      #
      #   @param description [String, nil] The project description.
      #
      #   @param model_developer [String, nil] Who developed the model used in this project.
      #
      #   @param model_types [Array<String>, nil] The kinds of model used in this project.
      #
      #   @param name [String] The project name.
      #
      #   @param purpose [String, nil] What the system in this project is intended to do.
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
