# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Users::GuidesTest < Knockapi::Test::ResourceTest
  def test_get_channel
    skip("Prism doesn't support callbacks yet")

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
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.users.guides.mark_message_as_archived(
        "user_id",
        "message_id",
        channel_id: "123e4567-e89b-12d3-a456-426614174000",
        guide_id: "7e9dc78c-b3b1-4127-a54e-71f1899b831a",
        guide_key: "tour_notification",
        guide_step_ref: "lab_tours"
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
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.users.guides.mark_message_as_interacted(
        "user_id",
        "message_id",
        channel_id: "123e4567-e89b-12d3-a456-426614174000",
        guide_id: "7e9dc78c-b3b1-4127-a54e-71f1899b831a",
        guide_key: "tour_notification",
        guide_step_ref: "lab_tours"
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
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.users.guides.mark_message_as_seen(
        "user_id",
        "message_id",
        channel_id: "123e4567-e89b-12d3-a456-426614174000",
        guide_id: "7e9dc78c-b3b1-4127-a54e-71f1899b831a",
        guide_key: "tour_notification",
        guide_step_ref: "lab_tours"
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
