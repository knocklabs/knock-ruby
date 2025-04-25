# frozen_string_literal: true

module Knockapi
  module Resources
    class Providers
      class MsTeams
        # Check if a connection to Microsoft Teams has been authorized for a given
        # Microsoft Teams tenant object.
        #
        # @overload check_auth(channel_id, ms_teams_tenant_object:, request_options: {})
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to check.
        #
        # @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
        # private channels are excluded from the results.
        #
        # @overload list_channels(channel_id, ms_teams_tenant_object:, team_id:, query_options: nil, request_options: {})
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to get channels for.
        #
        # @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        # @param team_id [String] Microsoft Teams team ID.
        #
        # @param query_options [Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions]
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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
        # archived and private channels are excluded from the results.
        #
        # @overload list_teams(channel_id, ms_teams_tenant_object:, query_options: nil, request_options: {})
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to get teams for.
        #
        # @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        # @param query_options [Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions]
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Internal::MsTeamsPagination<Knockapi::Models::Providers::MsTeamListTeamsResponse>]
        #
        # @see Knockapi::Models::Providers::MsTeamListTeamsParams
        def list_teams(channel_id, params)
          parsed, options = Knockapi::Models::Providers::MsTeamListTeamsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/providers/ms-teams/%1$s/teams", channel_id],
            query: parsed,
            page: Knockapi::Internal::MsTeamsPagination,
            model: Knockapi::Models::Providers::MsTeamListTeamsResponse,
            options: options
          )
        end

        # Remove a Microsoft Entra tenant ID from a Microsoft Teams tenant object.
        #
        # @overload revoke_access(channel_id, ms_teams_tenant_object:, request_options: {})
        #
        # @param channel_id [String] The ID of the Knock Microsoft Teams channel to revoke access for.
        #
        # @param ms_teams_tenant_object [String] A JSON encoded string containing the Microsoft Teams tenant object reference.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Providers::MsTeamRevokeAccessResponse]
        #
        # @see Knockapi::Models::Providers::MsTeamRevokeAccessParams
        def revoke_access(channel_id, params)
          parsed, options = Knockapi::Models::Providers::MsTeamRevokeAccessParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["v1/providers/ms-teams/%1$s/revoke_access", channel_id],
            query: parsed,
            model: Knockapi::Models::Providers::MsTeamRevokeAccessResponse,
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
