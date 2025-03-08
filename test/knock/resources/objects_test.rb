# frozen_string_literal: true

require_relative "../test_helper"

class Knock::Test::Resources::ObjectsTest < Knock::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list("collection")

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Object
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        collection: String,
        updated_at: Time,
        created_at: Time | nil
      }
    end
  end

  def test_delete
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.delete("collection", "object_id")

    assert_pattern do
      response => String
    end
  end

  def test_add_subscriptions_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.add_subscriptions("collection", "object_id", recipients: %w[user_1 user_2])

    assert_pattern do
      response => ^(Knock::ArrayOf[Knock::Models::Subscription])
    end
  end

  def test_delete_subscriptions_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.delete_subscriptions("collection", "object_id", recipients: [{id: "user_1"}])

    assert_pattern do
      response => ^(Knock::ArrayOf[Knock::Models::Subscription])
    end
  end

  def test_get
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.get("collection", "object_id")

    assert_pattern do
      response => Knock::Models::Object
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        collection: String,
        updated_at: Time,
        created_at: Time | nil
      }
    end
  end

  def test_get_channel_data
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.get_channel_data(
      "collection",
      "object_id",
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )

    assert_pattern do
      response => Knock::Models::ChannelData
    end

    assert_pattern do
      response => {
        _typename: String,
        channel_id: String,
        data: Knock::Models::ChannelData::Data
      }
    end
  end

  def test_get_preferences
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.get_preferences("collection", "object_id", "default")

    assert_pattern do
      response => Knock::Models::PreferenceSet
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        categories: ^(Knock::HashOf[union: Knock::Models::PreferenceSet::Category]) | nil,
        channel_types: Knock::Models::PreferenceSetChannelTypes | nil,
        workflows: ^(Knock::HashOf[union: Knock::Models::PreferenceSet::Workflow]) | nil
      }
    end
  end

  def test_list_messages
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list_messages("collection", "object_id")

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Message
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knock::ArrayOf[union: Knock::Models::Message::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        engagement_statuses: ^(Knock::ArrayOf[enum: Knock::Models::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knock::HashOf[Knock::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knock::Models::Message::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knock::Models::Message::Source | nil,
        status: Knock::Models::Message::Status | nil,
        tenant: String | nil,
        updated_at: Time | nil,
        workflow: String | nil
      }
    end
  end

  def test_list_schedules
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list_schedules("collection", "object_id")

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Schedule
    end

    assert_pattern do
      row => {
        id: String,
        inserted_at: Time,
        recipient: Knock::Models::Recipient,
        repeats: ^(Knock::ArrayOf[Knock::Models::ScheduleRepeatRule]),
        updated_at: Time,
        workflow: String,
        _typename: String | nil,
        actor: Knock::Models::Recipient | nil,
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        last_occurrence_at: Time | nil,
        next_occurrence_at: Time | nil,
        tenant: String | nil
      }
    end
  end

  def test_list_subscriptions
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list_subscriptions("collection", "object_id")

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Subscription
    end

    assert_pattern do
      row => {
        _typename: String,
        inserted_at: Time,
        object: Knock::Models::Object,
        recipient: Knock::Models::Recipient,
        updated_at: Time,
        properties: ^(Knock::HashOf[Knock::Unknown]) | nil
      }
    end
  end

  def test_set
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.set("collection", "object_id")

    assert_pattern do
      response => Knock::Models::Object
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        collection: String,
        updated_at: Time,
        created_at: Time | nil
      }
    end
  end

  def test_set_channel_data_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.set_channel_data(
      "collection",
      "object_id",
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      data: {tokens: ["push_token_1"]}
    )

    assert_pattern do
      response => Knock::Models::ChannelData
    end

    assert_pattern do
      response => {
        _typename: String,
        channel_id: String,
        data: Knock::Models::ChannelData::Data
      }
    end
  end

  def test_set_preferences
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.set_preferences("collection", "object_id", "default")

    assert_pattern do
      response => Knock::Models::PreferenceSet
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        categories: ^(Knock::HashOf[union: Knock::Models::PreferenceSet::Category]) | nil,
        channel_types: Knock::Models::PreferenceSetChannelTypes | nil,
        workflows: ^(Knock::HashOf[union: Knock::Models::PreferenceSet::Workflow]) | nil
      }
    end
  end

  def test_unset_channel_data
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.unset_channel_data(
      "collection",
      "object_id",
      "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
    )

    assert_pattern do
      response => String
    end
  end
end
