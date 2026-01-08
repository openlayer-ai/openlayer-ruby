# typed: strong

module Openlayer
  module Models
    module Workspaces
      class InviteCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Workspaces::InviteCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :emails

        sig { params(emails: T::Array[String]).void }
        attr_writer :emails

        # The member role.
        sig do
          returns(
            T.nilable(Openlayer::Workspaces::InviteCreateParams::Role::OrSymbol)
          )
        end
        attr_reader :role

        sig do
          params(
            role: Openlayer::Workspaces::InviteCreateParams::Role::OrSymbol
          ).void
        end
        attr_writer :role

        sig do
          params(
            emails: T::Array[String],
            role: Openlayer::Workspaces::InviteCreateParams::Role::OrSymbol,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          emails: nil,
          # The member role.
          role: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              emails: T::Array[String],
              role: Openlayer::Workspaces::InviteCreateParams::Role::OrSymbol,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The member role.
        module Role
          extend Openlayer::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Openlayer::Workspaces::InviteCreateParams::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADMIN =
            T.let(
              :ADMIN,
              Openlayer::Workspaces::InviteCreateParams::Role::TaggedSymbol
            )
          MEMBER =
            T.let(
              :MEMBER,
              Openlayer::Workspaces::InviteCreateParams::Role::TaggedSymbol
            )
          VIEWER =
            T.let(
              :VIEWER,
              Openlayer::Workspaces::InviteCreateParams::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Openlayer::Workspaces::InviteCreateParams::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
