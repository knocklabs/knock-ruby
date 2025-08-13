# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Providers::SlackTest < Knockapi::Test::ResourceTest
  def test_check_auth_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.providers.slack.check_auth("channel_id", access_token_object: "access_token_object")

    assert_pattern do
      response => Knockapi::Models::Providers::SlackCheckAuthResponse
    end

    assert_pattern do
      response => {
        connection: Knockapi::Models::Providers::SlackCheckAuthResponse::Connection
      }
    end
  end

  def test_list_channels_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.providers.slack.list_channels("channel_id", access_token_object: "access_token_object")

    assert_pattern do
      response => Knockapi::Internal::SlackChannelsCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Models::Providers::SlackListChannelsResponse
    end

    assert_pattern do
      row => {
        id: String,
        context_team_id: String,
        is_im: Knockapi::Internal::Type::Boolean,
        is_private: Knockapi::Internal::Type::Boolean,
        name: String
      }
    end
  end

  def test_revoke_access_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.providers.slack.revoke_access("channel_id", access_token_object: "access_token_object")

    assert_pattern do
      response => Knockapi::Models::Providers::SlackRevokeAccessResponse
    end

    assert_pattern do
      response => {
        ok: String | nil
      }
    end
  end
end
