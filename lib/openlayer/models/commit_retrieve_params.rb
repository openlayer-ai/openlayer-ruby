# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Commits#retrieve
    class CommitRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute project_version_id
      #
      #   @return [String]
      required :project_version_id, String

      # @!method initialize(project_version_id:, request_options: {})
      #   @param project_version_id [String]
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
