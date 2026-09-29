# frozen_string_literal: true

module Openlayer
  module Resources
    class Workspaces
      class APIKeys
        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Workspaces::APIKeyCreateParams} for more details.
        #
        # Create a new API key.
        #
        # @overload create(workspace_id, expires_at: nil, name: nil, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param expires_at [Time, nil] When the key stops authenticating. `null` means the key never expires. Set when
        #
        # @param name [String, nil] The API key name.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::APIKeyCreateResponse]
        #
        # @see Openlayer::Models::Workspaces::APIKeyCreateParams
        def create(workspace_id, params = {})
          parsed, options = Openlayer::Workspaces::APIKeyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["workspaces/%1$s/api-keys", workspace_id],
            body: parsed,
            model: Openlayer::Models::Workspaces::APIKeyCreateResponse,
            options: options
          )
        end

        # Retrieve an API key.
        #
        # @overload retrieve(api_key_id, workspace_id:, request_options: {})
        #
        # @param api_key_id [String] The API key id.
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::APIKeyRetrieveResponse]
        #
        # @see Openlayer::Models::Workspaces::APIKeyRetrieveParams
        def retrieve(api_key_id, params)
          parsed, options = Openlayer::Workspaces::APIKeyRetrieveParams.dump_request(params)
          workspace_id =
            parsed.delete(:workspace_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/api-keys/%2$s", workspace_id, api_key_id],
            model: Openlayer::Models::Workspaces::APIKeyRetrieveResponse,
            options: options
          )
        end

        # Rename an API key.
        #
        # @overload update(api_key_id, workspace_id:, name: nil, request_options: {})
        #
        # @param api_key_id [String] Path param: The API key id.
        #
        # @param workspace_id [String] Path param: The workspace id.
        #
        # @param name [String, nil] Body param: The API key name.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::APIKeyUpdateResponse]
        #
        # @see Openlayer::Models::Workspaces::APIKeyUpdateParams
        def update(api_key_id, params)
          parsed, options = Openlayer::Workspaces::APIKeyUpdateParams.dump_request(params)
          workspace_id =
            parsed.delete(:workspace_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["workspaces/%1$s/api-keys/%2$s", workspace_id, api_key_id],
            body: parsed,
            model: Openlayer::Models::Workspaces::APIKeyUpdateResponse,
            options: options
          )
        end

        # List your API keys in a workspace.
        #
        # @overload list(workspace_id, request_options: {})
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Openlayer::Models::Workspaces::APIKeyListResponseItem>]
        #
        # @see Openlayer::Models::Workspaces::APIKeyListParams
        def list(workspace_id, params = {})
          @client.request(
            method: :get,
            path: ["workspaces/%1$s/api-keys", workspace_id],
            model: Openlayer::Internal::Type::ArrayOf[Openlayer::Models::Workspaces::APIKeyListResponseItem],
            options: params[:request_options]
          )
        end

        # Delete an API key.
        #
        # @overload delete(api_key_id, workspace_id:, request_options: {})
        #
        # @param api_key_id [String] The API key id.
        #
        # @param workspace_id [String] The workspace id.
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Openlayer::Models::Workspaces::APIKeyDeleteParams
        def delete(api_key_id, params)
          parsed, options = Openlayer::Workspaces::APIKeyDeleteParams.dump_request(params)
          workspace_id =
            parsed.delete(:workspace_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["workspaces/%1$s/api-keys/%2$s", workspace_id, api_key_id],
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Openlayer::Models::Workspaces::APIKeyRotateParams} for more details.
        #
        # Replace an API key's secret.
        #
        # @overload rotate(api_key_id, workspace_id:, expires_at: nil, grace_period_hours: nil, request_options: {})
        #
        # @param api_key_id [String] Path param: The API key id.
        #
        # @param workspace_id [String] Path param: The workspace id.
        #
        # @param expires_at [Time, nil] Body param: When the key stops authenticating. `null` means the key never expire
        #
        # @param grace_period_hours [Integer] Body param: Hours the previous secret keeps authenticating. The default of 0 ret
        #
        # @param request_options [Openlayer::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Openlayer::Models::Workspaces::APIKeyRotateResponse]
        #
        # @see Openlayer::Models::Workspaces::APIKeyRotateParams
        def rotate(api_key_id, params)
          parsed, options = Openlayer::Workspaces::APIKeyRotateParams.dump_request(params)
          workspace_id =
            parsed.delete(:workspace_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["workspaces/%1$s/api-keys/%2$s/rotate", workspace_id, api_key_id],
            body: parsed,
            model: Openlayer::Models::Workspaces::APIKeyRotateResponse,
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
