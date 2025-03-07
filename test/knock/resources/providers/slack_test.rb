# frozen_string_literal: true

require_relative "../../test_helper"

class Knock::Test::Resources::Providers::SlackTest < Knock::Test::ResourceTest
  def test_check_auth_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.slack.check_auth("channel_id", access_token_object: "access_token_object")

    assert_pattern do
      response => Knock::Models::Providers::SlackCheckAuthResponse
    end

    assert_pattern do
      response => {
        connection: Knock::Models::Providers::SlackCheckAuthResponse::Connection
      }
    end
  end

  def test_list_channels_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.slack.list_channels("channel_id", access_token_object: "access_token_object")

    assert_pattern do
      response => Knock::SlackChannelsCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::SlackChannelsCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Providers::SlackListChannelsResponse
    end

    assert_pattern do
      row => {
        id: String,
        context_team_id: String,
        is_im: Knock::BooleanModel,
        is_private: Knock::BooleanModel,
        name: String
      }
    end
  end

  def test_revoke_access_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.providers.slack.revoke_access("channel_id", access_token_object: "access_token_object")

    assert_pattern do
      response => String
    end
  end
end
