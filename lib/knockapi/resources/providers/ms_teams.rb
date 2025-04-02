# frozen_string_literal: true

module Knockapi
  module Resources
    class Providers
      class MsTeams
        # Check if a connection to Microsoft Teams has been authorized for a given
        #   Microsoft Teams tenant object
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to check
        #
        # @param params [Knockapi::Models::Providers::MsTeamCheckAuthParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::Providers::MsTeamCheckAuthResponse]
        #
        # @see Knockapi::Models::Providers::MsTeamCheckAuthParams
        def check_auth(channel_id, params)
          parsed, options = Knockapi::Models::Providers::MsTeamCheckAuthParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%1$s/auth_check", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::MsTeamCheckAuthResponse,
            options: options
          )
        end

        # List the Microsoft Teams channels within a team. By default, archived and
        #   private channels are excluded from the results.
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to get channels for
        #
        # @param params [Knockapi::Models::Providers::MsTeamListChannelsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [String] :team_id The ID of the Microsoft Teams team to list channels from
        #
        #   @option params [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions] :query_options
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::Providers::MsTeamListChannelsResponse]
        #
        # @see Knockapi::Models::Providers::MsTeamListChannelsParams
        def list_channels(channel_id, params)
          parsed, options = Knockapi::Models::Providers::MsTeamListChannelsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%1$s/channels", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::MsTeamListChannelsResponse,
            options: options
          )
        end

        # Get a list of teams belonging to the Microsoft Entra tenant. By default,
        #   archived and private channels are excluded from the results.
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to get teams for
        #
        # @param params [Knockapi::Models::Providers::MsTeamListTeamsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions] :query_options
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::Providers::MsTeamListTeamsResponse]
        #
        # @see Knockapi::Models::Providers::MsTeamListTeamsParams
        def list_teams(channel_id, params)
          parsed, options = Knockapi::Models::Providers::MsTeamListTeamsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%1$s/teams", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::MsTeamListTeamsResponse,
            options: options
          )
        end

        # Remove a Microsoft Entra tenant ID from a Microsoft Teams tenant object
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to revoke access for
        #
        # @param params [Knockapi::Models::Providers::MsTeamRevokeAccessParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :ms_teams_tenant_object A JSON encoded string containing the Microsoft Teams tenant object reference
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [String]
        #
        # @see Knockapi::Models::Providers::MsTeamRevokeAccessParams
        def revoke_access(channel_id, params)
          parsed, options = Knockapi::Models::Providers::MsTeamRevokeAccessParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/providers/ms-teams/%1$s/revoke_access", channel_id],
            query: parsed,
            model: String,
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
