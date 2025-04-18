# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Messages::BatchTest < Knockapi::Test::ResourceTest
  def test_archive_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.messages.batch.archive(
        message_ids: %w[11111111-1111-1111-1111-111111111111 22222222-2222-2222-2222-222222222222]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_get_content_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.get_content(message_ids: ["string"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Messages::BatchGetContentResponseItem])
    end
  end

  def test_mark_as_interacted_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.batch.mark_as_interacted(message_ids: ["1jNaXzB2RZX3LY8wVQnfCKyPnv7"])

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_read_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.messages.batch.mark_as_read(
        message_ids: %w[11111111-1111-1111-1111-111111111111 22222222-2222-2222-2222-222222222222]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_seen_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.messages.batch.mark_as_seen(
        message_ids: %w[11111111-1111-1111-1111-111111111111 22222222-2222-2222-2222-222222222222]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_unread_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.messages.batch.mark_as_unread(
        message_ids: %w[11111111-1111-1111-1111-111111111111 22222222-2222-2222-2222-222222222222]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_mark_as_unseen_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.messages.batch.mark_as_unseen(
        message_ids: %w[11111111-1111-1111-1111-111111111111 22222222-2222-2222-2222-222222222222]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end

  def test_unarchive_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response =
      @knock.messages.batch.unarchive(
        message_ids: %w[11111111-1111-1111-1111-111111111111 22222222-2222-2222-2222-222222222222]
      )

    assert_pattern do
      response => ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message])
    end
  end
end
