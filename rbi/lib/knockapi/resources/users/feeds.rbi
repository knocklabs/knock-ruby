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
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::Models::Users::FeedGetSettingsResponse)
        end
        def get_settings(
          # The user ID
          user_id,
          # The channel ID
          channel_id,
          request_options: {}
        )
        end

        # Returns a paginated list of feed items for a user, including metadata about the
        #   feed.
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
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::EntriesCursor[Knockapi::Models::Users::FeedListItemsResponse])
        end
        def list_items(
          # The user ID
          user_id,
          # The channel ID
          channel_id,
          # The cursor to fetch entries after
          after: nil,
          # The archived status of the feed items to return
          archived: nil,
          # The cursor to fetch entries before
          before: nil,
          # Whether the feed items have a tenant
          has_tenant: nil,
          # The page size to fetch
          page_size: nil,
          # The source of the feed items to return
          source: nil,
          # The status of the feed items to return
          status: nil,
          # The tenant of the feed items to return
          tenant: nil,
          # The trigger data of the feed items to return (as a JSON string)
          trigger_data: nil,
          # The workflow categories of the feed items to return
          workflow_categories: nil,
          request_options: {}
        )
        end

        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
