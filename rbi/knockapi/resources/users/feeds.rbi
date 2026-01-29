# typed: strong

module Knockapi
  module Resources
    class Users
      class Feeds
        # Returns the feed settings for a user.
        sig do
          params(
            user_id: String,
            id: String,
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(Knockapi::Models::Users::FeedGetSettingsResponse)
        end
        def get_settings(
          # The unique identifier of the user.
          user_id,
          # The unique identifier for the channel.
          id,
          request_options: {}
        )
        end

        # Returns a paginated list of feed items for a user in reverse chronological
        # order, including metadata about the feed. If the user has not yet been
        # identified within Knock, an empty feed will be returned.
        #
        # You can customize the response using
        # [response filters](/integrations/in-app/knock#customizing-api-response-content)
        # to exclude or only include specific properties on your resources.
        #
        # **Notes:**
        #
        # - When making this call from a client-side environment, use your publishable key
        #   along with a user token.
        # - This endpoint’s rate limit is always scoped per-user and per-environment. This
        #   is true even for requests made without a signed user token.
        # - Any [attachments](/integrations/email/attachments) present in trigger data are
        #   automatically excluded from both the `data` and `activities` fields of
        #   `UserInAppFeedResponse`.
        sig do
          params(
            user_id: String,
            id: String,
            after: String,
            archived: Knockapi::Users::FeedListItemsParams::Archived::OrSymbol,
            before: String,
            has_tenant: T::Boolean,
            locale: String,
            page_size: Integer,
            source: String,
            status: Knockapi::Users::FeedListItemsParams::Status::OrSymbol,
            tenant: String,
            trigger_data: String,
            workflow_categories: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(
            Knockapi::Internal::EntriesCursor[
              Knockapi::Models::Users::FeedListItemsResponse
            ]
          )
        end
        def list_items(
          # The unique identifier of the user.
          user_id,
          # The unique identifier for the channel.
          id,
          # The cursor to fetch entries after.
          after: nil,
          # The archived status of the feed items.
          archived: nil,
          # The cursor to fetch entries before.
          before: nil,
          # Whether the feed items have a tenant.
          has_tenant: nil,
          # The locale to render the feed items in. Must be in the IETF 5646 format (e.g.
          # `en-US`). When not provided, will default to the locale that the feed items were
          # rendered in. Only available for enterprise plan customers using custom
          # translations.
          locale: nil,
          # The number of items per page (defaults to 50).
          page_size: nil,
          # The workflow key associated with the message in the feed.
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
        )
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
