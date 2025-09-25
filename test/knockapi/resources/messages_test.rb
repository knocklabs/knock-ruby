# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::MessagesTest < Knockapi::Test::ResourceTest
  def test_list
    skip("Prism doesn't support callbacks yet")

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
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_archive
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.archive("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_get
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.get("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_get_content
    skip("Prism doesn't support callbacks yet")

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
    skip("Prism doesn't support callbacks yet")

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
    skip("Prism doesn't support callbacks yet")

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
    skip("Prism doesn't support callbacks yet")

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
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.mark_as_interacted("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_read
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.mark_as_read("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_seen
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.mark_as_seen("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_unread
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.mark_as_unread("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_mark_as_unseen
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.mark_as_unseen("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end

  def test_unarchive
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.unarchive("1jNaXzB2RZX3LY8wVQnfCKyPnv7")

    assert_pattern do
      response => Knockapi::Message
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        channel_id: String,
        engagement_statuses: ^(Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Message::EngagementStatus]),
        inserted_at: Time,
        recipient: Knockapi::RecipientReference,
        source: Knockapi::Message::Source,
        status: Knockapi::Message::Status,
        updated_at: Time,
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::RecipientReference]) | nil,
        archived_at: Time | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        read_at: Time | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        tenant: String | nil,
        workflow: String | nil
      }
    end
  end
end
