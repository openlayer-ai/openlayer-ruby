# frozen_string_literal: true

module Openlayer
  module Models
    module InferencePipelines
      # @see Openlayer::Resources::InferencePipelines::Rows#retrieve
      class RowRetrieveResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute row
        #
        #   @return [Object, nil]
        optional :row, Openlayer::Internal::Type::Unknown

        # @!attribute success
        #
        #   @return [Boolean, nil]
        optional :success, Openlayer::Internal::Type::Boolean

        # @!method initialize(row: nil, success: nil)
        #   @param row [Object]
        #   @param success [Boolean]
      end
    end
  end
end
