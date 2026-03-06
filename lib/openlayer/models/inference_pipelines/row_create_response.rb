# frozen_string_literal: true

module Openlayer
  module Models
    module InferencePipelines
      # @see Openlayer::Resources::InferencePipelines::Rows#create
      class RowCreateResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Openlayer::Models::InferencePipelines::RowCreateResponse::Item>]
        required :items,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::InferencePipelines::RowCreateResponse::Item] }

        # @!method initialize(items:)
        #   @param items [Array<Openlayer::Models::InferencePipelines::RowCreateResponse::Item>]

        class Item < Openlayer::Internal::Type::BaseModel
          # @!attribute openlayer_row_id
          #
          #   @return [Integer]
          required :openlayer_row_id, Integer

          # @!method initialize(openlayer_row_id:)
          #   @param openlayer_row_id [Integer]
        end
      end
    end
  end
end
