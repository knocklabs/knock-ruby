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
        def get_settings(user_id, channel_id, request_options: {})
        end

        # Returns a paginated list of feed items for a user, including metadata about the
        #   feed.
        sig do
          params(
            user_id: String,
            channel_id: String,
            after: String,
            archived: Symbol,
            before: String,
            has_tenant: T::Boolean,
            page_size: Integer,
            source: String,
            status: Symbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knockapi::EntriesCursor[Knockapi::Models::Users::FeedListItemsResponse])
        end
        def list_items(
          user_id,
          channel_id,
          after: nil,
          archived: nil,
          before: nil,
          has_tenant: nil,
          page_size: nil,
          source: nil,
          status: nil,
          tenant: nil,
          trigger_data: nil,
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
