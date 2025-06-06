# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::MessagesTest < Knockapi::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.list

    assert_pattern do
      response => Knockapi::Internal::ItemsCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Message
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_archive
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.archive("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_get
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.get("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_get_content
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.get_content("message_id")

    assert_pattern do
      response => Knockapi::Models::MessageGetContentResponse
    end

    assert_pattern do
      response => {
        _typename: String,
        data: Knockapi::Models::MessageGetContentResponse::Data,
        inserted_at: Time,
        message_id: String
      }
    end
  end

  def test_list_activities
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.list_activities("message_id")

    assert_pattern do
      response => Knockapi::Internal::ItemsCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Activity
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actor: Knockapi::Recipient | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        inserted_at: Time | nil,
        recipient: Knockapi::Recipient | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list_delivery_logs
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.list_delivery_logs("message_id")

    assert_pattern do
      response => Knockapi::Internal::ItemsCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::MessageDeliveryLog
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        environment_id: String,
        inserted_at: String,
        request: Knockapi::MessageDeliveryLog::Request,
        response: Knockapi::MessageDeliveryLog::Response,
        service_name: String
      }
    end
  end

  def test_list_events
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.list_events("message_id")

    assert_pattern do
      response => Knockapi::Internal::ItemsCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::MessageEvent
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        type: Knockapi::MessageEvent::Type,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_mark_as_interacted
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.mark_as_interacted("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_read
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.mark_as_read("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_seen
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.mark_as_seen("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_unread
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.mark_as_unread("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_unseen
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.mark_as_unseen("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_unarchive
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.unarchive("message_id")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::RecipientReference | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Message::Source | nil,
        status: Knockapi::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end
end
