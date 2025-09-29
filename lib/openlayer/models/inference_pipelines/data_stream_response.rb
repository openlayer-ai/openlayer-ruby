# frozen_string_literal: true

module Openlayer
  module Models
    module InferencePipelines
      # @see Openlayer::Resources::InferencePipelines::Data#stream
      class DataStreamResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean, Openlayer::Models::InferencePipelines::DataStreamResponse::Success]
        required :success, enum: -> { Openlayer::Models::InferencePipelines::DataStreamResponse::Success }

        # @!method initialize(success:)
        #   @param success [Boolean, Openlayer::Models::InferencePipelines::DataStreamResponse::Success]

        # @see Openlayer::Models::InferencePipelines::DataStreamResponse#success
        module Success
          extend Openlayer::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end
      end
    end
  end
end
