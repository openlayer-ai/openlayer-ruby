# frozen_string_literal: true

module Openlayer
  module Models
    module Projects
      # @see Openlayer::Resources::Projects::Tests#update
      class TestUpdateResponse < Openlayer::Internal::Type::BaseModel
        # @!attribute task_result_id
        #
        #   @return [String, nil]
        optional :task_result_id, String, api_name: :taskResultId

        # @!attribute task_result_url
        #
        #   @return [String, nil]
        optional :task_result_url, String, api_name: :taskResultUrl

        # @!method initialize(task_result_id: nil, task_result_url: nil)
        #   @param task_result_id [String]
        #   @param task_result_url [String]
      end
    end
  end
end
