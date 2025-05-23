# typed: strong

module Knockapi
  module Resources
    class Providers
      class MsTeams
        # Check if a connection to Microsoft Teams has been authorized for a given
        # Microsoft Teams tenant object.
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::Models::Providers::MsTeamCheckAuthResponse)
        end
        def check_auth(
          # The ID of the Knock Microsoft Teams channel to check.
          channel_id,
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          request_options: {}
        )
        end

        # List the Microsoft Teams channels within a team. By default, archived and
        # private channels are excluded from the results.
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            team_id: String,
            query_options:
              Knockapi::Providers::MsTeamListChannelsParams::QueryOptions::OrHash,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::Models::Providers::MsTeamListChannelsResponse)
        end
        def list_channels(
          # The ID of the Knock Microsoft Teams channel to get channels for.
          channel_id,
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          # Microsoft Teams team ID.
          team_id:,
          query_options: nil,
          request_options: {}
        )
        end

        # Get a list of teams belonging to the Microsoft Entra tenant. By default,
        # archived and private channels are excluded from the results.
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            query_options:
              Knockapi::Providers::MsTeamListTeamsParams::QueryOptions::OrHash,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(
            Knockapi::Internal::MsTeamsPagination[
              Knockapi::Models::Providers::MsTeamListTeamsResponse
            ]
          )
        end
        def list_teams(
          # The ID of the Knock Microsoft Teams channel to get teams for.
          channel_id,
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          query_options: nil,
          request_options: {}
        )
        end

        # Remove a Microsoft Entra tenant ID from a Microsoft Teams tenant object.
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::Models::Providers::MsTeamRevokeAccessResponse)
        end
        def revoke_access(
          # The ID of the Knock Microsoft Teams channel to revoke access for.
          channel_id,
          # A JSON encoded string containing the Microsoft Teams tenant object reference.
          ms_teams_tenant_object:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
