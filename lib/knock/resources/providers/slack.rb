# frozen_string_literal: true

module Knock
  module Resources
    class Providers
      class Slack
        # Check if a Slack channel is authenticated
        #
        # @param channel_id [String] The ID of the Knock Slack channel to check
        #
        # @param params [Knock::Models::Providers::SlackCheckAuthParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :access_token_object A JSON encoded string containing the access token object reference
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Providers::SlackCheckAuthResponse]
        #
        def check_auth(channel_id, params)
          parsed, options = Knock::Models::Providers::SlackCheckAuthParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/slack/%0s/auth_check", channel_id],
            query: parsed,
            model: Knock::Models::Providers::SlackCheckAuthResponse,
            options: options
          )
        end

        # List Slack channels for a Slack workspace
        #
        # @param channel_id [String] The ID of the Knock Slack channel to get channels for
        #
        # @param params [Knock::Models::Providers::SlackListChannelsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :access_token_object A JSON encoded string containing the access token object reference
        #
        #   @option params [Knock::Models::Providers::SlackListChannelsParams::QueryOptions] :query_options
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::SlackChannelsCursor<Knock::Models::Providers::SlackListChannelsResponse>]
        #
        def list_channels(channel_id, params)
          parsed, options = Knock::Models::Providers::SlackListChannelsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/slack/%0s/channels", channel_id],
            query: parsed,
            page: Knock::SlackChannelsCursor,
            model: Knock::Models::Providers::SlackListChannelsResponse,
            options: options
          )
        end

        # Revoke access for a Slack channel
        #
        # @param channel_id [String] The ID of the Knock Slack channel to revoke access for
        #
        # @param params [Knock::Models::Providers::SlackRevokeAccessParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :access_token_object A JSON encoded string containing the access token object reference
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [String]
        #
        def revoke_access(channel_id, params)
          parsed, options = Knock::Models::Providers::SlackRevokeAccessParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/providers/slack/%0s/revoke_access", channel_id],
            query: parsed,
            model: String,
            options: options
          )
        end

        # @param client [Knock::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
