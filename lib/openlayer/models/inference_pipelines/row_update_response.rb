# frozen_string_literal: true

module Openlayer
  module Models
    module InferencePipelines
      # @see Openlayer::Resources::InferencePipelines::Rows#update
      class RowUpdateResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean, Openlayer::Models::InferencePipelines::RowUpdateResponse::Success]
        required :success, enum: -> { Openlayer::Models::InferencePipelines::RowUpdateResponse::Success }

        # @!method initialize(success:)
        #   @param success [Boolean, Openlayer::Models::InferencePipelines::RowUpdateResponse::Success]

        # @see Openlayer::Models::InferencePipelines::RowUpdateResponse#success
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
