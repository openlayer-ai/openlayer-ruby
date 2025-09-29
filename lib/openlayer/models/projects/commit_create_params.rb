# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::Commits#create
      class CommitCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute commit
        #   The details of a commit (project version).
        #
        #   @return [Openlayer::Models::Projects::CommitCreateParams::Commit]
        required :commit, -> { Openlayer::Projects::CommitCreateParams::Commit }

        # @!attribute storage_uri
        #   The storage URI where the commit bundle is stored.
        #
        #   @return [String]
        required :storage_uri, String, api_name: :storageUri

        # @!attribute archived
        #   Whether the commit is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, Openlayer::Internal::Type::Boolean, nil?: true

        # @!attribute deployment_status
        #   The deployment status associated with the commit's model.
        #
        #   @return [String, nil]
        optional :deployment_status, String, api_name: :deploymentStatus

        # @!method initialize(commit:, storage_uri:, archived: nil, deployment_status: nil, request_options: {})
        #   @param commit [Openlayer::Models::Projects::CommitCreateParams::Commit] The details of a commit (project version).
        #
        #   @param storage_uri [String] The storage URI where the commit bundle is stored.
        #
        #   @param archived [Boolean, nil] Whether the commit is archived.
        #
        #   @param deployment_status [String] The deployment status associated with the commit's model.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        class Commit < Openlayer::Internal::Type::BaseModel
          # @!attribute message
          #   The commit message.
          #
          #   @return [String]
          required :message, String

          # @!method initialize(message:)
          #   The details of a commit (project version).
          #
          #   @param message [String] The commit message.
        end
      end
    end
  end
end
