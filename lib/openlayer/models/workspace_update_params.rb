# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Workspaces#update
    class WorkspaceUpdateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute workspace_id
      #
      #   @return [String]
      required :workspace_id, String

      # @!attribute invite_code
      #   The workspace invite code.
      #
      #   @return [String, nil]
      optional :invite_code, String, api_name: :inviteCode

      # @!attribute name
      #   The workspace name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute slug
      #   The workspace slug.
      #
      #   @return [String, nil]
      optional :slug, String

      # @!method initialize(workspace_id:, invite_code: nil, name: nil, slug: nil, request_options: {})
      #   @param workspace_id [String]
      #
      #   @param invite_code [String] The workspace invite code.
      #
      #   @param name [String] The workspace name.
      #
      #   @param slug [String] The workspace slug.
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
