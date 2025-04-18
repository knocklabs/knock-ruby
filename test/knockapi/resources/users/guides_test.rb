# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Users::GuidesTest < Knockapi::Test::ResourceTest
  def test_get_channel
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.guides.get_channel("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Knockapi::Models::Users::GuideGetChannelResponse
    end

    assert_pattern do
      response => {
        guides: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Users::GuideGetChannelResponse::Guide]),
        recipient: Knockapi::Models::Users::GuideGetChannelResponse::Recipient | nil
      }
    end
  end

  def test_mark_message_as_archived_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.users.guides.mark_message_as_archived(
        "user_id",
        "message_id",
        channel_id: "123e4567-e89b-12d3-a456-426614174000",
        guide_id: "323e4567-e89b-12d3-a456-426614174000",
        guide_key: "guide_12345",
        guide_step_ref: "step_12345"
      )

    assert_pattern do
      response => Knockapi::Models::Users::GuideMarkMessageAsArchivedResponse
    end

    assert_pattern do
      response => {
        status: String
      }
    end
  end

  def test_mark_message_as_interacted_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.users.guides.mark_message_as_interacted(
        "user_id",
        "message_id",
        channel_id: "123e4567-e89b-12d3-a456-426614174000",
        guide_id: "323e4567-e89b-12d3-a456-426614174000",
        guide_key: "guide_12345",
        guide_step_ref: "step_12345"
      )

    assert_pattern do
      response => Knockapi::Models::Users::GuideMarkMessageAsInteractedResponse
    end

    assert_pattern do
      response => {
        status: String
      }
    end
  end

  def test_mark_message_as_seen_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.users.guides.mark_message_as_seen(
        "user_id",
        "message_id",
        channel_id: "123e4567-e89b-12d3-a456-426614174000",
        guide_id: "323e4567-e89b-12d3-a456-426614174000",
        guide_key: "guide_12345",
        guide_step_ref: "step_12345"
      )

    assert_pattern do
      response => Knockapi::Models::Users::GuideMarkMessageAsSeenResponse
    end

    assert_pattern do
      response => {
        status: String
      }
    end
  end
end
