# typed: strong

module Openlayer
  module Models
    class TestListResultsParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Openlayer::TestListResultsParams, Openlayer::Internal::AnyHash)
        end

      # Filter for results that use data starting before the end timestamp.
      sig { returns(T.nilable(Float)) }
      attr_reader :end_timestamp

      sig { params(end_timestamp: Float).void }
      attr_writer :end_timestamp

      # Include the insights linked to each test result
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_insights

      sig { params(include_insights: T::Boolean).void }
      attr_writer :include_insights

      # Retrive test results for a specific inference pipeline.
      sig { returns(T.nilable(String)) }
      attr_accessor :inference_pipeline_id

      # The page to return in a paginated query.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Maximum number of items to return per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Retrive test results for a specific project version.
      sig { returns(T.nilable(String)) }
      attr_accessor :project_version_id

      # Filter for results that use data ending after the start timestamp.
      sig { returns(T.nilable(Float)) }
      attr_reader :start_timestamp

      sig { params(start_timestamp: Float).void }
      attr_writer :start_timestamp

      # Filter by status(es).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :status

      sig { params(status: T::Array[String]).void }
      attr_writer :status

      sig do
        params(
          end_timestamp: Float,
          include_insights: T::Boolean,
          inference_pipeline_id: T.nilable(String),
          page: Integer,
          per_page: Integer,
          project_version_id: T.nilable(String),
          start_timestamp: Float,
          status: T::Array[String],
          request_options: Openlayer::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter for results that use data starting before the end timestamp.
        end_timestamp: nil,
        # Include the insights linked to each test result
        include_insights: nil,
        # Retrive test results for a specific inference pipeline.
        inference_pipeline_id: nil,
        # The page to return in a paginated query.
        page: nil,
        # Maximum number of items to return per page.
        per_page: nil,
        # Retrive test results for a specific project version.
        project_version_id: nil,
        # Filter for results that use data ending after the start timestamp.
        start_timestamp: nil,
        # Filter by status(es).
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            end_timestamp: Float,
            include_insights: T::Boolean,
            inference_pipeline_id: T.nilable(String),
            page: Integer,
            per_page: Integer,
            project_version_id: T.nilable(String),
            start_timestamp: Float,
            status: T::Array[String],
            request_options: Openlayer::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
