require "net/http"
require "uri"

module Knock
  # Provides convienience methods for working with bulk operations
  module Objects
    class << self
      include Base
      include Client

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
          body: {objects: objects}
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
          body: {object_ids: object_ids}
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
      def set_channel_data(id:, channel_id:, channel_data:)
        request = put_request(
          auth: true,
          path: "/v1/objects/#{collection}/#{id}/channel_data/#{channel_id}",
          body: {data: channel_data}
        )

        execute_request(request: request)
      end
    end
  end
end
