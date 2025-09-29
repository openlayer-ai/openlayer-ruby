# typed: strong

module Openlayer
  module Models
    module InferencePipelines
      class DataStreamParams < Openlayer::Internal::Type::BaseModel
        extend Openlayer::Internal::Type::RequestParameters::Converter
        include Openlayer::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Openlayer::InferencePipelines::DataStreamParams,
              Openlayer::Internal::AnyHash
            )
          end

        # Configuration for the data stream. Depends on your **Openlayer project task
        # type**.
        sig do
          returns(
            T.any(
              Openlayer::InferencePipelines::DataStreamParams::Config::LlmData,
              Openlayer::InferencePipelines::DataStreamParams::Config::TabularClassificationData,
              Openlayer::InferencePipelines::DataStreamParams::Config::TabularRegressionData,
              Openlayer::InferencePipelines::DataStreamParams::Config::TextClassificationData
            )
          )
        end
        attr_accessor :config

        # A list of inference data points with inputs and outputs
        sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
        attr_accessor :rows

        sig do
          params(
            config:
              T.any(
                Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::OrHash,
                Openlayer::InferencePipelines::DataStreamParams::Config::TabularClassificationData::OrHash,
                Openlayer::InferencePipelines::DataStreamParams::Config::TabularRegressionData::OrHash,
                Openlayer::InferencePipelines::DataStreamParams::Config::TextClassificationData::OrHash
              ),
            rows: T::Array[T::Hash[Symbol, T.anything]],
            request_options: Openlayer::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Configuration for the data stream. Depends on your **Openlayer project task
          # type**.
          config:,
          # A list of inference data points with inputs and outputs
          rows:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              config:
                T.any(
                  Openlayer::InferencePipelines::DataStreamParams::Config::LlmData,
                  Openlayer::InferencePipelines::DataStreamParams::Config::TabularClassificationData,
                  Openlayer::InferencePipelines::DataStreamParams::Config::TabularRegressionData,
                  Openlayer::InferencePipelines::DataStreamParams::Config::TextClassificationData
                ),
              rows: T::Array[T::Hash[Symbol, T.anything]],
              request_options: Openlayer::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Configuration for the data stream. Depends on your **Openlayer project task
        # type**.
        module Config
          extend Openlayer::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Openlayer::InferencePipelines::DataStreamParams::Config::LlmData,
                Openlayer::InferencePipelines::DataStreamParams::Config::TabularClassificationData,
                Openlayer::InferencePipelines::DataStreamParams::Config::TabularRegressionData,
                Openlayer::InferencePipelines::DataStreamParams::Config::TextClassificationData
              )
            end

          class LlmData < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::DataStreamParams::Config::LlmData,
                  Openlayer::Internal::AnyHash
                )
              end

            # Name of the column with the model outputs.
            sig { returns(String) }
            attr_accessor :output_column_name

            # Name of the column with the context retrieved. Applies to RAG use cases.
            # Providing the context enables RAG-specific metrics.
            sig { returns(T.nilable(String)) }
            attr_reader :context_column_name

            sig { params(context_column_name: String).void }
            attr_writer :context_column_name

            # Name of the column with the cost associated with each row.
            sig { returns(T.nilable(String)) }
            attr_reader :cost_column_name

            sig { params(cost_column_name: String).void }
            attr_writer :cost_column_name

            # Name of the column with the ground truths.
            sig { returns(T.nilable(String)) }
            attr_reader :ground_truth_column_name

            sig { params(ground_truth_column_name: String).void }
            attr_writer :ground_truth_column_name

            # Name of the column with the inference ids. This is useful if you want to update
            # rows at a later point in time. If not provided, a unique id is generated by
            # Openlayer.
            sig { returns(T.nilable(String)) }
            attr_reader :inference_id_column_name

            sig { params(inference_id_column_name: String).void }
            attr_writer :inference_id_column_name

            # Array of input variable names. Each input variable should be a dataset column.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :input_variable_names

            sig { params(input_variable_names: T::Array[String]).void }
            attr_writer :input_variable_names

            # Name of the column with the latencies.
            sig { returns(T.nilable(String)) }
            attr_reader :latency_column_name

            sig { params(latency_column_name: String).void }
            attr_writer :latency_column_name

            # Object with metadata.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :metadata

            sig { params(metadata: T.anything).void }
            attr_writer :metadata

            # Name of the column with the total number of tokens.
            sig { returns(T.nilable(String)) }
            attr_accessor :num_of_token_column_name

            # Prompt for the LLM.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::Prompt
                  ]
                )
              )
            end
            attr_reader :prompt

            sig do
              params(
                prompt:
                  T::Array[
                    Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::Prompt::OrHash
                  ]
              ).void
            end
            attr_writer :prompt

            # Name of the column with the questions. Applies to RAG use cases. Providing the
            # question enables RAG-specific metrics.
            sig { returns(T.nilable(String)) }
            attr_reader :question_column_name

            sig { params(question_column_name: String).void }
            attr_writer :question_column_name

            # Name of the column with the session id.
            sig { returns(T.nilable(String)) }
            attr_accessor :session_id_column_name

            # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            # If not provided, the upload timestamp is used.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp_column_name

            sig { params(timestamp_column_name: String).void }
            attr_writer :timestamp_column_name

            # Name of the column with the user id.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_id_column_name

            sig do
              params(
                output_column_name: String,
                context_column_name: String,
                cost_column_name: String,
                ground_truth_column_name: String,
                inference_id_column_name: String,
                input_variable_names: T::Array[String],
                latency_column_name: String,
                metadata: T.anything,
                num_of_token_column_name: T.nilable(String),
                prompt:
                  T::Array[
                    Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::Prompt::OrHash
                  ],
                question_column_name: String,
                session_id_column_name: T.nilable(String),
                timestamp_column_name: String,
                user_id_column_name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Name of the column with the model outputs.
              output_column_name:,
              # Name of the column with the context retrieved. Applies to RAG use cases.
              # Providing the context enables RAG-specific metrics.
              context_column_name: nil,
              # Name of the column with the cost associated with each row.
              cost_column_name: nil,
              # Name of the column with the ground truths.
              ground_truth_column_name: nil,
              # Name of the column with the inference ids. This is useful if you want to update
              # rows at a later point in time. If not provided, a unique id is generated by
              # Openlayer.
              inference_id_column_name: nil,
              # Array of input variable names. Each input variable should be a dataset column.
              input_variable_names: nil,
              # Name of the column with the latencies.
              latency_column_name: nil,
              # Object with metadata.
              metadata: nil,
              # Name of the column with the total number of tokens.
              num_of_token_column_name: nil,
              # Prompt for the LLM.
              prompt: nil,
              # Name of the column with the questions. Applies to RAG use cases. Providing the
              # question enables RAG-specific metrics.
              question_column_name: nil,
              # Name of the column with the session id.
              session_id_column_name: nil,
              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              timestamp_column_name: nil,
              # Name of the column with the user id.
              user_id_column_name: nil
            )
            end

            sig do
              override.returns(
                {
                  output_column_name: String,
                  context_column_name: String,
                  cost_column_name: String,
                  ground_truth_column_name: String,
                  inference_id_column_name: String,
                  input_variable_names: T::Array[String],
                  latency_column_name: String,
                  metadata: T.anything,
                  num_of_token_column_name: T.nilable(String),
                  prompt:
                    T::Array[
                      Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::Prompt
                    ],
                  question_column_name: String,
                  session_id_column_name: T.nilable(String),
                  timestamp_column_name: String,
                  user_id_column_name: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Prompt < Openlayer::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Openlayer::InferencePipelines::DataStreamParams::Config::LlmData::Prompt,
                    Openlayer::Internal::AnyHash
                  )
                end

              # Content of the prompt.
              sig { returns(T.nilable(String)) }
              attr_reader :content

              sig { params(content: String).void }
              attr_writer :content

              # Role of the prompt.
              sig { returns(T.nilable(String)) }
              attr_reader :role

              sig { params(role: String).void }
              attr_writer :role

              sig do
                params(content: String, role: String).returns(T.attached_class)
              end
              def self.new(
                # Content of the prompt.
                content: nil,
                # Role of the prompt.
                role: nil
              )
              end

              sig { override.returns({ content: String, role: String }) }
              def to_hash
              end
            end
          end

          class TabularClassificationData < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::DataStreamParams::Config::TabularClassificationData,
                  Openlayer::Internal::AnyHash
                )
              end

            # List of class names indexed by label integer in the dataset. E.g. ["Retained",
            # "Exited"] when 0, 1 are in your label column.
            sig { returns(T::Array[String]) }
            attr_accessor :class_names

            # Array with the names of all categorical features in the dataset. E.g. ["Age",
            # "Geography"].
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :categorical_feature_names

            sig { params(categorical_feature_names: T::Array[String]).void }
            attr_writer :categorical_feature_names

            # Array with all input feature names.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :feature_names

            sig { params(feature_names: T::Array[String]).void }
            attr_writer :feature_names

            # Name of the column with the inference ids. This is useful if you want to update
            # rows at a later point in time. If not provided, a unique id is generated by
            # Openlayer.
            sig { returns(T.nilable(String)) }
            attr_reader :inference_id_column_name

            sig { params(inference_id_column_name: String).void }
            attr_writer :inference_id_column_name

            # Name of the column with the labels. The data in this column must be
            # **zero-indexed integers**, matching the list provided in `classNames`.
            sig { returns(T.nilable(String)) }
            attr_reader :label_column_name

            sig { params(label_column_name: String).void }
            attr_writer :label_column_name

            # Name of the column with the latencies.
            sig { returns(T.nilable(String)) }
            attr_reader :latency_column_name

            sig { params(latency_column_name: String).void }
            attr_writer :latency_column_name

            # Object with metadata.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :metadata

            sig { params(metadata: T.anything).void }
            attr_writer :metadata

            # Name of the column with the model's predictions as **zero-indexed integers**.
            sig { returns(T.nilable(String)) }
            attr_reader :predictions_column_name

            sig { params(predictions_column_name: String).void }
            attr_writer :predictions_column_name

            # Name of the column with the model's predictions as **lists of class
            # probabilities**.
            sig { returns(T.nilable(String)) }
            attr_reader :prediction_scores_column_name

            sig { params(prediction_scores_column_name: String).void }
            attr_writer :prediction_scores_column_name

            # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            # If not provided, the upload timestamp is used.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp_column_name

            sig { params(timestamp_column_name: String).void }
            attr_writer :timestamp_column_name

            sig do
              params(
                class_names: T::Array[String],
                categorical_feature_names: T::Array[String],
                feature_names: T::Array[String],
                inference_id_column_name: String,
                label_column_name: String,
                latency_column_name: String,
                metadata: T.anything,
                predictions_column_name: String,
                prediction_scores_column_name: String,
                timestamp_column_name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # List of class names indexed by label integer in the dataset. E.g. ["Retained",
              # "Exited"] when 0, 1 are in your label column.
              class_names:,
              # Array with the names of all categorical features in the dataset. E.g. ["Age",
              # "Geography"].
              categorical_feature_names: nil,
              # Array with all input feature names.
              feature_names: nil,
              # Name of the column with the inference ids. This is useful if you want to update
              # rows at a later point in time. If not provided, a unique id is generated by
              # Openlayer.
              inference_id_column_name: nil,
              # Name of the column with the labels. The data in this column must be
              # **zero-indexed integers**, matching the list provided in `classNames`.
              label_column_name: nil,
              # Name of the column with the latencies.
              latency_column_name: nil,
              # Object with metadata.
              metadata: nil,
              # Name of the column with the model's predictions as **zero-indexed integers**.
              predictions_column_name: nil,
              # Name of the column with the model's predictions as **lists of class
              # probabilities**.
              prediction_scores_column_name: nil,
              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              timestamp_column_name: nil
            )
            end

            sig do
              override.returns(
                {
                  class_names: T::Array[String],
                  categorical_feature_names: T::Array[String],
                  feature_names: T::Array[String],
                  inference_id_column_name: String,
                  label_column_name: String,
                  latency_column_name: String,
                  metadata: T.anything,
                  predictions_column_name: String,
                  prediction_scores_column_name: String,
                  timestamp_column_name: String
                }
              )
            end
            def to_hash
            end
          end

          class TabularRegressionData < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::DataStreamParams::Config::TabularRegressionData,
                  Openlayer::Internal::AnyHash
                )
              end

            # Array with the names of all categorical features in the dataset. E.g. ["Gender",
            # "Geography"].
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :categorical_feature_names

            sig { params(categorical_feature_names: T::Array[String]).void }
            attr_writer :categorical_feature_names

            # Array with all input feature names.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :feature_names

            sig { params(feature_names: T::Array[String]).void }
            attr_writer :feature_names

            # Name of the column with the inference ids. This is useful if you want to update
            # rows at a later point in time. If not provided, a unique id is generated by
            # Openlayer.
            sig { returns(T.nilable(String)) }
            attr_reader :inference_id_column_name

            sig { params(inference_id_column_name: String).void }
            attr_writer :inference_id_column_name

            # Name of the column with the latencies.
            sig { returns(T.nilable(String)) }
            attr_reader :latency_column_name

            sig { params(latency_column_name: String).void }
            attr_writer :latency_column_name

            # Object with metadata.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :metadata

            sig { params(metadata: T.anything).void }
            attr_writer :metadata

            # Name of the column with the model's predictions.
            sig { returns(T.nilable(String)) }
            attr_reader :predictions_column_name

            sig { params(predictions_column_name: String).void }
            attr_writer :predictions_column_name

            # Name of the column with the targets (ground truth values).
            sig { returns(T.nilable(String)) }
            attr_reader :target_column_name

            sig { params(target_column_name: String).void }
            attr_writer :target_column_name

            # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            # If not provided, the upload timestamp is used.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp_column_name

            sig { params(timestamp_column_name: String).void }
            attr_writer :timestamp_column_name

            sig do
              params(
                categorical_feature_names: T::Array[String],
                feature_names: T::Array[String],
                inference_id_column_name: String,
                latency_column_name: String,
                metadata: T.anything,
                predictions_column_name: String,
                target_column_name: String,
                timestamp_column_name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Array with the names of all categorical features in the dataset. E.g. ["Gender",
              # "Geography"].
              categorical_feature_names: nil,
              # Array with all input feature names.
              feature_names: nil,
              # Name of the column with the inference ids. This is useful if you want to update
              # rows at a later point in time. If not provided, a unique id is generated by
              # Openlayer.
              inference_id_column_name: nil,
              # Name of the column with the latencies.
              latency_column_name: nil,
              # Object with metadata.
              metadata: nil,
              # Name of the column with the model's predictions.
              predictions_column_name: nil,
              # Name of the column with the targets (ground truth values).
              target_column_name: nil,
              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              timestamp_column_name: nil
            )
            end

            sig do
              override.returns(
                {
                  categorical_feature_names: T::Array[String],
                  feature_names: T::Array[String],
                  inference_id_column_name: String,
                  latency_column_name: String,
                  metadata: T.anything,
                  predictions_column_name: String,
                  target_column_name: String,
                  timestamp_column_name: String
                }
              )
            end
            def to_hash
            end
          end

          class TextClassificationData < Openlayer::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Openlayer::InferencePipelines::DataStreamParams::Config::TextClassificationData,
                  Openlayer::Internal::AnyHash
                )
              end

            # List of class names indexed by label integer in the dataset. E.g. ["Retained",
            # "Exited"] when 0, 1 are in your label column.
            sig { returns(T::Array[String]) }
            attr_accessor :class_names

            # Name of the column with the inference ids. This is useful if you want to update
            # rows at a later point in time. If not provided, a unique id is generated by
            # Openlayer.
            sig { returns(T.nilable(String)) }
            attr_reader :inference_id_column_name

            sig { params(inference_id_column_name: String).void }
            attr_writer :inference_id_column_name

            # Name of the column with the labels. The data in this column must be
            # **zero-indexed integers**, matching the list provided in `classNames`.
            sig { returns(T.nilable(String)) }
            attr_reader :label_column_name

            sig { params(label_column_name: String).void }
            attr_writer :label_column_name

            # Name of the column with the latencies.
            sig { returns(T.nilable(String)) }
            attr_reader :latency_column_name

            sig { params(latency_column_name: String).void }
            attr_writer :latency_column_name

            # Object with metadata.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :metadata

            sig { params(metadata: T.anything).void }
            attr_writer :metadata

            # Name of the column with the model's predictions as **zero-indexed integers**.
            sig { returns(T.nilable(String)) }
            attr_reader :predictions_column_name

            sig { params(predictions_column_name: String).void }
            attr_writer :predictions_column_name

            # Name of the column with the model's predictions as **lists of class
            # probabilities**.
            sig { returns(T.nilable(String)) }
            attr_reader :prediction_scores_column_name

            sig { params(prediction_scores_column_name: String).void }
            attr_writer :prediction_scores_column_name

            # Name of the column with the text data.
            sig { returns(T.nilable(String)) }
            attr_reader :text_column_name

            sig { params(text_column_name: String).void }
            attr_writer :text_column_name

            # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
            # If not provided, the upload timestamp is used.
            sig { returns(T.nilable(String)) }
            attr_reader :timestamp_column_name

            sig { params(timestamp_column_name: String).void }
            attr_writer :timestamp_column_name

            sig do
              params(
                class_names: T::Array[String],
                inference_id_column_name: String,
                label_column_name: String,
                latency_column_name: String,
                metadata: T.anything,
                predictions_column_name: String,
                prediction_scores_column_name: String,
                text_column_name: String,
                timestamp_column_name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # List of class names indexed by label integer in the dataset. E.g. ["Retained",
              # "Exited"] when 0, 1 are in your label column.
              class_names:,
              # Name of the column with the inference ids. This is useful if you want to update
              # rows at a later point in time. If not provided, a unique id is generated by
              # Openlayer.
              inference_id_column_name: nil,
              # Name of the column with the labels. The data in this column must be
              # **zero-indexed integers**, matching the list provided in `classNames`.
              label_column_name: nil,
              # Name of the column with the latencies.
              latency_column_name: nil,
              # Object with metadata.
              metadata: nil,
              # Name of the column with the model's predictions as **zero-indexed integers**.
              predictions_column_name: nil,
              # Name of the column with the model's predictions as **lists of class
              # probabilities**.
              prediction_scores_column_name: nil,
              # Name of the column with the text data.
              text_column_name: nil,
              # Name of the column with the timestamps. Timestamps must be in UNIX sec format.
              # If not provided, the upload timestamp is used.
              timestamp_column_name: nil
            )
            end

            sig do
              override.returns(
                {
                  class_names: T::Array[String],
                  inference_id_column_name: String,
                  label_column_name: String,
                  latency_column_name: String,
                  metadata: T.anything,
                  predictions_column_name: String,
                  prediction_scores_column_name: String,
                  text_column_name: String,
                  timestamp_column_name: String
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Openlayer::InferencePipelines::DataStreamParams::Config::Variants
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
