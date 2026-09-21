# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleTagListResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Governance::RuleTagListResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Openlayer::Models::Governance::RuleTagListResponse::Item]
          )
        end
        attr_accessor :items

        sig do
          params(
            items:
              T::Array[
                Openlayer::Models::Governance::RuleTagListResponse::Item::OrHash
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
                  Openlayer::Models::Governance::RuleTagListResponse::Item
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
                Openlayer::Models::Governance::RuleTagListResponse::Item,
                Openlayer::Internal::AnyHash
              )
            end

          # The tag name.
          sig { returns(String) }
          attr_accessor :name

          # The color the tag is displayed with.
          sig { returns(T.nilable(String)) }
          attr_accessor :color

          # The rule tag id.
          sig { returns(String) }
          attr_accessor :id

          # The user who created the tag. `null` for tags that ship with Openlayer.
          sig { returns(T.nilable(String)) }
          attr_accessor :creator_id

          # The creation date.
          sig { returns(Time) }
          attr_accessor :date_created

          # The last update date.
          sig { returns(Time) }
          attr_accessor :date_updated

          # Whether the tag is managed by Openlayer and cannot be edited or deleted.
          sig { returns(T::Boolean) }
          attr_accessor :immutable

          # The id of the workspace the tag belongs to.
          sig { returns(String) }
          attr_accessor :workspace_id

          sig do
            params(
              id: String,
              creator_id: T.nilable(String),
              date_created: Time,
              date_updated: Time,
              immutable: T::Boolean,
              name: String,
              workspace_id: String,
              color: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The rule tag id.
            id:,
            # The user who created the tag. `null` for tags that ship with Openlayer.
            creator_id:,
            # The creation date.
            date_created:,
            # The last update date.
            date_updated:,
            # Whether the tag is managed by Openlayer and cannot be edited or deleted.
            immutable:,
            # The tag name.
            name:,
            # The id of the workspace the tag belongs to.
            workspace_id:,
            # The color the tag is displayed with.
            color: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                creator_id: T.nilable(String),
                date_created: Time,
                date_updated: Time,
                immutable: T::Boolean,
                name: String,
                workspace_id: String,
                color: T.nilable(String)
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
