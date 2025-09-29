# frozen_string_literal: true

module Openlayer
  module Resources
    class Commits
      # @return [Openlayer::Resources::Commits::TestResults]
      attr_reader :test_results

      # Retrieve a project version (commit) by its id.
      #
      # @overload retrieve(project_version_id, request_options: {})
      #
      # @param project_version_id [String] The project version (commit) id.
      #
      # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Openlayer::Models::CommitRetrieveResponse]
      #
      # @see Openlayer::Models::CommitRetrieveParams
      def retrieve(project_version_id, params = {})
        @client.request(
          method: :get,
          path: ["versions/%1$s", project_version_id],
          model: Openlayer::Models::CommitRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Openlayer::Client]
      def initialize(client:)
        @client = client
        @test_results = Openlayer::Resources::Commits::TestResults.new(client: client)
      end
    end
  end
end
