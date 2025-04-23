# frozen_string_literal: true

module Knockapi
  module Resources
    class Users
      class Feeds
        # Returns the feed settings for a user.
        #
        # @overload get_settings(user_id, id, request_options: {})
        #
        # @param user_id [String]
        # @param id [String]
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

        # Returns a paginated list of feed items for a user, including metadata about the
        # feed.
        #
        # @overload list_items(user_id, id, after: nil, archived: nil, before: nil, has_tenant: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, request_options: {})
        #
        # @param user_id [String]
        # @param id [String]
        # @param after [String]
        # @param archived [Symbol, Knockapi::Models::Users::FeedListItemsParams::Archived]
        # @param before [String]
        # @param has_tenant [Boolean]
        # @param page_size [Integer]
        # @param source [String]
        # @param status [Symbol, Knockapi::Models::Users::FeedListItemsParams::Status]
        # @param tenant [String]
        # @param trigger_data [String]
        # @param workflow_categories [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Users::FeedListItemsResponse>]
        #
        # @see Knockapi::Models::Users::FeedListItemsParams
        def list_items(user_id, id, params = {})
          parsed, options = Knockapi::Models::Users::FeedListItemsParams.dump_request(params)
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
