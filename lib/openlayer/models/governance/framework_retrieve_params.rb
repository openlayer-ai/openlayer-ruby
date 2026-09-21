# frozen_string_literal: true

module Openlayer
  module Models
    module Governance
      # @see Openlayer::Resources::Governance::Frameworks#retrieve
      class FrameworkRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute framework_id
        #
        #   @return [String]
        required :framework_id, String

        # @!method initialize(framework_id:, request_options: {})
        #   @param framework_id [String]
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
