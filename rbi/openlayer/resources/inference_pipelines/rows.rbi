# typed: strong

module Openlayer
  module Resources
    class InferencePipelines
      class Rows
        # Update an inference data point in an inference pipeline.
        sig do
          params(
            inference_pipeline_id: String,
            inference_id: String,
            row: T.anything,
            config:
              T.nilable(
                Openlayer::InferencePipelines::RowUpdateParams::Config::OrHash
              ),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::InferencePipelines::RowUpdateResponse)
        end
        def update(
          # Path param: The inference pipeline id (a UUID).
          inference_pipeline_id,
          # Query param: Specify the inference id as a query param.
          inference_id:,
          # Body param
          row:,
          # Body param
          config: nil,
          request_options: {}
        )
        end

        # A list of rows for an inference pipeline.
        sig do
          params(
            inference_pipeline_id: String,
            asc: T::Boolean,
            page: Integer,
            per_page: Integer,
            sort_column: String,
            column_filters:
              T.nilable(
                T::Array[
                  T.any(
                    Openlayer::InferencePipelines::RowListParams::ColumnFilter::SetColumnFilter::OrHash,
                    Openlayer::InferencePipelines::RowListParams::ColumnFilter::NumericColumnFilter::OrHash,
                    Openlayer::InferencePipelines::RowListParams::ColumnFilter::StringColumnFilter::OrHash
                  )
                ]
              ),
            exclude_row_id_list: T.nilable(T::Array[Integer]),
            not_search_query_and: T.nilable(T::Array[String]),
            not_search_query_or: T.nilable(T::Array[String]),
            row_id_list: T.nilable(T::Array[Integer]),
            search_query_and: T.nilable(T::Array[String]),
            search_query_or: T.nilable(T::Array[String]),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(Openlayer::Models::InferencePipelines::RowListResponse)
        end
        def list(
          # Path param: The inference pipeline id (a UUID).
          inference_pipeline_id,
          # Query param: Whether or not to sort on the sortColumn in ascending order.
          asc: nil,
          # Query param: The page to return in a paginated query.
          page: nil,
          # Query param: Maximum number of items to return per page.
          per_page: nil,
          # Query param: Name of the column to sort on
          sort_column: nil,
          # Body param
          column_filters: nil,
          # Body param
          exclude_row_id_list: nil,
          # Body param
          not_search_query_and: nil,
          # Body param
          not_search_query_or: nil,
          # Body param
          row_id_list: nil,
          # Body param
          search_query_and: nil,
          # Body param
          search_query_or: nil,
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
end
