# typed: strong

module Knockapi
  module Resources
    class Users
      class Feeds
        # Returns the feed settings for a user.
        sig do
          params(
            user_id: String,
            channel_id: String,
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::Users::FeedGetSettingsResponse)
        end
        def get_settings(
          # The ID for the user that you set when identifying them in Knock.
          user_id,
          # The unique identifier for the channel.
          channel_id,
          request_options: {}
        ); end
        # Returns a paginated list of feed items for a user, including metadata about the
        # feed.
        sig do
          params(
            user_id: String,
            channel_id: String,
            after: String,
            archived: Knockapi::Models::Users::FeedListItemsParams::Archived::OrSymbol,
            before: String,
            has_tenant: T::Boolean,
            page_size: Integer,
            source: String,
            status: Knockapi::Models::Users::FeedListItemsParams::Status::OrSymbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Users::FeedListItemsResponse])
        end
        def list_items(
          # The ID for the user that you set when identifying them in Knock.
          user_id,
          # The unique identifier for the channel.
          channel_id,
          # The cursor to fetch entries after.
          after: nil,
          # The archived status of the feed items.
          archived: nil,
          # The cursor to fetch entries before.
          before: nil,
          # Whether the feed items have a tenant.
          has_tenant: nil,
          # The number of items per page.
          page_size: nil,
          # The source of the feed items.
          source: nil,
          # The status of the feed items.
          status: nil,
          # The tenant associated with the feed items.
          tenant: nil,
          # The trigger data of the feed items (as a JSON string).
          trigger_data: nil,
          # The workflow categories of the feed items.
          workflow_categories: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
