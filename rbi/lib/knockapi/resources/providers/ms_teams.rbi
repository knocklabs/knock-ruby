# typed: strong

module Knockapi
  module Resources
    class Providers
      class MsTeams
        # Check if a connection to Microsoft Teams has been authorized for a given
        #   Microsoft Teams tenant object
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Providers::MsTeamCheckAuthResponse)
        end
        def check_auth(channel_id, ms_teams_tenant_object:, request_options: {})
        end

        # List the Microsoft Teams channels within a team. By default, archived and
        #   private channels are excluded from the results.
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            team_id: String,
            query_options: Knockapi::Models::Providers::MsTeamListChannelsParams::QueryOptions,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Providers::MsTeamListChannelsResponse)
        end
        def list_channels(
          channel_id,
          ms_teams_tenant_object:,
          team_id:,
          query_options: nil,
          request_options: {}
        )
        end

        # Get a list of teams belonging to the Microsoft Entra tenant. By default,
        #   archived and private channels are excluded from the results.
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            query_options: Knockapi::Models::Providers::MsTeamListTeamsParams::QueryOptions,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Providers::MsTeamListTeamsResponse)
        end
        def list_teams(channel_id, ms_teams_tenant_object:, query_options: nil, request_options: {})
        end

        # Remove a Microsoft Entra tenant ID from a Microsoft Teams tenant object
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(String)
        end
        def revoke_access(channel_id, ms_teams_tenant_object:, request_options: {})
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
