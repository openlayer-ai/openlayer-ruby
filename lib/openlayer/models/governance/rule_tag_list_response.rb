# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleTags#list
      class RuleTagListResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Openlayer::Models::Governance::RuleTagListResponse::Item>]
        required :items,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Governance::RuleTagListResponse::Item] }

        # @!method initialize(items:)
        #   @param items [Array<Openlayer::Models::Governance::RuleTagListResponse::Item>]

        class Item < Openlayer::Internal::Type::BaseModel
          # @!attribute name
          #   The tag name.
          #
          #   @return [String]
          required :name, String

          # @!attribute color
          #   The color the tag is displayed with.
          #
          #   @return [String, nil]
          optional :color, String, nil?: true

          response_only do
            # @!attribute id
            #   The rule tag id.
            #
            #   @return [String]
            required :id, String

            # @!attribute creator_id
            #   The user who created the tag. `null` for tags that ship with Openlayer.
            #
            #   @return [String, nil]
            required :creator_id, String, api_name: :creatorId, nil?: true

            # @!attribute date_created
            #   The creation date.
            #
            #   @return [Time]
            required :date_created, Time, api_name: :dateCreated

            # @!attribute date_updated
            #   The last update date.
            #
            #   @return [Time]
            required :date_updated, Time, api_name: :dateUpdated

            # @!attribute immutable
            #   Whether the tag is managed by Openlayer and cannot be edited or deleted.
            #
            #   @return [Boolean]
            required :immutable, Openlayer::Internal::Type::Boolean

            # @!attribute workspace_id
            #   The id of the workspace the tag belongs to.
            #
            #   @return [String]
            required :workspace_id, String, api_name: :workspaceId
          end

          # @!method initialize(id:, creator_id:, date_created:, date_updated:, immutable:, name:, workspace_id:, color: nil)
          #   @param id [String] The rule tag id.
          #
          #   @param creator_id [String, nil] The user who created the tag. `null` for tags that ship with Openlayer.
          #
          #   @param date_created [Time] The creation date.
          #
          #   @param date_updated [Time] The last update date.
          #
          #   @param immutable [Boolean] Whether the tag is managed by Openlayer and cannot be edited or deleted.
          #
          #   @param name [String] The tag name.
          #
          #   @param workspace_id [String] The id of the workspace the tag belongs to.
          #
          #   @param color [String, nil] The color the tag is displayed with.
        end
      end
    end
  end
end
