# typed: strong

module Knock
  module Resources
    class Providers
      class MsTeams
        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Providers::MsTeamCheckAuthResponse)
        end
        def check_auth(channel_id, ms_teams_tenant_object:, request_options: {})
        end

        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            team_id: String,
            query_options: Knock::Models::Providers::MsTeamListChannelsParams::QueryOptions,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Providers::MsTeamListChannelsResponse)
        end
        def list_channels(
          channel_id,
          ms_teams_tenant_object:,
          team_id:,
          query_options: nil,
          request_options: {}
        )
        end

        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            query_options: Knock::Models::Providers::MsTeamListTeamsParams::QueryOptions,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::Providers::MsTeamListTeamsResponse)
        end
        def list_teams(channel_id, ms_teams_tenant_object:, query_options: nil, request_options: {})
        end

        sig do
          params(
            channel_id: String,
            ms_teams_tenant_object: String,
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(String)
        end
        def revoke_access(channel_id, ms_teams_tenant_object:, request_options: {})
        end

        sig { params(client: Knock::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
