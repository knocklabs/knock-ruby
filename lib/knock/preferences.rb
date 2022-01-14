require "net/http"
require "uri"

module Knock
  # Provides convienience methods for working with preferences (deprecated)
  module Preferences
    class << self
      include Base
      include Client

      # Returns all preference sets for the user
      #
      # @param [String] user_id The ID of the user to retrieve preferences for
      #
      # @return [Hash] The preference sets
      # @deprecated Please use {#Knock::Users.get_all_preferences} instead
      def get_all(user_id:)
        Knock::Users.get_all_preferences(user_id: user_id)
      end

      # Gets a single preference set, defaults to the 'default' set
      # for the user given.
      #
      # @param [String] user_id The ID of the user to retrieve preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      #
      # @return [Hash] The preference set (if it exists)
      # @deprecated Please use {#Knock::Users.get_preferences} instead
      def get(user_id:, preference_set:)
        Knock::Users.get_preferences(user_id: user_id, preference_set: preference_set)
      end

      # Sets multiple preferences at once for the preference set.
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [Hash] preferences The preferences hash to set
      #
      #  @return [Hash] The preference set
      # @deprecated Please use {#Knock::Users.set_preferences} instead
      def update(
        user_id:,
        preference_set:, channel_types: nil,
        workflows: nil,
        categories: nil
      )
        Knock::Users.set_preferences(
          user_id: user_id,
          channel_types: channel_types,
          workflows: workflows,
          categories: categories,
          preference_set: preference_set
        )
      end

      # Sets preferences for the given channel type
      #
      # @param [String] user_id The ID of the user to set preferences for
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] channel_type The channel type to set
      # @param [Bool] setting Whether the channel type is enabled or not
      #
      # @return [Hash] The preference set
      # @deprecated Please use {#Knock::Users.set_channel_type_preferences} instead
      def set_channel_type(user_id:, channel_type:, setting:, preference_set:)
        Knock::Users.set_channel_type_preferences(
          user_id: user_id,
          channel_type: channel_type,
          setting: setting,
          preference_set: preference_set
        )
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
      # @deprecated Please use {#Knock::Users.set_workflow_preferences} instead
      def set_workflow(user_id:, workflow:, setting:, preference_set:)
        Knock::Users.set_workflow_preferences(
          user_id: user_id,
          workflow: workflow,
          setting: setting,
          preference_set: preference_set
        )
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
      # @deprecated Please use {#Knock::Users.set_category_preferences} instead
      def set_category(user_id:, category:, setting:, preference_set:)
        Knock::Users.set_category_preferences(
          user_id: user_id,
          category: category,
          setting: setting,
          preference_set: preference_set
        )
      end
    end
  end
end
