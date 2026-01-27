# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Feeds
        # Returns the feed settings for a user.
        #
        # @overload get_settings(user_id, id, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param id [String] The unique identifier for the channel.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::Users::FeedGetSettingsResponse]
        #
        # @see Knockapi::Models::Users::FeedGetSettingsParams
        def get_settings(user_id, id, params = {})
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/feeds/%2$s/settings", user_id, id],
            model: Knockapi::Models::Users::FeedGetSettingsResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Knockapi::Models::Users::FeedListItemsParams} for more details.
        #
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
        #
        # @overload list_items(user_id, id, after: nil, archived: nil, before: nil, has_tenant: nil, locale: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, request_options: {})
        #
        # @param user_id [String] The unique identifier of the user.
        #
        # @param id [String] The unique identifier for the channel.
        #
        # @param after [String] The cursor to fetch entries after.
        #
        # @param archived [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived] The archived status of the feed items.
        #
        # @param before [String] The cursor to fetch entries before.
        #
        # @param has_tenant [Boolean] Whether the feed items have a tenant.
        #
        # @param locale [String] The locale to render the feed items in. Must be in the IETF 5646 format (e.g. `e
        #
        # @param page_size [Integer] The number of items per page (defaults to 50).
        #
        # @param source [String] The workflow key associated with the message in the feed.
        #
        # @param status [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status] The status of the feed items.
        #
        # @param tenant [String] The tenant associated with the feed items.
        #
        # @param trigger_data [String] The trigger data of the feed items (as a JSON string).
        #
        # @param workflow_categories [Array<String>] The workflow categories of the feed items.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Users::FeedListItemsResponse>]
        #
        # @see Knockapi::Models::Users::FeedListItemsParams
        def list_items(user_id, id, params = {})
          parsed, options = Knockapi::Users::FeedListItemsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/users/%1$s/feeds/%2$s", user_id, id],
            query: parsed,
            page: Knockapi::Internal::EntriesCursor,
            model: Knockapi::Models::Users::FeedListItemsResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
