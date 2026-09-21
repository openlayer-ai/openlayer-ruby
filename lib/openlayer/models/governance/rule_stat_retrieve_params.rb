# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleStats#retrieve
      class RuleStatRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute workspace_id
        #
        #   @return [String]
        required :workspace_id, String

        # @!attribute framework_id
        #   Only include items belonging to this framework.
        #
        #   @return [String, nil]
        optional :framework_id, String

        # @!attribute project_id
        #   Only include items that apply to this project.
        #
        #   @return [String, nil]
        optional :project_id, String

        # @!method initialize(workspace_id:, framework_id: nil, project_id: nil, request_options: {})
        #   @param workspace_id [String]
        #
        #   @param framework_id [String] Only include items belonging to this framework.
        #
        #   @param project_id [String] Only include items that apply to this project.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
