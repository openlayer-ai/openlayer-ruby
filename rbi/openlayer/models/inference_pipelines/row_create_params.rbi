# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class RowCreateParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::InferencePipelines::RowCreateParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inference_pipeline_id

        # Whether or not to sort on the sortColumn in ascending order.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :asc

        sig { params(asc: T::Boolean).void }
        attr_writer :asc

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

        # Name of the column to sort on
        sig { returns(T.nilable(String)) }
        attr_reader :sort_column

        sig { params(sort_column: String).void }
        attr_writer :sort_column

        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter
                )
              ]
            )
          )
        end
        attr_accessor :column_filters

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_accessor :exclude_row_id_list

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :not_search_query_and

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :not_search_query_or

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_accessor :row_id_list

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :search_query_and

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :search_query_or

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
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::OrHash,
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::OrHash,
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::OrHash
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
          ).returns(T.attached_class)
        end
        def self.new(
          inference_pipeline_id:,
          # Whether or not to sort on the sortColumn in ascending order.
          asc: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          # Name of the column to sort on
          sort_column: nil,
          column_filters: nil,
          exclude_row_id_list: nil,
          not_search_query_and: nil,
          not_search_query_or: nil,
          row_id_list: nil,
          search_query_and: nil,
          search_query_or: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              inference_pipeline_id: String,
              asc: T::Boolean,
              page: Integer,
              per_page: Integer,
              sort_column: String,
              column_filters:
                T.nilable(
                  T::Array[
                    T.any(
                      Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter,
                      Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter,
                      Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter
                    )
                  ]
                ),
              exclude_row_id_list: T.nilable(T::Array[Integer]),
              not_search_query_and: T.nilable(T::Array[String]),
              not_search_query_or: T.nilable(T::Array[String]),
              row_id_list: T.nilable(T::Array[Integer]),
              search_query_and: T.nilable(T::Array[String]),
              search_query_or: T.nilable(T::Array[String]),
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        module ColumnFilter
          extend Openlayer::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter,
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter,
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter
              )
            end

          class SetColumnFilter < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter,
                  Openlayer::Internal::AnyHash
                )
              end

            # The name of the column.
            sig { returns(String) }
            attr_accessor :measurement

            sig do
              returns(
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::OrSymbol
              )
            end
            attr_accessor :operator

            sig do
              returns(
                T::Array[
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Value::Variants
                ]
              )
            end
            attr_accessor :value

            sig do
              params(
                measurement: String,
                operator:
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::OrSymbol,
                value:
                  T::Array[
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Value::Variants
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The name of the column.
              measurement:,
              operator:,
              value:
            )
            end

            sig do
              override.returns(
                {
                  measurement: String,
                  operator:
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::OrSymbol,
                  value:
                    T::Array[
                      Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Value::Variants
                    ]
                }
              )
            end
            def to_hash
            end

            module Operator
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONTAINS_NONE =
                T.let(
                  :contains_none,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::TaggedSymbol
                )
              CONTAINS_ANY =
                T.let(
                  :contains_any,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::TaggedSymbol
                )
              CONTAINS_ALL =
                T.let(
                  :contains_all,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::TaggedSymbol
                )
              ONE_OF =
                T.let(
                  :one_of,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::TaggedSymbol
                )
              NONE_OF =
                T.let(
                  :none_of,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Value
              extend Openlayer::Internal::Type::Union

              Variants = T.type_alias { T.any(String, Float) }

              sig do
                override.returns(
                  T::Array[
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::SetColumnFilter::Value::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          class NumericColumnFilter < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter,
                  Openlayer::Internal::AnyHash
                )
              end

            # The name of the column.
            sig { returns(String) }
            attr_accessor :measurement

            sig do
              returns(
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::OrSymbol
              )
            end
            attr_accessor :operator

            sig { returns(T.nilable(Float)) }
            attr_accessor :value

            sig do
              params(
                measurement: String,
                operator:
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::OrSymbol,
                value: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # The name of the column.
              measurement:,
              operator:,
              value:
            )
            end

            sig do
              override.returns(
                {
                  measurement: String,
                  operator:
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::OrSymbol,
                  value: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            module Operator
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GREATER =
                T.let(
                  :">",
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                )
              GREATER_OR_EQUALS =
                T.let(
                  :">=",
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                )
              IS =
                T.let(
                  :is,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                )
              LESS =
                T.let(
                  :"<",
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                )
              LESS_OR_EQUALS =
                T.let(
                  :"<=",
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                )
              NOT_EQUALS =
                T.let(
                  :"!=",
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::NumericColumnFilter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class StringColumnFilter < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter,
                  Openlayer::Internal::AnyHash
                )
              end

            # The name of the column.
            sig { returns(String) }
            attr_accessor :measurement

            sig do
              returns(
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator::OrSymbol
              )
            end
            attr_accessor :operator

            sig do
              returns(
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Value::Variants
              )
            end
            attr_accessor :value

            sig do
              params(
                measurement: String,
                operator:
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator::OrSymbol,
                value:
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Value::Variants
              ).returns(T.attached_class)
            end
            def self.new(
              # The name of the column.
              measurement:,
              operator:,
              value:
            )
            end

            sig do
              override.returns(
                {
                  measurement: String,
                  operator:
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator::OrSymbol,
                  value:
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Value::Variants
                }
              )
            end
            def to_hash
            end

            module Operator
              extend Openlayer::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IS =
                T.let(
                  :is,
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator::TaggedSymbol
                )
              NOT_EQUALS =
                T.let(
                  :"!=",
                  Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module Value
              extend Openlayer::Internal::Type::Union

              Variants = T.type_alias { T.any(String, T::Boolean) }

              sig do
                override.returns(
                  T::Array[
                    Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::StringColumnFilter::Value::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Openlayer::InferencePipelines::RowCreateParams::ColumnFilter::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
