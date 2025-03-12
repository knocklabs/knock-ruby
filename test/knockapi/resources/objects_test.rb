# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::ObjectsTest < Knockapi::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list("collection")

    assert_pattern do
      response => Knockapi::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knockapi::Models::Object
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
      response => ^(Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription])
    end
  end

  def test_delete_subscriptions_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.delete_subscriptions("collection", "object_id", recipients: [{id: "user_1"}])

    assert_pattern do
      response => ^(Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription])
    end
  end

  def test_get
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.get("collection", "object_id")

    assert_pattern do
      response => Knockapi::Models::Object
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
      response => Knockapi::Models::Recipients::RecipientsChannelData
    end

    assert_pattern do
      response => {
        _typename: String,
        channel_id: String,
        data: Knockapi::Models::Recipients::RecipientsChannelData::Data
      }
    end
  end

  def test_get_preferences
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.get_preferences("collection", "object_id", "default")

    assert_pattern do
      response => Knockapi::Models::Recipients::PreferenceSet
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        categories: ^(Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Category]) | nil,
        channel_types: Knockapi::Models::Recipients::PreferenceSetChannelTypes | nil,
        workflows: ^(Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Workflow]) | nil
      }
    end
  end

  def test_list_messages
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list_messages("collection", "object_id")

    assert_pattern do
      response => Knockapi::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knockapi::Models::Message
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actors: ^(Knockapi::ArrayOf[union: Knockapi::Models::Message::Actor]) | nil,
        archived_at: Time | nil,
        channel_id: String | nil,
        clicked_at: Time | nil,
        data: ^(Knockapi::HashOf[Knockapi::Unknown]) | nil,
        engagement_statuses: ^(Knockapi::ArrayOf[enum: Knockapi::Models::Message::EngagementStatus]) | nil,
        inserted_at: Time | nil,
        interacted_at: Time | nil,
        link_clicked_at: Time | nil,
        metadata: ^(Knockapi::HashOf[Knockapi::Unknown]) | nil,
        read_at: Time | nil,
        recipient: Knockapi::Models::Message::Recipient | nil,
        scheduled_at: Time | nil,
        seen_at: Time | nil,
        source: Knockapi::Models::Message::Source | nil,
        status: Knockapi::Models::Message::Status | nil,
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
      response => Knockapi::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knockapi::Models::Schedule
    end

    assert_pattern do
      row => {
        id: String,
        inserted_at: Time,
        recipient: Knockapi::Models::Recipient,
        repeats: ^(Knockapi::ArrayOf[Knockapi::Models::ScheduleRepeatRule]),
        updated_at: Time,
        workflow: String,
        _typename: String | nil,
        actor: Knockapi::Models::Recipient | nil,
        data: ^(Knockapi::HashOf[Knockapi::Unknown]) | nil,
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
      response => Knockapi::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knockapi::Models::Recipients::Subscription
    end

    assert_pattern do
      row => {
        _typename: String,
        inserted_at: Time,
        object: Knockapi::Models::Object,
        recipient: Knockapi::Models::Recipient,
        updated_at: Time,
        properties: ^(Knockapi::HashOf[Knockapi::Unknown]) | nil
      }
    end
  end

  def test_set
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.set("collection", "object_id")

    assert_pattern do
      response => Knockapi::Models::Object
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
      response => Knockapi::Models::Recipients::RecipientsChannelData
    end

    assert_pattern do
      response => {
        _typename: String,
        channel_id: String,
        data: Knockapi::Models::Recipients::RecipientsChannelData::Data
      }
    end
  end

  def test_set_preferences
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.set_preferences("collection", "object_id", "default")

    assert_pattern do
      response => Knockapi::Models::Recipients::PreferenceSet
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        categories: ^(Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Category]) | nil,
        channel_types: Knockapi::Models::Recipients::PreferenceSetChannelTypes | nil,
        workflows: ^(Knockapi::HashOf[union: Knockapi::Models::Recipients::PreferenceSet::Workflow]) | nil
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
