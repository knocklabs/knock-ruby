# frozen_string_literal: true

module Knock
  module Resources
    class Users
      class Feeds
        # Returns the feed settings for a user.
        #
        # @param user_id [String] The user ID
        #
        # @param channel_id [String] The channel ID
        #
        # @param params [Knock::Models::Users::FeedGetSettingsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Users::FeedGetSettingsResponse]
        #
        def get_settings(user_id, channel_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/users/%0s/feeds/%1s/settings", user_id, channel_id],
            model: Knock::Models::Users::FeedGetSettingsResponse,
            options: params[:request_options]
          )
        end

        # Returns a paginated list of feed items for a user, including metadata about the
        #   feed.
        #
        # @param user_id [String] The user ID
        #
        # @param channel_id [String] The channel ID
        #
        # @param params [Knock::Models::Users::FeedListItemsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :after The cursor to fetch entries after
        #
        #   @option params [Symbol, Knock::Models::Users::FeedListItemsParams::Archived] :archived The archived status of the feed items to return
        #
        #   @option params [String] :before The cursor to fetch entries before
        #
        #   @option params [Boolean] :has_tenant Whether the feed items have a tenant
        #
        #   @option params [Integer] :page_size The page size to fetch
        #
        #   @option params [String] :source The source of the feed items to return
        #
        #   @option params [Symbol, Knock::Models::Users::FeedListItemsParams::Status] :status The status of the feed items to return
        #
        #   @option params [String] :tenant The tenant of the feed items to return
        #
        #   @option params [String] :trigger_data The trigger data of the feed items to return (as a JSON string)
        #
        #   @option params [Array<String>] :workflow_categories The workflow categories of the feed items to return
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::EntriesCursor<Knock::Models::Users::FeedListItemsResponse>]
        #
        def list_items(user_id, channel_id, params = {})
          parsed, options = Knock::Models::Users::FeedListItemsParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/users/%0s/feeds/%1s", user_id, channel_id],
            query: parsed,
            page: Knock::EntriesCursor,
            model: Knock::Models::Users::FeedListItemsResponse,
            options: options
          )
        end

        # @param client [Knock::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
