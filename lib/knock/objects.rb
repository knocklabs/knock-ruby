# frozen_string_literal: true

require 'json'
require 'net/http'
require 'uri'

module Knock
  # Methods for interacting with objects in Knock
  # rubocop:disable Metrics/ModuleLength
  module Objects
    class << self
      include Base
      include Client

      DEFAULT_PREFERENCE_SET_ID = 'default'

      # Retrieves an Object in a collection
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      #
      # @return [Hash] The Object
      def get(collection:, id:)
        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}"
        )

        execute_request(request: request)
      end

      # Retrieves paginated objects in a collection for the provided environment
      #
      # @param [Hash] options Options to pass to the paginated users endpoint query.
      # These include:
      # - page_size: size of page to be returned (max: 50)
      # - after:  after cursor for pagination
      # - before: before cursor for pagination
      def list(collection:, options: {})
        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}",
          params: options
        )

        execute_request(request: request)
      end

      # Upserts an Object in a collection
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Hash] properties The properties to set on the object
      #
      # @return [Hash] The Object
      def set(collection:, id:, properties: {})
        request = put_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}",
          body: properties
        )

        execute_request(request: request)
      end

      # Bulk upserts Objects in a collection
      #
      # @param [String] collection The collection the object is in
      # @param [Array<Hash>] objects The objects to upsert
      #
      # @return [Hash] a BulkOperation
      def bulk_set(collection:, objects: [])
        request = post_request(
          auth: true,
          path: "/v1/objects/#{collection}/bulk/set",
          body: { objects: objects }
        )

        execute_request(request: request)
      end

      # Deletes an Object in a collection
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      #
      # @return [nil] Nothing
      def delete(collection:, id:)
        request = delete_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}"
        )

        execute_request(request: request)
      end

      # Bulk deletes Objects in a collection
      #
      # @param [String] collection The collection the object is in
      # @param [Array<String>] object_ids The object ids to delete
      #
      # @return [Hash] a BulkOperation
      def bulk_delete(collection:, object_ids: [])
        request = post_request(
          auth: true,
          path: "/v1/objects/#{collection}/bulk/delete",
          body: { object_ids: object_ids }
        )

        execute_request(request: request)
      end

      # Get object channel data for the given channel id
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] channel_id target channel ID
      #
      # @return [Hash] channel data
      def get_channel_data(collection:, id:, channel_id:)
        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/channel_data/#{channel_id}"
        )

        execute_request(request: request)
      end

      # Upserts object channel data for the given channel id
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] channel_id target channel ID
      # @param [Hash] channel_data channel data
      #
      # @return [Hash] channel data
      def set_channel_data(collection:, id:, channel_id:, channel_data:)
        request = put_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/channel_data/#{channel_id}",
          body: { data: channel_data }
        )

        execute_request(request: request)
      end

      # Unsets object channel data for the given channel id
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] channel_id target channel ID
      #
      # @return [Hash] channel data
      def unset_channel_data(collection:, id:, channel_id:)
        request = delete_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/channel_data/#{channel_id}"
        )

        execute_request(request: request)
      end

      # Get object's messages
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Hash] options Options to pass to the messages endpoint query
      #
      # @return [Hash] Paginated messages response
      def get_messages(collection:, id:, options: {})
        options[:trigger_data] = JSON.generate(options[:trigger_data]) if options[:trigger_data]

        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/messages",
          params: options
        )

        execute_request(request: request)
      end

      ##
      # Preferences
      ##

      # Returns all preference sets for the object
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      #
      # @return [Array] The preference sets
      def get_all_preferences(collection:, id:)
        endpoint = "/v1/objects/#{collection}/#{id}/preferences"

        request = get_request(
          auth: true,
          path: endpoint
        )

        execute_request(request: request)
      end

      # Gets a single preference set, defaults to the 'default' set
      # for the object given.
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] preference_set The preference set ID (defaults to `default`)
      #
      # @return [Hash] The preference set (if it exists)
      def get_preferences(collection:, id:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        endpoint = "/v1/objects/#{collection}/#{id}/preferences/#{preference_set}"

        request = get_request(
          auth: true,
          path: endpoint
        )

        execute_request(request: request)
      end

      # Sets multiple preferences at once for the preference set.
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [Hash] channel_types The channel_types hash to set
      # @param [Hash] workflows The workflows hash to set
      # @param [Hash] categories The categories hash to set
      #
      # @return [Hash] The preference set

      def set_preferences(
        collection:,
        id:,
        channel_types: nil,
        workflows: nil,
        categories: nil,
        preference_set: DEFAULT_PREFERENCE_SET_ID
      )
        endpoint = "/v1/objects/#{collection}/#{id}/preferences/#{preference_set}"

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
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] channel_type The channel type to set
      # @param [Bool] setting Whether the channel type is enabled or not
      #
      # @return [Hash] The preference set
      def set_channel_type_preferences(collection:,
                                       id:,
                                       channel_type:,
                                       setting:,
                                       preference_set: DEFAULT_PREFERENCE_SET_ID)
        endpoint = "/v1/objects/#{collection}/#{id}/preferences/#{preference_set}/channel_types/#{channel_type}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: { subscribed: setting }
        )

        execute_request(request: request)
      end

      # Sets preferences for the given workflow
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] workflow The workflow to set preferences for
      # @param [Bool | Hash] setting Either a boolean to indicate if the type is enabled
      #  or a hash containing channel types and settings
      #
      # @return [Hash] The preference set
      def set_workflow_preferences(collection:, id:, workflow:, setting:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        params = setting.is_a?(Hash) ? setting : { subscribed: setting }
        endpoint = "/v1/objects/#{collection}/#{id}/preferences/#{preference_set}/workflows/#{workflow}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: params
        )

        execute_request(request: request)
      end

      # Sets preferences for the given category
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [String] preference_set The preference set ID (defaults to `default`)
      # @param [String] category The category to set preferences for
      # @param [Bool | Hash] setting Either a boolean to indicate if the type is enabled
      #  or a hash containing channel types and settings
      #
      # @return [Hash] The preference set
      def set_category_preferences(collection:, id:, category:, setting:, preference_set: DEFAULT_PREFERENCE_SET_ID)
        params = setting.is_a?(Hash) ? setting : { subscribed: setting }
        endpoint = "/v1/objects/#{collection}/#{id}/preferences/#{preference_set}/categories/#{category}"

        request = put_request(
          auth: true,
          path: endpoint,
          body: params
        )

        execute_request(request: request)
      end

      # Lists all subscriptiopns for the given object
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Hash] options Options to pass to the subscriptions endpoint
      # These include:
      # - page_size: size of page to be returned (max: 50)
      # - after:  after cursor for pagination
      # - before: before cursor for pagination
      #
      # @return [Hash] Paginated subscriptions response
      def list_subscriptions(collection:, id:, options: {})
        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/subscriptions",
          params: options
        )

        execute_request(request: request)
      end

      # Creates a set of subscriptions for the recipients on the object
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Array<String, Hash>] recipients An array of recipients
      # @param [Hash] properties A set of custom properties to set on the subscriptions
      #
      # @return [Array<Hash>] List of created subscriptions
      def add_subscriptions(collection:, id:, recipients: [], properties: {})
        request = post_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/subscriptions",
          body: { recipients: recipients, properties: properties }
        )

        execute_request(request: request)
      end

      # Creates a bulk operation to create subscriptions for a set recipients to
      # a set of objects within the given collection.
      #
      # @param [String] collection The collection the objects are in.
      # @param [Array<Hash>] subscriptions The set of subscriptions to create.
      #
      # @return [Hash] a BulkOperation
      def bulk_add_subscriptions(collection:, subscriptions: [])
        request = post_request(
          auth: true,
          path: "/v1/objects/#{collection}/bulk/subscriptions/add",
          body: { subscriptions: subscriptions }
        )

        execute_request(request: request)
      end

      # Removes subscriptions for the recipients on the object
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Array<String, Hash>] recipients An array of recipients
      #
      # @return [Array<Hash>] List of deleted subscriptions
      def delete_subscriptions(collection:, id:, recipients: [])
        request = delete_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/subscriptions",
          body: { recipients: recipients }
        )

        execute_request(request: request)
      end

      # Get object's schedules
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Hash] options Options to pass to the schedules endpoint query
      #
      # @return [Hash] Paginated schedules response
      def get_schedules(collection:, id:, options: {})
        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/schedules",
          params: options
        )

        execute_request(request: request)
      end

      # Get object's subscriptions as recipient
      #
      # @param [String] collection The collection the object is in
      # @param [String] id The object id
      # @param [Hash] options Options to pass to the subscriptions endpoint query
      # These include:
      # - page_size: size of page to be returned (max: 50)
      # - after:  after cursor for pagination
      # - before: before cursor for pagination
      #
      # @return [Hash] Paginated subscriptions response
      def get_subscriptions(collection:, id:, options: {})
        options[:mode] = 'recipient'

        request = get_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/subscriptions",
          params: options
        )

        execute_request(request: request)
      end
    end
  end
  # rubocop:enable Metrics/ModuleLength
end
