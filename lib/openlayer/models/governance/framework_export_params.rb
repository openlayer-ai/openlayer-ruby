# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#export
      class FrameworkExportParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute framework_id
        #
        #   @return [String]
        required :framework_id, String

        # @!attribute project_id
        #   Scope the export to this project. It must belong to the framework.
        #
        #   @return [String, nil]
        optional :project_id, String, api_name: :projectId, nil?: true

        # @!method initialize(framework_id:, project_id: nil, request_options: {})
        #   @param framework_id [String]
        #
        #   @param project_id [String, nil] Scope the export to this project. It must belong to the framework.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
