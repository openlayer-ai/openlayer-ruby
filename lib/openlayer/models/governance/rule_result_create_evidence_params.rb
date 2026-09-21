# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::RuleResults#create_evidence
      class RuleResultCreateEvidenceParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute rule_result_id
        #
        #   @return [String]
        required :rule_result_id, String

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

        # @!method initialize(rule_result_id:, description: nil, name: nil, storage_uri: nil, text: nil, url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Openlayer::Models::Governance::RuleResultCreateEvidenceParams} for more
        #   details.
        #
        #   @param rule_result_id [String]
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
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
