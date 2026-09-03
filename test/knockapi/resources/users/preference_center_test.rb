# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Users::PreferenceCenterTest < Knockapi::Test::ResourceTest
  def test_generate_signed_url
    response = @knock.users.preference_center.generate_signed_url("user_id")

    assert_pattern do
      response => Knockapi::Models::Users::PreferenceCenterGenerateSignedURLResponse
    end

    assert_pattern do
      response => {
        token: String,
        url: String
      }
    end
  end

  def test_get_config
    response = @knock.users.preference_center.get_config("user_id")

    assert_pattern do
      response => Knockapi::Models::Users::PreferenceCenterGetConfigResponse
    end

    assert_pattern do
      response => {
        account_name: String | nil,
        branding: Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Branding,
        config: Knockapi::Models::Users::PreferenceCenterGetConfigResponse::Config,
        enabled: Knockapi::Internal::Type::Boolean,
        user_email: String | nil,
        knock_branding_required: Knockapi::Internal::Type::Boolean | nil
      }
    end
  end
end
