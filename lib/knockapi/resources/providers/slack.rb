# frozen_string_literal: true

module Knockapi
  module Resources
    class Providers
      class Slack
        # Check if a Slack channel is authenticated.
        #
        # @overload check_auth(channel_id, access_token_object:, request_options: {})
        #
        # @param channel_id [String]
        # @param access_token_object [String]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Providers::SlackCheckAuthResponse]
        #
        # @see Knockapi::Models::Providers::SlackCheckAuthParams
        def check_auth(channel_id, params)
          parsed, options = Knockapi::Models::Providers::SlackCheckAuthParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/slack/%1$s/auth_check", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::SlackCheckAuthResponse,
            options: options
          )
        end

        # List Slack channels for a Slack workspace.
        #
        # @overload list_channels(channel_id, access_token_object:, query_options: nil, request_options: {})
        #
        # @param channel_id [String]
        # @param access_token_object [String]
        # @param query_options [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Internal::SlackChannelsCursor<Knockapi::Models::Providers::SlackListChannelsResponse>]
        #
        # @see Knockapi::Models::Providers::SlackListChannelsParams
        def list_channels(channel_id, params)
          parsed, options = Knockapi::Models::Providers::SlackListChannelsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/slack/%1$s/channels", channel_id],
            query: parsed,
            page: Knockapi::Internal::SlackChannelsCursor,
            model: Knockapi::Models::Providers::SlackListChannelsResponse,
            options: options
          )
        end

        # Revoke access for a Slack channel.
        #
        # @overload revoke_access(channel_id, access_token_object:, request_options: {})
        #
        # @param channel_id [String]
        # @param access_token_object [String]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Providers::SlackRevokeAccessResponse]
        #
        # @see Knockapi::Models::Providers::SlackRevokeAccessParams
        def revoke_access(channel_id, params)
          parsed, options = Knockapi::Models::Providers::SlackRevokeAccessParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/providers/slack/%1$s/revoke_access", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::SlackRevokeAccessResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
