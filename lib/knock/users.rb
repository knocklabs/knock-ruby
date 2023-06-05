# frozen_string_literal: true

require 'json'
require 'net/http'
require 'uri'

module Knock
  # Provides convienience methods for working with users
  # rubocop:disable Metrics/ModuleLength
  module Users
    class << self
      include Base
      include Client

      DEFAULT_PREFERENCE_SET_ID = 'default'

      # Identifies the user
      #
      # @param [String] id The user ID
      # @param [Hash] data The traits to attach to the user
      #
      # @return [Hash] The user
      def identify(id:, data: {})
        request = put_request(
          auth: true,
          path: "/v1/users/#{id}",
          body: data
        )

        execute_request(request: request)
      end

      # Bulk identifies users
      #
      # @param [Array<Hash>] users The users to upsert
      #
      # @return [Hash] the BulkOperation
      def bulk_identify(users: [])
        request = post_request(
          auth: true,
          path: '/v1/users/bulk/identify',
          body: { users: users }
        )

        execute_request(request: request)
      end

      # Retrieves paginated users for the provided environment
      #
      # @param [Hash] options Options to pass to the paginated users endpoint query.
      # These include:
      # - page_size: size of page to be returned (max: 50)
      # - after:  after cursor for pagination
      # - before: before cursor for pagination
      def list(options: {})
        request = get_request(
          auth: true,
          path: '/v1/users',
          params: options
        )

        execute_request(request: request)
      end

      # Retrieves the given user
      #
      # @param [String] id The user ID
      #
      # @return [Hash] The user
      def get(id:)
        request = get_request(
          auth: true,
          path: "/v1/users/#{id}"
        )

        execute_request(request: request)
      end

      # Deletes the user
      #
      # @param [String] id the user ID
      #
      # @return [Hash] the user
      def delete(id:)
        request = delete_request(
          auth: true,
          path: "/v1/users/#{id}"
        )

        execute_request(request: request)
      end

      # Bulk deletes users
      #
      # @param [Array<String>] user_ids The users to delete
      #
      # @return [Hash] the BulkOperation
      def bulk_delete(user_ids: [])
        request = post_request(
          auth: true,
          path: '/v1/users/bulk/delete',
          body: { user_ids: user_ids }
        )

        execute_request(request: request)
      end

      # Gets a feed for a user
      #
      # @param [String] id The user id
      # @param [String] channel_id The feed id to retrieve
      # @param [Hash] options Options to pass to the feed query
      #
      # @return [Hash] the feed response
      def get_feed(id:, channel_id:, options: {})
        options[:trigger_data] = JSON.generate(options[:trigger_data]) if options[:trigger_data]

        request = get_request(
          auth: true,
          path: "/v1/users/#{id}/feeds/#{channel_id}",
          params: options
        )

        execute_request(request: request)
      end

      # Merges the user specified with `from_user_id` into the user specified with `user_id`.
      #
      # @param [String] id The user id to merge into.
      # @param [String] from_user_id The user id to merge from
      #
      # @return [Hash] the merged User
      def merge(id:, from_user_id:)
        request = post_request(
          auth: true,
          path: "/v1/users/#{id}/merge",
          body: { from_user_id: from_user_id }
        )

        execute_request(request: request)
      end

      ##
      # Preferences
      ##

      # Returns all preference sets for the user
      #
      # @param [String] user_id The ID of the user to retrieve preferences for
      #
      # @return [Hash] The preference sets
      def get_all_preferences(user_id:)
        endpoint = "/v1/users/#{user_id}/preferences"

        request = get_request(
          auth: true,
          path: endpoint
        )

        execute_request(request: request)
      end

      # Gets a single preference set, defaults to the 'default' set
      # for the user given.
      #
      # @param [String] user_id The ID of the user to retrieve preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      #
      # @return [Hash] The preference set (if it exists)
      def get_preferences(user_id:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}"

        request = get_request(
          auth: true,
          path: endpoint
        )

        execute_request(request: request)
      end

      # Sets multiple preferences at once for the preference set.
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [Hash] channel_types The channel_types hash to set
      # @param [Hash] workflows The workflows hash to set
      # @param [Hash] categories The categories hash to set
      #
      # @return [Hash] The preference set
      def set_preferences(
        user_id:,
        channel_types: nil,
        workflows: nil,
        categories: nil,
        preference_set: DEFAULT_PREFERENCE_SET_ID
      )
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: {
            channel_types: channel_types,
            workflows: workflows,
            categories: categories
          }
        )

        execute_request(request: request)
      end

      # Bulk sets the preference object for the users.
      #
      # @param [Array<String>] user_ids The ID of the user to set preferences for
      # @param [Hash] preferences The preferences hash to set
      # @param [String] preference_set The preference set ID (defaults to `default`)
      #
      # @return [Hash] BulkOperation
      def bulk_set_preferences(
        user_ids: [],
        preferences: {},
        preference_set: DEFAULT_PREFERENCE_SET_ID
      )
        endpoint = '/v1/users/bulk/preferences'

        # Put the preference set id if it doesn't already exist
        preferences['id'] = preference_set unless preferences.has_key('id')

        request = put_request(
          auth: true,
          path: endpoint,
          body: {
            user_ids: user_ids,
            preferences: preferences
          }
        )

        execute_request(request: request)
      end

      # Sets preferences for the given channel type
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] channel_type The channel type to set
      # @param [Bool] setting Whether the channel type is enabled or not
      #
      # @return [Hash] The preference set
      def set_channel_type_preferences(user_id:, channel_type:, setting:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}/channel_types/#{channel_type}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: { subscribed: setting }
        )

        execute_request(request: request)
      end

      # Sets preferences for the given workflow
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] workflow The workflow to set preferences for
      # @param [Bool | Hash] setting Either a boolean to indicate if the type is enabled
      #  or a hash containing channel types and settings
      #
      # @return [Hash] The preference set
      def set_workflow_preferences(user_id:, workflow:, setting:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        params = setting.is_a?(Hash) ? setting : { subscribed: setting }
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}/workflows/#{workflow}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: params
        )

        execute_request(request: request)
      end

      # Sets preferences for the given category
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] category The category to set preferences for
      # @param [Bool | Hash] setting Either a boolean to indicate if the type is enabled
      #  or a hash containing channel types and settings
      #
      # @return [Hash] The preference set
      def set_category_preferences(user_id:, category:, setting:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        params = setting.is_a?(Hash) ? setting : { subscribed: setting }
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}/categories/#{category}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: params
        )

        execute_request(request: request)
      end

      ##
      # Channel data
      ##

      # Get user's channel data for the given channel id
      #
      # @param [String] id the user ID
      # @param [String] channel_id target channel ID
      #
      # @return [Hash] channel data
      def get_channel_data(id:, channel_id:)
        request = get_request(
          auth: true,
          path: "/v1/users/#{id}/channel_data/#{channel_id}"
        )

        execute_request(request: request)
      end

      # Upserts user's channel data for the given channel id
      #
      # @param [String] id the user ID
      # @param [String] channel_id target channel ID
      # @param [Hash] channel_data channel data
      #
      # @return [Hash] channel data
      def set_channel_data(id:, channel_id:, channel_data:)
        request = put_request(
          auth: true,
          path: "/v1/users/#{id}/channel_data/#{channel_id}",
          body: { data: channel_data }
        )

        execute_request(request: request)
      end

      # Unsets user's channel data for the given channel id
      #
      # @param [String] id the user ID
      # @param [String] channel_id target channel ID
      # @param [Hash] channel_data channel data
      #
      # @return [Hash] channel data
      def unset_channel_data(id:, channel_id:)
        request = delete_request(
          auth: true,
          path: "/v1/users/#{id}/channel_data/#{channel_id}"
        )

        execute_request(request: request)
      end

      ##
      # Messages
      ##

      # Get user's messages
      #
      # @param [String] id the user ID
      # @param [Hash] options Options to pass to the messages endpoint query
      #
      # @return [Hash] Paginated messages response
      def get_messages(id:, options: {})
        options[:trigger_data] = JSON.generate(options[:trigger_data]) if options[:trigger_data]

        request = get_request(
          auth: true,
          path: "/v1/users/#{id}/messages",
          params: options
        )

        execute_request(request: request)
      end

      ##
      # Schedules
      ##

      # Get user's schedules
      #
      # @param [String] id the user ID
      # @param [Hash] options Options to pass to the schedules endpoint query
      #
      # @return [Hash] Paginated schedules response
      def get_schedules(id:, options: {})
        request = get_request(
          auth: true,
          path: "/v1/users/#{id}/schedules",
          params: options
        )

        execute_request(request: request)
      end

      ##
      # Subscriptions
      ##

      # Get user's subscriptions
      #
      # @param [String] id the user ID
      # @param [Hash] options Options to pass to the subscriptions endpoint query
      #
      # @return [Hash] Paginated subscriptions response
      def get_subscriptions(id:, options: {})
        request = get_request(
          auth: true,
          path: "/v1/users/#{id}/subscriptions",
          params: options
        )

        execute_request(request: request)
      end
    end
  end
  # rubocop:enable Metrics/ModuleLength
end
