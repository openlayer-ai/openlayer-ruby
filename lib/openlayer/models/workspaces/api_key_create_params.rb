# frozen_string_literal: true

module Openlayer
  module Models
    module Workspaces
      # @see Openlayer::Resources::Workspaces::APIKeys#create
      class APIKeyCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        # @!attribute name
        #   The API key name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(name: nil, request_options: {})
        #   @param name [String, nil] The API key name.
        #
        #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
