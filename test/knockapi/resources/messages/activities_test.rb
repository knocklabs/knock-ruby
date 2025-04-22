# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Messages::ActivitiesTest < Knockapi::Test::ResourceTest
  def test_list
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.messages.activities.list("message_id")

    assert_pattern do
      response => Knockapi::Models::Messages::ActivityListResponse
    end

    assert_pattern do
      response => {
        entries: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Activity]),
        page_info: Knockapi::Models::PageInfo
      }
    end
  end
end
