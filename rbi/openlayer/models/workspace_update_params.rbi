# typed: strong

module Openlayer
  module Models
    class WorkspaceUpdateParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::WorkspaceUpdateParams, Openlayer::Internal::AnyHash)
        end

      # The workspace invite code.
      sig { returns(T.nilable(String)) }
      attr_reader :invite_code

      sig { params(invite_code: String).void }
      attr_writer :invite_code

      # The workspace name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The workspace slug.
      sig { returns(T.nilable(String)) }
      attr_reader :slug

      sig { params(slug: String).void }
      attr_writer :slug

      sig do
        params(
          invite_code: String,
          name: String,
          slug: String,
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The workspace invite code.
        invite_code: nil,
        # The workspace name.
        name: nil,
        # The workspace slug.
        slug: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invite_code: String,
            name: String,
            slug: String,
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
