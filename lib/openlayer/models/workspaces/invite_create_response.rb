# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::Invites#create
      class InviteCreateResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Openlayer::Models::Workspaces::InviteCreateResponse::Item>]
        required :items,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Workspaces::InviteCreateResponse::Item] }

        # @!method initialize(items:)
        #   @param items [Array<Openlayer::Models::Workspaces::InviteCreateResponse::Item>]

        class Item < Openlayer::Internal::Type::BaseModel
          # @!attribute creator
          #
          #   @return [Openlayer::Models::Workspaces::InviteCreateResponse::Item::Creator]
          required :creator, -> { Openlayer::Models::Workspaces::InviteCreateResponse::Item::Creator }

          # @!attribute email
          #   The invite email.
          #
          #   @return [String]
          required :email, String

          # @!attribute role
          #   The invite role.
          #
          #   @return [Symbol, Openlayer::Models::Workspaces::InviteCreateResponse::Item::Role]
          required :role, enum: -> { Openlayer::Models::Workspaces::InviteCreateResponse::Item::Role }

          # @!attribute status
          #   The invite status.
          #
          #   @return [Symbol, Openlayer::Models::Workspaces::InviteCreateResponse::Item::Status]
          required :status, enum: -> { Openlayer::Models::Workspaces::InviteCreateResponse::Item::Status }

          response_only do
            # @!attribute id
            #   The invite id.
            #
            #   @return [String]
            required :id, String

            # @!attribute date_created
            #   The invite creation date.
            #
            #   @return [Time]
            required :date_created, Time, api_name: :dateCreated

            # @!attribute workspace
            #
            #   @return [Openlayer::Models::Workspaces::InviteCreateResponse::Item::Workspace]
            required :workspace, -> { Openlayer::Models::Workspaces::InviteCreateResponse::Item::Workspace }
          end

          # @!method initialize(id:, creator:, date_created:, email:, role:, status:, workspace:)
          #   @param id [String] The invite id.
          #
          #   @param creator [Openlayer::Models::Workspaces::InviteCreateResponse::Item::Creator]
          #
          #   @param date_created [Time] The invite creation date.
          #
          #   @param email [String] The invite email.
          #
          #   @param role [Symbol, Openlayer::Models::Workspaces::InviteCreateResponse::Item::Role] The invite role.
          #
          #   @param status [Symbol, Openlayer::Models::Workspaces::InviteCreateResponse::Item::Status] The invite status.
          #
          #   @param workspace [Openlayer::Models::Workspaces::InviteCreateResponse::Item::Workspace]

          # @see Openlayer::Models::Workspaces::InviteCreateResponse::Item#creator
          class Creator < Openlayer::Internal::Type::BaseModel
            # @!attribute name
            #   The invite creator name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute username
            #   The invite creator username.
            #
            #   @return [String, nil]
            optional :username, String, nil?: true

            response_only do
              # @!attribute id
              #   The invite creator id.
              #
              #   @return [String, nil]
              optional :id, String
            end

            # @!method initialize(id: nil, name: nil, username: nil)
            #   @param id [String] The invite creator id.
            #
            #   @param name [String, nil] The invite creator name.
            #
            #   @param username [String, nil] The invite creator username.
          end

          # The invite role.
          #
          # @see Openlayer::Models::Workspaces::InviteCreateResponse::Item#role
          module Role
            extend Openlayer::Internal::Type::Enum

            ADMIN = :ADMIN
            MEMBER = :MEMBER
            VIEWER = :VIEWER

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The invite status.
          #
          # @see Openlayer::Models::Workspaces::InviteCreateResponse::Item#status
          module Status
            extend Openlayer::Internal::Type::Enum

            ACCEPTED = :accepted
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::Workspaces::InviteCreateResponse::Item#workspace
          class Workspace < Openlayer::Internal::Type::BaseModel
            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute slug
            #
            #   @return [String]
            required :slug, String

            response_only do
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute date_created
              #
              #   @return [Time]
              required :date_created, Time, api_name: :dateCreated

              # @!attribute member_count
              #
              #   @return [Integer]
              required :member_count, Integer, api_name: :memberCount
            end

            # @!method initialize(id:, date_created:, member_count:, name:, slug:)
            #   @param id [String]
            #   @param date_created [Time]
            #   @param member_count [Integer]
            #   @param name [String]
            #   @param slug [String]
          end
        end
      end
    end
  end
end
