# typed: strong

module Openlayer
  module Models
    module Governance
      class RuleStatRetrieveParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Governance::RuleStatRetrieveParams,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :workspace_id

        # Only include items belonging to this framework.
        sig { returns(T.nilable(String)) }
        attr_reader :framework_id

        sig { params(framework_id: String).void }
        attr_writer :framework_id

        # Only include items that apply to this project.
        sig { returns(T.nilable(String)) }
        attr_reader :project_id

        sig { params(project_id: String).void }
        attr_writer :project_id

        sig do
          params(
            workspace_id: String,
            framework_id: String,
            project_id: String,
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          workspace_id:,
          # Only include items belonging to this framework.
          framework_id: nil,
          # Only include items that apply to this project.
          project_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              workspace_id: String,
              framework_id: String,
              project_id: String,
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
