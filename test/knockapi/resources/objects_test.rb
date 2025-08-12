# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::ObjectsTest < Knockapi::Test::ResourceTest
  def test_list
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.list("collection")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Object
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        collection: String,
        updated_at: Time,
        created_at: Time | nil,
        properties: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_delete
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.delete("collection", "id")

    assert_pattern do
      response => String
    end
  end

  def test_add_subscriptions_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.add_subscriptions("collection", "object_id", recipients: %w[user_1 user_2])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::Subscription])
    end
  end

  def test_delete_subscriptions_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.delete_subscriptions("collection", "object_id", recipients: ["user_123"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::Subscription])
    end
  end

  def test_get
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.get("collection", "id")

    assert_pattern do
      response => Knockapi::Object
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        collection: String,
        updated_at: Time,
        created_at: Time | nil,
        properties: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_get_channel_data
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.objects.get_channel_data("collection", "object_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Knockapi::Recipients::RecipientsChannelData
    end

    assert_pattern do
      response => {
        _typename: String,
        channel_id: String,
        data: Knockapi::Recipients::RecipientsChannelData::Data,
        provider: Knockapi::Recipients::RecipientsChannelData::Provider | nil
      }
    end
  end

  def test_get_preferences
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.get_preferences("collection", "object_id", "default")

    assert_pattern do
      response => Knockapi::Recipients::PreferenceSet
    end

    assert_pattern do
      response => {
        id: String,
        categories: ^(Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Category]) | nil,
        channel_types: Knockapi::Recipients::PreferenceSetChannelTypes | nil,
        workflows: ^(Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Workflow]) | nil
      }
    end
  end

  def test_list_messages
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.list_messages("collection", "id")

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

  def test_list_preferences
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.list_preferences("collection", "object_id")

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PreferenceSet])
    end
  end

  def test_list_schedules
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.list_schedules("collection", "id")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Schedule
    end

    assert_pattern do
      row => {
        id: String,
        inserted_at: Time,
        recipient: Knockapi::Recipient,
        repeats: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::ScheduleRepeatRule]),
        updated_at: Time,
        workflow: String,
        _typename: String | nil,
        actor: Knockapi::Recipient | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        last_occurrence_at: Time | nil,
        next_occurrence_at: Time | nil,
        tenant: String | nil
      }
    end
  end

  def test_list_subscriptions
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.list_subscriptions("collection", "object_id")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Recipients::Subscription
    end

    assert_pattern do
      row => {
        _typename: String,
        inserted_at: Time,
        object: Knockapi::Object,
        recipient: Knockapi::Recipient,
        updated_at: Time,
        properties: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_set
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.set("collection", "id")

    assert_pattern do
      response => Knockapi::Object
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        collection: String,
        updated_at: Time,
        created_at: Time | nil,
        properties: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_set_channel_data_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.objects.set_channel_data(
        "collection",
        "object_id",
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        data: {tokens: ["push_token_1"]}
      )

    assert_pattern do
      response => Knockapi::Recipients::RecipientsChannelData
    end

    assert_pattern do
      response => {
        _typename: String,
        channel_id: String,
        data: Knockapi::Recipients::RecipientsChannelData::Data,
        provider: Knockapi::Recipients::RecipientsChannelData::Provider | nil
      }
    end
  end

  def test_set_preferences
    skip("Prism doesn't support callbacks yet")

    response = @knock.objects.set_preferences("collection", "object_id", "default")

    assert_pattern do
      response => Knockapi::Recipients::PreferenceSet
    end

    assert_pattern do
      response => {
        id: String,
        categories: ^(Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Category]) | nil,
        channel_types: Knockapi::Recipients::PreferenceSetChannelTypes | nil,
        workflows: ^(Knockapi::Internal::Type::HashOf[union: Knockapi::Recipients::PreferenceSet::Workflow]) | nil
      }
    end
  end

  def test_unset_channel_data
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.objects.unset_channel_data("collection", "object_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => String
    end
  end
end
