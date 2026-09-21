# typed: strong

module Openlayer
  module Models
    module Governance
      class FrameworkExportParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::FrameworkExportParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :framework_id

        # Scope the export to this project. It must belong to the framework.
        sig { returns(T.nilable(String)) }
        attr_accessor :project_id

        sig do
          params(
            framework_id: String,
            project_id: T.nilable(String),
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          framework_id:,
          # Scope the export to this project. It must belong to the framework.
          project_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              framework_id: String,
              project_id: T.nilable(String),
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
