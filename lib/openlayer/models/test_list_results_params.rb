# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Tests#list_results
    class TestListResultsParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute end_timestamp
      #   Filter for results that use data starting before the end timestamp.
      #
      #   @return [Float, nil]
      optional :end_timestamp, Float

      # @!attribute include_insights
      #   Include the insights linked to each test result
      #
      #   @return [Boolean, nil]
      optional :include_insights, Openlayer::Internal::Type::Boolean

      # @!attribute inference_pipeline_id
      #   Retrive test results for a specific inference pipeline.
      #
      #   @return [String, nil]
      optional :inference_pipeline_id, String, nil?: true

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

      # @!attribute project_version_id
      #   Retrive test results for a specific project version.
      #
      #   @return [String, nil]
      optional :project_version_id, String, nil?: true

      # @!attribute start_timestamp
      #   Filter for results that use data ending after the start timestamp.
      #
      #   @return [Float, nil]
      optional :start_timestamp, Float

      # @!attribute status
      #   Filter by status(es).
      #
      #   @return [Array<String>, nil]
      optional :status, Openlayer::Internal::Type::ArrayOf[String]

      # @!method initialize(end_timestamp: nil, include_insights: nil, inference_pipeline_id: nil, page: nil, per_page: nil, project_version_id: nil, start_timestamp: nil, status: nil, request_options: {})
      #   @param end_timestamp [Float] Filter for results that use data starting before the end timestamp.
      #
      #   @param include_insights [Boolean] Include the insights linked to each test result
      #
      #   @param inference_pipeline_id [String, nil] Retrive test results for a specific inference pipeline.
      #
      #   @param page [Integer] The page to return in a paginated query.
      #
      #   @param per_page [Integer] Maximum number of items to return per page.
      #
      #   @param project_version_id [String, nil] Retrive test results for a specific project version.
      #
      #   @param start_timestamp [Float] Filter for results that use data ending after the start timestamp.
      #
      #   @param status [Array<String>] Filter by status(es).
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
