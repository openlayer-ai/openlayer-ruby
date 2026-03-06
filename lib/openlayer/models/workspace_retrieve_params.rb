# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Workspaces#retrieve
    class WorkspaceRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute workspace_id
      #
      #   @return [String]
      required :workspace_id, String

      # @!method initialize(workspace_id:, request_options: {})
      #   @param workspace_id [String]
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
