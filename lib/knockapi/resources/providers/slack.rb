# frozen_string_literal: true

module Knockapi
  module Resources
    class Providers
      class Slack
        # Check if a Slack channel is authenticated
        #
        # @param channel_id [String] The ID of the Knock Slack channel to check
        #
        # @param params [Knockapi::Models::Providers::SlackCheckAuthParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :access_token_object A JSON encoded string containing the access token object reference
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::Providers::SlackCheckAuthResponse]
        #
        def check_auth(channel_id, params)
          parsed, options = Knockapi::Models::Providers::SlackCheckAuthParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/slack/%0s/auth_check", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::SlackCheckAuthResponse,
            options: options
          )
        end

        # List Slack channels for a Slack workspace
        #
        # @param channel_id [String] The ID of the Knock Slack channel to get channels for
        #
        # @param params [Knockapi::Models::Providers::SlackListChannelsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :access_token_object A JSON encoded string containing the access token object reference
        #
        #   @option params [Knockapi::Models::Providers::SlackListChannelsParams::QueryOptions] :query_options
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::SlackChannelsCursor<Knockapi::Models::Providers::SlackListChannelsResponse>]
        #
        def list_channels(channel_id, params)
          parsed, options = Knockapi::Models::Providers::SlackListChannelsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/slack/%0s/channels", channel_id],
            query: parsed,
            page: Knockapi::SlackChannelsCursor,
            model: Knockapi::Models::Providers::SlackListChannelsResponse,
            options: options
          )
        end

        # Revoke access for a Slack channel
        #
        # @param channel_id [String] The ID of the Knock Slack channel to revoke access for
        #
        # @param params [Knockapi::Models::Providers::SlackRevokeAccessParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :access_token_object A JSON encoded string containing the access token object reference
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [String]
        #
        def revoke_access(channel_id, params)
          parsed, options = Knockapi::Models::Providers::SlackRevokeAccessParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/providers/slack/%0s/revoke_access", channel_id],
            query: parsed,
            model: String,
            options: options
          )
        end

        # @param client [Knockapi::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
