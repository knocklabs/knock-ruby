# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Messages::ActivitiesTest < Knockapi::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.activities.list("message_id")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Models::Activity
    end

    assert_pattern do
      row => {
        id: String | nil,
        _typename: String | nil,
        actor: Knockapi::Models::Recipient | nil,
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        inserted_at: Time | nil,
        recipient: Knockapi::Models::Recipient | nil,
        updated_at: Time | nil
      }
    end
  end
end
