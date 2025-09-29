# typed: strong

module Openlayer
  module Resources
    class Storage
      sig { returns(Openlayer::Resources::Storage::PresignedURL) }
      attr_reader :presigned_url

      # @api private
      sig { params(client: Openlayer::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
