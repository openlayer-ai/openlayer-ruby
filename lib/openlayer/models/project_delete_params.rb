# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Projects#delete
    class ProjectDeleteParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
