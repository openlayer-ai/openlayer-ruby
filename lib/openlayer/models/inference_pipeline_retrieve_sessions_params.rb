# frozen_string_literal: true

module Openlayer
  module Models
    # @see Openlayer::Resources::InferencePipelines#retrieve_sessions
    class InferencePipelineRetrieveSessionsParams < Openlayer::Internal::Type::BaseModel
      extend Openlayer::Internal::Type::RequestParameters::Converter
      include Openlayer::Internal::Type::RequestParameters

      # @!attribute inference_pipeline_id
      #
      #   @return [String]
      required :inference_pipeline_id, String

      # @!attribute asc
      #   Whether or not to sort on the sortColumn in ascending order.
      #
      #   @return [Boolean, nil]
      optional :asc, Openlayer::Internal::Type::Boolean

      # @!attribute page
      #   The page to return in a paginated query.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per_page
      #   Maximum number of items to return per page.
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute sort_column
      #   Name of the column to sort on
      #
      #   @return [String, nil]
      optional :sort_column, String

      # @!attribute column_filters
      #
      #   @return [Array<Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter>, nil]
      optional :column_filters,
               -> {
                 Openlayer::Internal::Type::ArrayOf[union: Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter]
               },
               api_name: :columnFilters,
               nil?: true

      # @!attribute exclude_row_id_list
      #
      #   @return [Array<Integer>, nil]
      optional :exclude_row_id_list,
               Openlayer::Internal::Type::ArrayOf[Integer],
               api_name: :excludeRowIdList,
               nil?: true

      # @!attribute not_search_query_and
      #
      #   @return [Array<String>, nil]
      optional :not_search_query_and,
               Openlayer::Internal::Type::ArrayOf[String],
               api_name: :notSearchQueryAnd,
               nil?: true

      # @!attribute not_search_query_or
      #
      #   @return [Array<String>, nil]
      optional :not_search_query_or,
               Openlayer::Internal::Type::ArrayOf[String],
               api_name: :notSearchQueryOr,
               nil?: true

      # @!attribute row_id_list
      #
      #   @return [Array<Integer>, nil]
      optional :row_id_list, Openlayer::Internal::Type::ArrayOf[Integer], api_name: :rowIdList, nil?: true

      # @!attribute search_query_and
      #
      #   @return [Array<String>, nil]
      optional :search_query_and,
               Openlayer::Internal::Type::ArrayOf[String],
               api_name: :searchQueryAnd,
               nil?: true

      # @!attribute search_query_or
      #
      #   @return [Array<String>, nil]
      optional :search_query_or,
               Openlayer::Internal::Type::ArrayOf[String],
               api_name: :searchQueryOr,
               nil?: true

      # @!method initialize(inference_pipeline_id:, asc: nil, page: nil, per_page: nil, sort_column: nil, column_filters: nil, exclude_row_id_list: nil, not_search_query_and: nil, not_search_query_or: nil, row_id_list: nil, search_query_and: nil, search_query_or: nil, request_options: {})
      #   @param inference_pipeline_id [String]
      #
      #   @param asc [Boolean] Whether or not to sort on the sortColumn in ascending order.
      #
      #   @param page [Integer] The page to return in a paginated query.
      #
      #   @param per_page [Integer] Maximum number of items to return per page.
      #
      #   @param sort_column [String] Name of the column to sort on
      #
      #   @param column_filters [Array<Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter>, nil]
      #
      #   @param exclude_row_id_list [Array<Integer>, nil]
      #
      #   @param not_search_query_and [Array<String>, nil]
      #
      #   @param not_search_query_or [Array<String>, nil]
      #
      #   @param row_id_list [Array<Integer>, nil]
      #
      #   @param search_query_and [Array<String>, nil]
      #
      #   @param search_query_or [Array<String>, nil]
      #
      #   @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}]

      module ColumnFilter
        extend Openlayer::Internal::Type::Union

        variant -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter }

        variant -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter }

        variant -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter }

        class SetColumnFilter < Openlayer::Internal::Type::BaseModel
          # @!attribute measurement
          #   The name of the column.
          #
          #   @return [String]
          required :measurement, String

          # @!attribute operator
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter::Operator]
          required :operator,
                   enum: -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter::Operator }

          # @!attribute value
          #
          #   @return [Array<String, Float>]
          required :value,
                   -> { Openlayer::Internal::Type::ArrayOf[union: Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter::Value] }

          # @!method initialize(measurement:, operator:, value:)
          #   @param measurement [String] The name of the column.
          #
          #   @param operator [Symbol, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter::Operator]
          #
          #   @param value [Array<String, Float>]

          # @see Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter#operator
          module Operator
            extend Openlayer::Internal::Type::Enum

            CONTAINS_NONE = :contains_none
            CONTAINS_ANY = :contains_any
            CONTAINS_ALL = :contains_all
            ONE_OF = :one_of
            NONE_OF = :none_of

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module Value
            extend Openlayer::Internal::Type::Union

            variant String

            variant Float

            # @!method self.variants
            #   @return [Array(String, Float)]
          end
        end

        class NumericColumnFilter < Openlayer::Internal::Type::BaseModel
          # @!attribute measurement
          #   The name of the column.
          #
          #   @return [String]
          required :measurement, String

          # @!attribute operator
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter::Operator]
          required :operator,
                   enum: -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter::Operator }

          # @!attribute value
          #
          #   @return [Float, nil]
          required :value, Float, nil?: true

          # @!method initialize(measurement:, operator:, value:)
          #   @param measurement [String] The name of the column.
          #
          #   @param operator [Symbol, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter::Operator]
          #
          #   @param value [Float, nil]

          # @see Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter#operator
          module Operator
            extend Openlayer::Internal::Type::Enum

            GREATER = :>
            GREATER_OR_EQUALS = :">="
            IS = :is
            LESS = :<
            LESS_OR_EQUALS = :"<="
            NOT_EQUALS = :"!="

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class StringColumnFilter < Openlayer::Internal::Type::BaseModel
          # @!attribute measurement
          #   The name of the column.
          #
          #   @return [String]
          required :measurement, String

          # @!attribute operator
          #
          #   @return [Symbol, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter::Operator]
          required :operator,
                   enum: -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter::Operator }

          # @!attribute value
          #
          #   @return [String, Boolean]
          required :value,
                   union: -> { Openlayer::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter::Value }

          # @!method initialize(measurement:, operator:, value:)
          #   @param measurement [String] The name of the column.
          #
          #   @param operator [Symbol, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter::Operator]
          #
          #   @param value [String, Boolean]

          # @see Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter#operator
          module Operator
            extend Openlayer::Internal::Type::Enum

            IS = :is
            NOT_EQUALS = :"!="

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter#value
          module Value
            extend Openlayer::Internal::Type::Union

            variant String

            variant Openlayer::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Boolean)]
          end
        end

        # @!method self.variants
        #   @return [Array(Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::SetColumnFilter, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::NumericColumnFilter, Openlayer::Models::InferencePipelineRetrieveSessionsParams::ColumnFilter::StringColumnFilter)]
      end
    end
  end
end
