# frozen_string_literal: true

require_relative "../../test_helper"

class Knockapi::Test::Resources::Users::FeedsTest < Knockapi::Test::ResourceTest
  def test_get_settings
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.feeds.get_settings("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Knockapi::Models::Users::FeedGetSettingsResponse
    end

    assert_pattern do
      response => {
        features: Knockapi::Models::Users::FeedGetSettingsResponse::Features
      }
    end
  end

  def test_list_items
    skip("Prism doesn't support callbacks yet")

    response = @knock.users.feeds.list_items("user_id", "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Knockapi::Internal::EntriesCursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Knockapi::Models::Users::FeedListItemsResponse
    end

    assert_pattern do
      row => {
        id: String,
        _typename: String,
        activities: ^(Knockapi::Internal::Type::ArrayOf[Knockapi::Activity]),
        actors: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::Recipient]),
        blocks: ^(Knockapi::Internal::Type::ArrayOf[union: Knockapi::Models::Users::FeedListItemsResponse::Block]),
        data: ^(Knockapi::Internal::Type::HashOf[Knockapi::Internal::Type::Unknown]) | nil,
        inserted_at: String,
        source: Knockapi::Models::Users::FeedListItemsResponse::Source,
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
