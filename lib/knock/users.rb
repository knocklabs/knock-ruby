require "net/http"
require "uri"

module Knock
  # Provides convienience methods for working with users
  module Users
    class << self
      include Base
      include Client

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
      # @param [String] channel_data channel data
      #
      # @return [Hash] channel data
      def set_channel_data(id:, channel_id:, channel_data:)
        request = put_request(
          auth: true,
          path: "/v1/users/#{id}/channel_data/#{channel_id}"
        )

        execute_request(request: request)
      end
    end
  end
end
