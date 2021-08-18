require "net/http"
require "uri"

module Knock
  # Provides convienience methods for working with preferences
  module Preferences
    class << self
      include Base
      include Client

      DEFAULT_SET_ID = "default"

      # Returns all preference sets for the user
      #
      # @param [String] user_id The ID of the user to retrieve preferences for
      #
      # @return [Hash] The preference sets
      def get_all(user_id:)
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
      def get(user_id:, preference_set: DEFAULT_SET_ID)
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
      # @param [Hash] preferences The preferences hash to set
      #
      #  @return [Hash] The preference set
      def update(
        user_id:,
        channel_types: nil,
        workflows: nil,
        categories: nil,
        preference_set: DEFAULT_SET_ID
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

      # Sets preferences for the given channel type
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] channel_type The channel type to set
      # @param [Bool] setting Whether the channel type is enabled or not
      #
      #  @return [Hash] The preference set
      def set_channel_type(user_id:, channel_type:, setting:, preference_set: DEFAULT_SET_ID)
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}/channel_types/#{channel_type}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: {subscribed: setting}
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
      #  @return [Hash] The preference set
      def set_workflow(user_id:, workflow:, setting:, preference_set: DEFAULT_SET_ID)
        params = setting.is_a?(Hash) ? setting : {subscribed: setting}
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
      #  @return [Hash] The preference set
      def set_category(user_id:, category:, setting:, preference_set: DEFAULT_SET_ID)
        params = setting.is_a?(Hash) ? setting : {subscribed: setting}
        endpoint = "/v1/users/#{user_id}/preferences/#{preference_set}/categories/#{category}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: params
        )

        execute_request(request: request)
      end
    end
  end
end
