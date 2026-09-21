# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleResults#create_evidence
      class RuleResultCreateEvidenceResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute description
        #   A description of what the evidence shows.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute name
        #   The evidence name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute storage_uri
        #   Where the uploaded file is stored. Set when the rule's `evidenceType` is
        #   `document`.
        #
        #   @return [String, nil]
        optional :storage_uri, String, api_name: :storageUri, nil?: true

        # @!attribute text
        #   The evidence text. Set when the rule's `evidenceType` is `text`.
        #
        #   @return [String, nil]
        optional :text, String, nil?: true

        # @!attribute url
        #   A link to the evidence. Set when the rule's `evidenceType` is `url`.
        #
        #   @return [String, nil]
        optional :url, String, nil?: true

        response_only do
          # @!attribute id
          #   The evidence id.
          #
          #   @return [String]
          required :id, String

          # @!attribute creator_id
          #   The user who attached the evidence.
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
        end

        # @!method initialize(id:, creator_id:, date_created:, date_updated:, description: nil, name: nil, storage_uri: nil, text: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleResultCreateEvidenceResponse} for more
        #   details.
        #
        #   @param id [String] The evidence id.
        #
        #   @param creator_id [String, nil] The user who attached the evidence.
        #
        #   @param date_created [Time] The creation date.
        #
        #   @param date_updated [Time] The last update date.
        #
        #   @param description [String, nil] A description of what the evidence shows.
        #
        #   @param name [String, nil] The evidence name.
        #
        #   @param storage_uri [String, nil] Where the uploaded file is stored. Set when the rule's `evidenceType` is `docume
        #
        #   @param text [String, nil] The evidence text. Set when the rule's `evidenceType` is `text`.
        #
        #   @param url [String, nil] A link to the evidence. Set when the rule's `evidenceType` is `url`.
      end
    end
  end
end
