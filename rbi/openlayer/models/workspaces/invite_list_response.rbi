# typed: strong

module Openlayer
  module Models
    module Workspaces
      class InviteListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Workspaces::InviteListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Openlayer::Models::Workspaces::InviteListResponse::Item]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Workspaces::InviteListResponse::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(items:)
        end

        sig do
          override.returns(
            {
              items:
                T::Array[
                  Openlayer::Models::Workspaces::InviteListResponse::Item
                ]
            }
          )
        end
        def to_hash
        end

        class Item < Openlayer::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Openlayer::Models::Workspaces::InviteListResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          sig do
            returns(
              Openlayer::Models::Workspaces::InviteListResponse::Item::Creator
            )
          end
          attr_reader :creator

          sig do
            params(
              creator:
                Openlayer::Models::Workspaces::InviteListResponse::Item::Creator::OrHash
            ).void
          end
          attr_writer :creator

          # The invite email.
          sig { returns(String) }
          attr_accessor :email

          # The invite role.
          sig do
            returns(
              Openlayer::Models::Workspaces::InviteListResponse::Item::Role::TaggedSymbol
            )
          end
          attr_accessor :role

          # The invite status.
          sig do
            returns(
              Openlayer::Models::Workspaces::InviteListResponse::Item::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # The invite id.
          sig { returns(String) }
          attr_accessor :id

          # The invite creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          sig do
            returns(
              Openlayer::Models::Workspaces::InviteListResponse::Item::Workspace
            )
          end
          attr_reader :workspace

          sig do
            params(
              workspace:
                Openlayer::Models::Workspaces::InviteListResponse::Item::Workspace::OrHash
            ).void
          end
          attr_writer :workspace

          sig do
            params(
              id: String,
              creator:
                Openlayer::Models::Workspaces::InviteListResponse::Item::Creator::OrHash,
              date_created: Time,
              email: String,
              role:
                Openlayer::Models::Workspaces::InviteListResponse::Item::Role::OrSymbol,
              status:
                Openlayer::Models::Workspaces::InviteListResponse::Item::Status::OrSymbol,
              workspace:
                Openlayer::Models::Workspaces::InviteListResponse::Item::Workspace::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The invite id.
            id:,
            creator:,
            # The invite creation date.
            date_created:,
            # The invite email.
            email:,
            # The invite role.
            role:,
            # The invite status.
            status:,
            workspace:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                creator:
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Creator,
                date_created: Time,
                email: String,
                role:
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Role::TaggedSymbol,
                status:
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Status::TaggedSymbol,
                workspace:
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Workspace
              }
            )
          end
          def to_hash
          end

          class Creator < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Creator,
                  Openlayer::Internal::AnyHash
                )
              end

            # The invite creator name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # The invite creator username.
            sig { returns(T.nilable(String)) }
            attr_accessor :username

            # The invite creator id.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig do
              params(
                id: String,
                name: T.nilable(String),
                username: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The invite creator id.
              id: nil,
              # The invite creator name.
              name: nil,
              # The invite creator username.
              username: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: T.nilable(String),
                  username: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          # The invite role.
          module Role
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADMIN =
              T.let(
                :ADMIN,
                Openlayer::Models::Workspaces::InviteListResponse::Item::Role::TaggedSymbol
              )
            MEMBER =
              T.let(
                :MEMBER,
                Openlayer::Models::Workspaces::InviteListResponse::Item::Role::TaggedSymbol
              )
            VIEWER =
              T.let(
                :VIEWER,
                Openlayer::Models::Workspaces::InviteListResponse::Item::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The invite status.
          module Status
            extend Openlayer::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACCEPTED =
              T.let(
                :accepted,
                Openlayer::Models::Workspaces::InviteListResponse::Item::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Openlayer::Models::Workspaces::InviteListResponse::Item::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Workspace < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::Models::Workspaces::InviteListResponse::Item::Workspace,
                  Openlayer::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :name

            sig { returns(String) }
            attr_accessor :slug

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Time) }
            attr_accessor :date_created

            sig { returns(Integer) }
            attr_accessor :member_count

            sig do
              params(
                id: String,
                date_created: Time,
                member_count: Integer,
                name: String,
                slug: String
              ).returns(T.attached_class)
            end
            def self.new(id:, date_created:, member_count:, name:, slug:)
            end

            sig do
              override.returns(
                {
                  id: String,
                  date_created: Time,
                  member_count: Integer,
                  name: String,
                  slug: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
