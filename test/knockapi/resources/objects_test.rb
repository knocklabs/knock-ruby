# frozen_string_literal: true

require_relative "../test_helper"

class Knockapi::Test::Resources::ObjectsTest < Knockapi::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list("collection")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

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

  def test_add_subscriptions_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.add_subscriptions("collection", "object_id", recipients: %w[user_1 user_2])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::Subscription])
    end
  end

  def test_delete_subscriptions_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.delete_subscriptions("collection", "object_id", recipients: [{id: "user_1"}])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::Subscription])
    end
  end

  def test_get_channel_data
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.objects.get_channel_data("collection", "object_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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

  def test_list_subscriptions
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.objects.list_subscriptions("collection", "object_id")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

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
        properties: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_set_channel_data
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.objects.set_channel_data("collection", "object_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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

  def test_unset_channel_data
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.objects.unset_channel_data("collection", "object_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => String
    end
  end
end
