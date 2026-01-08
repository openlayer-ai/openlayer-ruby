# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::Workspaces#retrieve
    class WorkspaceRetrieveResponse < Openlayer::Internal::Type::BaseModel
      # @!attribute name
      #   The workspace name.
      #
      #   @return [String]
      required :name, String

      # @!attribute slug
      #   The workspace slug.
      #
      #   @return [String]
      required :slug, String

      # @!attribute saml_only_access
      #   Whether the workspace only allows SAML authentication.
      #
      #   @return [Boolean, nil]
      optional :saml_only_access, Openlayer::Internal::Type::Boolean, api_name: :samlOnlyAccess

      # @!attribute wildcard_domains
      #
      #   @return [Array<String>, nil]
      optional :wildcard_domains, Openlayer::Internal::Type::ArrayOf[String], api_name: :wildcardDomains

      response_only do
        # @!attribute id
        #   The workspace id.
        #
        #   @return [String]
        required :id, String

        # @!attribute creator_id
        #   The workspace creator id.
        #
        #   @return [String, nil]
        required :creator_id, String, api_name: :creatorId, nil?: true

        # @!attribute date_created
        #   The workspace creation date.
        #
        #   @return [Time]
        required :date_created, Time, api_name: :dateCreated

        # @!attribute date_updated
        #   The workspace last updated date.
        #
        #   @return [Time]
        required :date_updated, Time, api_name: :dateUpdated

        # @!attribute invite_count
        #   The number of invites in the workspace.
        #
        #   @return [Integer]
        required :invite_count, Integer, api_name: :inviteCount

        # @!attribute member_count
        #   The number of members in the workspace.
        #
        #   @return [Integer]
        required :member_count, Integer, api_name: :memberCount

        # @!attribute period_end_date
        #   The end date of the current billing period.
        #
        #   @return [Time, nil]
        required :period_end_date, Time, api_name: :periodEndDate, nil?: true

        # @!attribute period_start_date
        #   The start date of the current billing period.
        #
        #   @return [Time, nil]
        required :period_start_date, Time, api_name: :periodStartDate, nil?: true

        # @!attribute project_count
        #   The number of projects in the workspace.
        #
        #   @return [Integer]
        required :project_count, Integer, api_name: :projectCount

        # @!attribute status
        #
        #   @return [Symbol, Openlayer::Models::WorkspaceRetrieveResponse::Status]
        required :status, enum: -> { Openlayer::Models::WorkspaceRetrieveResponse::Status }

        # @!attribute monthly_usage
        #
        #   @return [Array<Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage>, nil]
        optional :monthly_usage,
                 -> { Openlayer::Internal::Type::ArrayOf[Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage] },
                 api_name: :monthlyUsage
      end

      # @!method initialize(id:, creator_id:, date_created:, date_updated:, invite_count:, member_count:, name:, period_end_date:, period_start_date:, project_count:, slug:, status:, monthly_usage: nil, saml_only_access: nil, wildcard_domains: nil)
      #   @param id [String] The workspace id.
      #
      #   @param creator_id [String, nil] The workspace creator id.
      #
      #   @param date_created [Time] The workspace creation date.
      #
      #   @param date_updated [Time] The workspace last updated date.
      #
      #   @param invite_count [Integer] The number of invites in the workspace.
      #
      #   @param member_count [Integer] The number of members in the workspace.
      #
      #   @param name [String] The workspace name.
      #
      #   @param period_end_date [Time, nil] The end date of the current billing period.
      #
      #   @param period_start_date [Time, nil] The start date of the current billing period.
      #
      #   @param project_count [Integer] The number of projects in the workspace.
      #
      #   @param slug [String] The workspace slug.
      #
      #   @param status [Symbol, Openlayer::Models::WorkspaceRetrieveResponse::Status]
      #
      #   @param monthly_usage [Array<Openlayer::Models::WorkspaceRetrieveResponse::MonthlyUsage>]
      #
      #   @param saml_only_access [Boolean] Whether the workspace only allows SAML authentication.
      #
      #   @param wildcard_domains [Array<String>]

      # @see Openlayer::Models::WorkspaceRetrieveResponse#status
      module Status
        extend Openlayer::Internal::Type::Enum

        ACTIVE = :active
        PAST_DUE = :past_due
        UNPAID = :unpaid
        CANCELED = :canceled
        INCOMPLETE = :incomplete
        INCOMPLETE_EXPIRED = :incomplete_expired
        TRIALING = :trialing
        PAUSED = :paused

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class MonthlyUsage < Openlayer::Internal::Type::BaseModel
        # @!attribute execution_time_ms
        #
        #   @return [Integer, nil]
        optional :execution_time_ms, Integer, api_name: :executionTimeMs, nil?: true

        # @!attribute month_year
        #
        #   @return [Date, nil]
        optional :month_year, Date, api_name: :monthYear

        # @!attribute prediction_count
        #
        #   @return [Integer, nil]
        optional :prediction_count, Integer, api_name: :predictionCount

        # @!method initialize(execution_time_ms: nil, month_year: nil, prediction_count: nil)
        #   @param execution_time_ms [Integer, nil]
        #   @param month_year [Date]
        #   @param prediction_count [Integer]
      end
    end
  end
end
