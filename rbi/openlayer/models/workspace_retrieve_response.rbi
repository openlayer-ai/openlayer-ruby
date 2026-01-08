# typed: strong

module Openlayer
  module Models
    class WorkspaceRetrieveResponse < Openlayer::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Openlayer::Models::WorkspaceRetrieveResponse,
            Openlayer::Internal::AnyHash
          )
        end

      # The workspace name.
      sig { returns(String) }
      attr_accessor :name

      # The workspace slug.
      sig { returns(String) }
      attr_accessor :slug

      # Whether the workspace only allows SAML authentication.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :saml_only_access

      sig { params(saml_only_access: T::Boolean).void }
      attr_writer :saml_only_access

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :wildcard_domains

      sig { params(wildcard_domains: T::Array[String]).void }
      attr_writer :wildcard_domains

      # The workspace id.
      sig { returns(String) }
      attr_accessor :id

      # The workspace creator id.
      sig { returns(T.nilable(String)) }
      attr_accessor :creator_id

      # The workspace creation date.
      sig { returns(Time) }
      attr_accessor :date_created

      # The workspace last updated date.
      sig { returns(Time) }
      attr_accessor :date_updated

      # The number of invites in the workspace.
      sig { returns(Integer) }
      attr_accessor :invite_count

      # The number of members in the workspace.
      sig { returns(Integer) }
      attr_accessor :member_count

      # The end date of the current billing period.
      sig { returns(T.nilable(Time)) }
      attr_accessor :period_end_date

      # The start date of the current billing period.
      sig { returns(T.nilable(Time)) }
      attr_accessor :period_start_date

      # The number of projects in the workspace.
      sig { returns(Integer) }
      attr_accessor :project_count

      sig do
        returns(
          Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        returns(
          T.nilable(
            T::Array[Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage]
          )
        )
      end
      attr_reader :monthly_usage

      sig do
        params(
          monthly_usage:
            T::Array[
              Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage::OrHash
            ]
        ).void
      end
      attr_writer :monthly_usage

      sig do
        params(
          id: String,
          creator_id: T.nilable(String),
          date_created: Time,
          date_updated: Time,
          invite_count: Integer,
          member_count: Integer,
          name: String,
          period_end_date: T.nilable(Time),
          period_start_date: T.nilable(Time),
          project_count: Integer,
          slug: String,
          status:
            Openlayer::Models::WorkspaceRetrieveResponse::Status::OrSymbol,
          monthly_usage:
            T::Array[
              Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage::OrHash
            ],
          saml_only_access: T::Boolean,
          wildcard_domains: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The workspace id.
        id:,
        # The workspace creator id.
        creator_id:,
        # The workspace creation date.
        date_created:,
        # The workspace last updated date.
        date_updated:,
        # The number of invites in the workspace.
        invite_count:,
        # The number of members in the workspace.
        member_count:,
        # The workspace name.
        name:,
        # The end date of the current billing period.
        period_end_date:,
        # The start date of the current billing period.
        period_start_date:,
        # The number of projects in the workspace.
        project_count:,
        # The workspace slug.
        slug:,
        status:,
        monthly_usage: nil,
        # Whether the workspace only allows SAML authentication.
        saml_only_access: nil,
        wildcard_domains: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            creator_id: T.nilable(String),
            date_created: Time,
            date_updated: Time,
            invite_count: Integer,
            member_count: Integer,
            name: String,
            period_end_date: T.nilable(Time),
            period_start_date: T.nilable(Time),
            project_count: Integer,
            slug: String,
            status:
              Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol,
            invite_code: String,
            monthly_usage:
              T::Array[
                Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage
              ],
            saml_only_access: T::Boolean,
            wildcard_domains: T::Array[String]
          }
        )
      end
      def to_hash
      end

      module Status
        extend Openlayer::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Openlayer::Models::WorkspaceRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        PAST_DUE =
          T.let(
            :past_due,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        UNPAID =
          T.let(
            :unpaid,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        CANCELED =
          T.let(
            :canceled,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        INCOMPLETE =
          T.let(
            :incomplete,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        INCOMPLETE_EXPIRED =
          T.let(
            :incomplete_expired,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        TRIALING =
          T.let(
            :trialing,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )
        PAUSED =
          T.let(
            :paused,
            Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Openlayer::Models::WorkspaceRetrieveResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class MonthlyUsage < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_accessor :execution_time_ms

        sig { returns(T.nilable(Date)) }
        attr_reader :month_year

        sig { params(month_year: Date).void }
        attr_writer :month_year

        sig { returns(T.nilable(Integer)) }
        attr_reader :prediction_count

        sig { params(prediction_count: Integer).void }
        attr_writer :prediction_count

        sig do
          params(
            execution_time_ms: T.nilable(Integer),
            month_year: Date,
            prediction_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          execution_time_ms: nil,
          month_year: nil,
          prediction_count: nil
        )
        end

        sig do
          override.returns(
            {
              execution_time_ms: T.nilable(Integer),
              month_year: Date,
              prediction_count: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
