# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::Invites#create
      class InviteCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute emails
        #
        #   @return [Array<String>, nil]
        optional :emails, Openlayer::Internal::Type::ArrayOf[String]

        # @!attribute role
        #   The member role.
        #
        #   @return [Symbol, Openlayer::Models::Workspaces::InviteCreateParams::Role, nil]
        optional :role, enum: -> { Openlayer::Workspaces::InviteCreateParams::Role }

        # @!method initialize(emails: nil, role: nil, request_options: {})
        #   @param emails [Array<String>]
        #
        #   @param role [Symbol, Openlayer::Models::Workspaces::InviteCreateParams::Role] The member role.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

        # The member role.
        module Role
          extend Openlayer::Internal::Type::Enum

          ADMIN = :ADMIN
          MEMBER = :MEMBER
          VIEWER = :VIEWER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
