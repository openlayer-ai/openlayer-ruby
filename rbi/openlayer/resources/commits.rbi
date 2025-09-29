# typed: strong

module Openlayer
  module Resources
    class Commits
      sig { returns(Openlayer::Resources::Commits::TestResults) }
      attr_reader :test_results

      # Retrieve a project version (commit) by its id.
      sig do
        params(
          project_version_id: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(Openlayer::Models::CommitRetrieveResponse)
      end
      def retrieve(
        # The project version (commit) id.
        project_version_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Openlayer::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
