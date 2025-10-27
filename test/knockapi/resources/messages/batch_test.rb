# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Messages::BatchTest < Knockapi::Test::ResourceTest
  def test_archive_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.messages.batch.archive(
        message_ids: %w[
          2w3YUpTTOxuDvZFji8OMsKrG176
          2w3YVRbPXMIh8Zq6oBFcVDA5xes
        ]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end

  def test_get_content_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.batch.get_content(message_ids: ["string"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Messages::BatchGetContentResponseItem])
    end
  end

  def test_mark_as_interacted_required_params
    skip("Prism doesn't support callbacks yet")

    response = @knock.messages.batch.mark_as_interacted(message_ids: ["1jNaXzB2RZX3LY8wVQnfCKyPnv7"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end

  def test_mark_as_read_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.messages.batch.mark_as_read(
        message_ids: %w[2w3YUpTTOxuDvZFji8OMsKrG176 2w3YVRbPXMIh8Zq6oBFcVDA5xes]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end

  def test_mark_as_seen_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.messages.batch.mark_as_seen(
        message_ids: %w[2w3YUpTTOxuDvZFji8OMsKrG176 2w3YVRbPXMIh8Zq6oBFcVDA5xes]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end

  def test_mark_as_unread_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.messages.batch.mark_as_unread(
        message_ids: %w[2w3YUpTTOxuDvZFji8OMsKrG176 2w3YVRbPXMIh8Zq6oBFcVDA5xes]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end

  def test_mark_as_unseen_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.messages.batch.mark_as_unseen(
        message_ids: %w[2w3YUpTTOxuDvZFji8OMsKrG176 2w3YVRbPXMIh8Zq6oBFcVDA5xes]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end

  def test_unarchive_required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @knock.messages.batch.unarchive(
        message_ids: %w[2w3YUpTTOxuDvZFji8OMsKrG176 2w3YVRbPXMIh8Zq6oBFcVDA5xes]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Message])
    end
  end
end
