# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Projects#delete
    class ProjectDeleteParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute project_id
      #
      #   @return [String]
      required :project_id, String

      # @!method initialize(project_id:, request_options: {})
      #   @param project_id [String]
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
