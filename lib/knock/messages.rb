# frozen_string_literal: true

require 'json'
require 'net/http'
require 'uri'

module Knock
  # Methods for interacting with messages in Knock
  module Messages
    class << self
      include Base
      include Client

      # Retrieves a paginated list of messages for the provided environment
      #
      # @param [Hash] options Options to pass to the messages endpoint query
      #
      # @return [Hash] Paginated list of Message records
      def list(options: {})
        options[:trigger_data] = JSON.generate(options[:trigger_data]) if options[:trigger_data]

        request = get_request(
          auth: true,
          path: '/v1/messages',
          params: options
        )

        execute_request(request: request)
      end

      # Retrieves a Message
      #
      # @param [String] id The message id
      #
      # @return [Hash] The Message
      def get(id:)
        request = get_request(
          auth: true,
          path: "/v1/messages/#{id}"
        )

        execute_request(request: request)
      end

      # Get a Message's content
      #
      # @param [String] id The message id
      #
      # @return [Hash] The Message content
      def get_content(id:)
        request = get_request(
          auth: true,
          path: "/v1/messages/#{id}/content"
        )

        execute_request(request: request)
      end

      # Get a Message's activities
      #
      # @param [String] id The message id
      # @param [Hash] options Options to pass to the paginated activities endpoint query
      #
      # @return [Hash] Paginated Message's activities
      def get_activities(id:, options: {})
        options[:trigger_data] = JSON.generate(options[:trigger_data]) if options[:trigger_data]

        request = get_request(
          auth: true,
          path: "/v1/messages/#{id}/activities",
          params: options
        )

        execute_request(request: request)
      end

      # Get a Message's events
      #
      # @param [String] id The message id
      # @param [Hash] options Options to pass to the paginated events endpoint query
      #
      # @return [Hash] Paginated Message's events
      def get_events(id:, options: {})
        request = get_request(
          auth: true,
          path: "/v1/messages/#{id}/events",
          params: options
        )

        execute_request(request: request)
      end
    end
  end
end
