# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::UsersTest < Knockapi::Test::ResourceTest
  def test_update
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.update("user_id")

    assert_pattern do
      response => Knockapi::User
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        updated_at: Time,
        avatar: String | nil,
        created_at: Time | nil,
        email: String | nil,
        name: String | nil,
        phone_number: String | nil,
        timezone: String | nil
      }
    end
  end

  def test_list
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.list

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::User
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        updated_at: Time,
        avatar: String | nil,
        created_at: Time | nil,
        email: String | nil,
        name: String | nil,
        phone_number: String | nil,
        timezone: String | nil
      }
    end
  end

  def test_delete
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.delete("user_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.get("user_id")

    assert_pattern do
      response => Knockapi::User
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        updated_at: Time,
        avatar: String | nil,
        created_at: Time | nil,
        email: String | nil,
        name: String | nil,
        phone_number: String | nil,
        timezone: String | nil
      }
    end
  end

  def test_get_channel_data
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.get_channel_data("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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

    response = @knock.users.get_preferences("user_id", "default")

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

    response = @knock.users.list_messages("user-123")

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

  def test_list_preferences
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.list_preferences("user_id")

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PreferenceSet])
    end
  end

  def test_list_schedules
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.list_schedules("user_id")

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

    response = @knock.users.list_subscriptions("user_id")

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

  def test_merge_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.merge("user_id", from_user_id: "user_1")

    assert_pattern do
      response => Knockapi::User
    end

    assert_pattern do
      response => {
        id: String,
        _typename: String,
        updated_at: Time,
        avatar: String | nil,
        created_at: Time | nil,
        email: String | nil,
        name: String | nil,
        phone_number: String | nil,
        timezone: String | nil
      }
    end
  end

  def test_set_channel_data_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.users.set_channel_data(
        "user_id",
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

    response = @knock.users.set_preferences("user_id", "default")

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

    response = @knock.users.unset_channel_data("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
