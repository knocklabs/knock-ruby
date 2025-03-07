# frozen_string_literal: true

require_relative "../test_helper"

class Knock::Test::Resources::MessagesTest < Knock::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.list

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::MessageListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageListResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageListResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageListResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageListResponse::Source | nil,
        status: Knock::Models::MessageListResponse::Status | nil,
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
      response => Knock::Models::MessageArchiveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageArchiveResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageArchiveResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageArchiveResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageArchiveResponse::Source | nil,
        status: Knock::Models::MessageArchiveResponse::Status | nil,
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
      response => Knock::Models::MessageGetResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageGetResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageGetResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageGetResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageGetResponse::Source | nil,
        status: Knock::Models::MessageGetResponse::Status | nil,
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
      response => Knock::Models::MessageGetContentResponse
    end

    assert_pattern do
      response => {
        _typename: String,
        data: Knock::Models::MessageGetContentResponse::Data,
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
      response => Knock::ItemsCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::ItemsCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::MessageListActivitiesResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actor: Knock::Models::Recipient | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        inserted_at: Time | nil,
        recipient: Knock::Models::Recipient | nil,
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
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::MessageListDeliveryLogsResponse
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        environment_id: String,
        inserted_at: String,
        request: Knock::Models::MessageListDeliveryLogsResponse::Request,
        response: Knock::Models::MessageListDeliveryLogsResponse::Response,
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
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::MessageListEventsResponse
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        inserted_at: Time,
        recipient: Knock::Models::MessageListEventsResponse::Recipient,
        type: Knock::Models::MessageListEventsResponse::Type,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil
      }
    end
  end

  def test_mark_as_interacted
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.mark_as_interacted("message_id")

    assert_pattern do
      response => Knock::Models::MessageMarkAsInteractedResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageMarkAsInteractedResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageMarkAsInteractedResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageMarkAsInteractedResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageMarkAsInteractedResponse::Source | nil,
        status: Knock::Models::MessageMarkAsInteractedResponse::Status | nil,
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
      response => Knock::Models::MessageMarkAsReadResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageMarkAsReadResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageMarkAsReadResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageMarkAsReadResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageMarkAsReadResponse::Source | nil,
        status: Knock::Models::MessageMarkAsReadResponse::Status | nil,
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
      response => Knock::Models::MessageMarkAsSeenResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageMarkAsSeenResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageMarkAsSeenResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageMarkAsSeenResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageMarkAsSeenResponse::Source | nil,
        status: Knock::Models::MessageMarkAsSeenResponse::Status | nil,
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
      response => Knock::Models::MessageMarkAsUnreadResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageMarkAsUnreadResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageMarkAsUnreadResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageMarkAsUnreadResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageMarkAsUnreadResponse::Source | nil,
        status: Knock::Models::MessageMarkAsUnreadResponse::Status | nil,
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
      response => Knock::Models::MessageMarkAsUnseenResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageMarkAsUnseenResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageMarkAsUnseenResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageMarkAsUnseenResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageMarkAsUnseenResponse::Source | nil,
        status: Knock::Models::MessageMarkAsUnseenResponse::Status | nil,
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
      response => Knock::Models::MessageUnarchiveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::MessageUnarchiveResponse::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::MessageUnarchiveResponse::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::MessageUnarchiveResponse::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::MessageUnarchiveResponse::Source | nil,
        status: Knock::Models::MessageUnarchiveResponse::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end
end
