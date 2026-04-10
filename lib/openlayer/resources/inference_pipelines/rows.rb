# frozen_string_literal: true

module Openlayer
  module Resources
    class InferencePipelines
      class Rows
        # Fetch a single inference pipeline row by inference ID, including OTel steps.
        #
        # @overload retrieve(inference_id, inference_pipeline_id:, request_options: {})
        #
        # @param inference_id [String]
        #
        # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::InferencePipelines::RowRetrieveResponse]
        #
        # @see Openlayer::Models::InferencePipelines::RowRetrieveParams
        def retrieve(inference_id, params)
          parsed, options = Openlayer::InferencePipelines::RowRetrieveParams.dump_request(params)
          inference_pipeline_id =
            parsed.delete(:inference_pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["inference-pipelines/%1$s/rows/%2$s", inference_pipeline_id, inference_id],
            model: Openlayer::Models::InferencePipelines::RowRetrieveResponse,
            options: options
          )
        end

        # Update an inference data point in an inference pipeline.
        #
        # @overload update(inference_pipeline_id, inference_id:, row:, config: nil, request_options: {})
        #
        # @param inference_pipeline_id [String] Path param: The inference pipeline id (a UUID).
        #
        # @param inference_id [String] Query param: Specify the inference id as a query param.
        #
        # @param row [Object] Body param
        #
        # @param config [Openlayer::Models::InferencePipelines::RowUpdateParams::Config, nil] Body param
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::InferencePipelines::RowUpdateResponse]
        #
        # @see Openlayer::Models::InferencePipelines::RowUpdateParams
        def update(inference_pipeline_id, params)
          query_params = [:inference_id]
          parsed, options = Openlayer::InferencePipelines::RowUpdateParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :put,
            path: ["inference-pipelines/%1$s/rows", inference_pipeline_id],
            query: query.transform_keys(inference_id: "inferenceId"),
            body: parsed.except(*query_params),
            model: Openlayer::Models::InferencePipelines::RowUpdateResponse,
            options: options
          )
        end

        # A list of rows for an inference pipeline.
        #
        # @overload list(inference_pipeline_id, asc: nil, page: nil, per_page: nil, sort_column: nil, column_filters: nil, exclude_row_id_list: nil, not_search_query_and: nil, not_search_query_or: nil, row_id_list: nil, search_query_and: nil, search_query_or: nil, request_options: {})
        #
        # @param inference_pipeline_id [String] Path param: The inference pipeline id (a UUID).
        #
        # @param asc [Boolean] Query param: Whether or not to sort on the sortColumn in ascending order.
        #
        # @param page [Integer] Query param: The page to return in a paginated query.
        #
        # @param per_page [Integer] Query param: Maximum number of items to return per page.
        #
        # @param sort_column [String] Query param: Name of the column to sort on
        #
        # @param column_filters [Array<Openlayer::Models::InferencePipelines::RowListParams::ColumnFilter::SetColumnFilter, Openlayer::Models::InferencePipelines::RowListParams::ColumnFilter::NumericColumnFilter, Openlayer::Models::InferencePipelines::RowListParams::ColumnFilter::StringColumnFilter>, nil] Body param
        #
        # @param exclude_row_id_list [Array<Integer>, nil] Body param
        #
        # @param not_search_query_and [Array<String>, nil] Body param
        #
        # @param not_search_query_or [Array<String>, nil] Body param
        #
        # @param row_id_list [Array<Integer>, nil] Body param
        #
        # @param search_query_and [Array<String>, nil] Body param
        #
        # @param search_query_or [Array<String>, nil] Body param
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::InferencePipelines::RowListResponse]
        #
        # @see Openlayer::Models::InferencePipelines::RowListParams
        def list(inference_pipeline_id, params = {})
          query_params = [:asc, :page, :per_page, :sort_column]
          parsed, options = Openlayer::InferencePipelines::RowListParams.dump_request(params)
          query = Openlayer::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :post,
            path: ["inference-pipelines/%1$s/rows", inference_pipeline_id],
            query: query.transform_keys(per_page: "perPage", sort_column: "sortColumn"),
            body: parsed.except(*query_params),
            model: Openlayer::Models::InferencePipelines::RowListResponse,
            options: options
          )
        end

        # Delete a single inference pipeline row by inference ID. Only project admins can
        # perform this action.
        #
        # @overload delete(inference_id, inference_pipeline_id:, request_options: {})
        #
        # @param inference_id [String]
        #
        # @param inference_pipeline_id [String] The inference pipeline id (a UUID).
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Openlayer::Models::InferencePipelines::RowDeleteParams
        def delete(inference_id, params)
          parsed, options = Openlayer::InferencePipelines::RowDeleteParams.dump_request(params)
          inference_pipeline_id =
            parsed.delete(:inference_pipeline_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["inference-pipelines/%1$s/rows/%2$s", inference_pipeline_id, inference_id],
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Openlayer::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
