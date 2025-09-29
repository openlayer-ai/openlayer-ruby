# typed: strong

module Openlayer
  module Models
    module Projects
      class InferencePipelineListParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Projects::InferencePipelineListParams,
              Openlayer::Internal::AnyHash
            )
          end

        # Filter list of items by name.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

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

        sig do
          params(
            name: String,
            page: Integer,
            per_page: Integer,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter list of items by name.
          name: nil,
          # The page to return in a paginated query.
          page: nil,
          # Maximum number of items to return per page.
          per_page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              page: Integer,
              per_page: Integer,
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
