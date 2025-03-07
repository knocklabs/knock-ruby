# frozen_string_literal: true

module Knock
  module Resources
    class Providers
      class MsTeams
        # Check if a connection to Microsoft Teams has been authorized for a given
        #   Microsoft Teams tenant object
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to check
        #
        # @param params [Knock::Models::Providers::MsTeamCheckAuthParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Providers::MsTeamCheckAuthResponse]
        #
        def check_auth(channel_id, params)
          parsed, options = Knock::Models::Providers::MsTeamCheckAuthParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%0s/auth_check", channel_id],
            query: parsed,
            model: Knock::Models::Providers::MsTeamCheckAuthResponse,
            options: options
          )
        end

        # List the Microsoft Teams channels within a team. By default, archived and
        #   private channels are excluded from the results.
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to get channels for
        #
        # @param params [Knock::Models::Providers::MsTeamListChannelsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [String] :team_id The ID of the Microsoft Teams team to list channels from
        #
        #   @option params [Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions] :query_options
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Providers::MsTeamListChannelsResponse]
        #
        def list_channels(channel_id, params)
          parsed, options = Knock::Models::Providers::MsTeamListChannelsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%0s/channels", channel_id],
            query: parsed,
            model: Knock::Models::Providers::MsTeamListChannelsResponse,
            options: options
          )
        end

        # Get a list of teams belonging to the Microsoft Entra tenant. By default,
        #   archived and private channels are excluded from the results.
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to get teams for
        #
        # @param params [Knock::Models::Providers::MsTeamListTeamsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [Knock::Models::Providers::MsTeamListTeamsParams::QueryOptions] :query_options
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Providers::MsTeamListTeamsResponse]
        #
        def list_teams(channel_id, params)
          parsed, options = Knock::Models::Providers::MsTeamListTeamsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%0s/teams", channel_id],
            query: parsed,
            model: Knock::Models::Providers::MsTeamListTeamsResponse,
            options: options
          )
        end

        # Remove a Microsoft Entra tenant ID from a Microsoft Teams tenant object
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to revoke access for
        #
        # @param params [Knock::Models::Providers::MsTeamRevokeAccessParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [String]
        #
        def revoke_access(channel_id, params)
          parsed, options = Knock::Models::Providers::MsTeamRevokeAccessParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/providers/ms-teams/%0s/revoke_access", channel_id],
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
