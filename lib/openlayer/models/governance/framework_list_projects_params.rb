# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#list_projects
      class FrameworkListProjectsParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute framework_id
        #
        #   @return [String]
        required :framework_id, String

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

        # @!method initialize(framework_id:, page: nil, per_page: nil, request_options: {})
        #   @param framework_id [String]
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
