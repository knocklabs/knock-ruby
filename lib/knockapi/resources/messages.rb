# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      # @return [Knockapi::Resources::Messages::Batch]
      attr_reader :batch

      # Returns a paginated list of messages for the current environment.
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
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Message>]
      #
      # @see Knockapi::Models::MessageListParams
      def list(params = {})
        parsed, options = Knockapi::Models::MessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/messages",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # Archives a message for the current user. Archived messages are hidden from the
      # default message list but can still be accessed and unarchived later.
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

      # Retrieves a specific message by its ID.
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
      # which channel the message was sent through.
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

      # Returns a paginated list of activities for the specified message.
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
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Activity>]
      #
      # @see Knockapi::Models::MessageListActivitiesParams
      def list_activities(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListActivitiesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/activities", message_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Activity,
          options: options
        )
      end

      # Returns a paginated list of delivery logs for the specified message.
      #
      # @overload list_delivery_logs(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param message_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::MessageDeliveryLog>]
      #
      # @see Knockapi::Models::MessageListDeliveryLogsParams
      def list_delivery_logs(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListDeliveryLogsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/delivery_logs", message_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::MessageDeliveryLog,
          options: options
        )
      end

      # Returns a paginated list of events for the specified message.
      #
      # @overload list_events(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param message_id [String]
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::MessageEvent>]
      #
      # @see Knockapi::Models::MessageListEventsParams
      def list_events(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListEventsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/events", message_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::MessageEvent,
          options: options
        )
      end

      # Marks a message as interacted with by the current user. This can include any
      # user action on the message, with optional metadata about the specific
      # interaction.
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

      # Marks a message as read for the current user. This indicates that the user has
      # read the message content.
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

      # Marks a message as seen for the current user. This indicates that the user has
      # viewed the message in their feed or inbox.
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

      # Marks a message as unread for the current user, reversing the read state.
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
          path: ["v1/messages/%1$s/read", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Marks a message as unseen for the current user, reversing the seen state.
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
          path: ["v1/messages/%1$s/seen", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Removes a message from the archived state, making it visible in the default
      # message list again.
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
          path: ["v1/messages/%1$s/archived", message_id],
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
