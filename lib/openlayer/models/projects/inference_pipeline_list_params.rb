# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::InferencePipelines#list
      class InferencePipelineListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute project_id
        #
        #   @return [String]
        required :project_id, String

        # @!attribute name
        #   Filter list of items by name.
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

        # @!method initialize(project_id:, name: nil, page: nil, per_page: nil, request_options: {})
        #   @param project_id [String]
        #
        #   @param name [String] Filter list of items by name.
        #
        #   @param page [Integer] The page to return in a paginated query.
        #
        #   @param per_page [Integer] Maximum number of items to return per page.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
