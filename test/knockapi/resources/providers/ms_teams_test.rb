# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Providers::MsTeamsTest < Knockapi::Test::ResourceTest
  def test_check_auth_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.ms_teams.check_auth(
      "channel_id",
      ms_teams_tenant_object: "ms_teams_tenant_object"
    )

    assert_pattern do
      response => Knockapi::Models::Providers::MsTeamCheckAuthResponse
    end

    assert_pattern do
      response => {
        connection: Knockapi::Models::Providers::MsTeamCheckAuthResponse::Connection
      }
    end
  end

  def test_list_channels_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.ms_teams.list_channels(
      "channel_id",
      ms_teams_tenant_object: "ms_teams_tenant_object",
      team_id: "team_id"
    )

    assert_pattern do
      response => Knockapi::Models::Providers::MsTeamListChannelsResponse
    end

    assert_pattern do
      response => {
        ms_teams_channels: ^(Knockapi::ArrayOf[Knockapi::Models::Providers::MsTeamListChannelsResponse::MsTeamsChannel])
      }
    end
  end

  def test_list_teams_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.ms_teams.list_teams(
      "channel_id",
      ms_teams_tenant_object: "ms_teams_tenant_object"
    )

    assert_pattern do
      response => Knockapi::Models::Providers::MsTeamListTeamsResponse
    end

    assert_pattern do
      response => {
        ms_teams_teams: ^(Knockapi::ArrayOf[Knockapi::Models::Providers::MsTeamListTeamsResponse::MsTeamsTeam]),
        skip_token: String | nil
      }
    end
  end

  def test_revoke_access_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.ms_teams.revoke_access(
      "channel_id",
      ms_teams_tenant_object: "ms_teams_tenant_object"
    )

    assert_pattern do
      response => String
    end
  end
end
