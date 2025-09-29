# typed: strong

module Openlayer
  module Models
    module Projects
      class TestUpdateResponse < Openlayer::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Openlayer::Models::Projects::TestUpdateResponse,
              Openlayer::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :task_result_id

        sig { params(task_result_id: String).void }
        attr_writer :task_result_id

        sig { returns(T.nilable(String)) }
        attr_reader :task_result_url

        sig { params(task_result_url: String).void }
        attr_writer :task_result_url

        sig do
          params(task_result_id: String, task_result_url: String).returns(
            T.attached_class
          )
        end
        def self.new(task_result_id: nil, task_result_url: nil)
        end

        sig do
          override.returns({ task_result_id: String, task_result_url: String })
        end
        def to_hash
        end
      end
    end
  end
end
