# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      # @return [Knockapi::Resources::Messages::Batch]
      attr_reader :batch

      # List messages
      #
      # @overload list(after: nil, before: nil, channel_id: nil, engagement_status: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param after [String]
      # @param before [String]
      # @param channel_id [String]
      # @param engagement_status [Array<Symbol, Knockapi::Models::MessageListParams::EngagementStatus>]
      # @param message_ids [Array<String>]
      # @param page_size [Integer]
      # @param source [String]
      # @param status [Array<Symbol, Knockapi::Models::MessageListParams::Status>]
      # @param tenant [String]
      # @param trigger_data [String]
      # @param workflow_categories [Array<String>]
      # @param workflow_recipient_run_id [String]
      # @param workflow_run_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Message>]
      #
      # @see Knockapi::Models::MessageListParams
      def list(params = {})
        parsed, options = Knockapi::Models::MessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/messages",
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # Archive message
      #
      # @overload archive(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageArchiveParams
      def archive(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/archived", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Get message
      #
      # @overload get(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageGetParams
      def get(message_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Returns the fully rendered contents of a message, where the response depends on
      #   the channel the message was sent on.
      #
      # @overload get_content(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::MessageGetContentResponse]
      #
      # @see Knockapi::Models::MessageGetContentParams
      def get_content(message_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/content", message_id],
          model: Knockapi::Models::MessageGetContentResponse,
          options: params[:request_options]
        )
      end

      # List activities
      #
      # @overload list_activities(message_id, after: nil, before: nil, page_size: nil, trigger_data: nil, request_options: {})
      #
      # @param message_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param trigger_data [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::ItemsCursor<Knockapi::Models::Activity>]
      #
      # @see Knockapi::Models::MessageListActivitiesParams
      def list_activities(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListActivitiesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/activities", message_id],
          query: parsed,
          page: Knockapi::ItemsCursor,
          model: Knockapi::Models::Activity,
          options: options
        )
      end

      # List delivery logs
      #
      # @overload list_delivery_logs(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param message_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::MessageDeliveryLog>]
      #
      # @see Knockapi::Models::MessageListDeliveryLogsParams
      def list_delivery_logs(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListDeliveryLogsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/delivery_logs", message_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::MessageDeliveryLog,
          options: options
        )
      end

      # List events
      #
      # @overload list_events(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param message_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::MessageEvent>]
      #
      # @see Knockapi::Models::MessageListEventsParams
      def list_events(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListEventsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/events", message_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::MessageEvent,
          options: options
        )
      end

      # Mark message as interacted
      #
      # @overload mark_as_interacted(message_id, metadata: nil, request_options: {})
      #
      # @param message_id [String]
      # @param metadata [Hash{Symbol=>Object}]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsInteractedParams
      def mark_as_interacted(message_id, params = {})
        parsed, options = Knockapi::Models::MessageMarkAsInteractedParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/interacted", message_id],
          body: parsed,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # Mark message as read
      #
      # @overload mark_as_read(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsReadParams
      def mark_as_read(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/read", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Mark message as seen
      #
      # @overload mark_as_seen(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsSeenParams
      def mark_as_seen(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/seen", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Mark message as unread
      #
      # @overload mark_as_unread(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsUnreadParams
      def mark_as_unread(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%1$s/unread", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Mark message as unseen
      #
      # @overload mark_as_unseen(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsUnseenParams
      def mark_as_unseen(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%1$s/unseen", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Unarchive message
      #
      # @overload unarchive(message_id, request_options: {})
      #
      # @param message_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageUnarchiveParams
      def unarchive(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%1$s/unarchived", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @batch = Knockapi::Resources::Messages::Batch.new(client: client)
      end
    end
  end
end
