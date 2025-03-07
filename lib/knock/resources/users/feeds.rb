# frozen_string_literal: true

module Knock
  module Resources
    class Users
      class Feeds
        # Returns the feed settings for a user.
        #
        # @param id [String] The channel ID
        #
        # @param params [Knock::Models::Users::FeedGetSettingsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :user_id The user ID
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::Users::FeedGetSettingsResponse]
        #
        def get_settings(id, params)
          parsed, options = Knock::Models::Users::FeedGetSettingsParams.dump_request(params)
          user_id = parsed.delete(:user_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/users/%0s/feeds/%1s/settings", user_id, id],
            model: Knock::Models::Users::FeedGetSettingsResponse,
            options: options
          )
        end

        # Returns a paginated list of feed items for a user, including metadata about the
        #   feed.
        #
        # @param id [String] Path param: The channel ID
        #
        # @param params [Knock::Models::Users::FeedListItemsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :user_id Path param: The user ID
        #
        #   @option params [String] :after Query param: The cursor to fetch entries after
        #
        #   @option params [Symbol, Knock::Models::Users::FeedListItemsParams::Archived] :archived Query param: The archived status of the feed items to return
        #
        #   @option params [String] :before Query param: The cursor to fetch entries before
        #
        #   @option params [Boolean] :has_tenant Query param: Whether the feed items have a tenant
        #
        #   @option params [Integer] :page_size Query param: The page size to fetch
        #
        #   @option params [String] :source Query param: The source of the feed items to return
        #
        #   @option params [Symbol, Knock::Models::Users::FeedListItemsParams::Status] :status Query param: The status of the feed items to return
        #
        #   @option params [String] :tenant Query param: The tenant of the feed items to return
        #
        #   @option params [String] :trigger_data Query param: The trigger data of the feed items to return (as a JSON string)
        #
        #   @option params [Array<String>] :workflow_categories Query param: The workflow categories of the feed items to return
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::EntriesCursor<Knock::Models::Users::FeedListItemsResponse>]
        #
        def list_items(id, params)
          parsed, options = Knock::Models::Users::FeedListItemsParams.dump_request(params)
          user_id = parsed.delete(:user_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
          @client.request(
            method: :get,
            path: ["v1/users/%0s/feeds/%1s", user_id, id],
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
