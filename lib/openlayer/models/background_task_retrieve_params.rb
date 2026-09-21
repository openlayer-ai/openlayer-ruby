# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::BackgroundTasks#retrieve
    class BackgroundTaskRetrieveParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute task_id
      #
      #   @return [String]
      required :task_id, String

      # @!method initialize(task_id:, request_options: {})
      #   @param task_id [String]
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
