# frozen_string_literal: true

require_relative "../../test_helper"

class Knock::Test::Resources::Users::FeedsTest < Knock::Test::ResourceTest
  def test_get_settings
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.feeds.get_settings("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Knock::Models::Users::FeedGetSettingsResponse
    end

    assert_pattern do
      response => {
        features: Knock::Models::Users::FeedGetSettingsResponse::Features
      }
    end
  end

  def test_list_items
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @knock.users.feeds.list_items("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Knock::EntriesCursor
    end

    page = response.next_page
    assert_pattern do
      page => Knock::EntriesCursor
    end

    row = response.to_enum.first
    assert_pattern do
      row => Knock::Models::Users::FeedListItemsResponse
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        activities: ^(Knock::ArrayOf[Knock::Models::Activity]),
        actors: ^(Knock::ArrayOf[union: Knock::Models::Recipient]),
        blocks: ^(Knock::ArrayOf[union: Knock::Models::Users::FeedListItemsResponse::Block]),
        data: ^(Knock::HashOf[Knock::Unknown]) | nil,
        inserted_at: String,
        source: Knock::Models::Users::FeedListItemsResponse::Source,
        tenant: String | nil,
        total_activities: Integer,
        total_actors: Integer,
        updated_at: String,
        archived_at: String | nil,
        clicked_at: String | nil,
        interacted_at: String | nil,
        link_clicked_at: String | nil,
        read_at: String | nil,
        seen_at: String | nil
      }
    end
  end
end
