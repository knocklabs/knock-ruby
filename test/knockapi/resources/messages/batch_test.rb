# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Messages::BatchTest < Knockapi::Test::ResourceTest
  def test_archive_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.archive(message_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_get_content_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.get_content(message_ids: [{}])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Messages::BatchGetContentResponseItem])
    end
  end

  def test_mark_as_interacted
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.mark_as_interacted

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_read_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.mark_as_read(message_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_seen_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.mark_as_seen(message_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_unread_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.mark_as_unread(message_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_unseen_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.mark_as_unseen(message_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_unarchive_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.unarchive(message_ids: ["182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end
end
