# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      # @return [Knockapi::Resources::Messages::Batch]
      attr_reader :batch

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::MessageListParams} for more details.
      #
      # Returns a paginated list of messages for the current environment.
      #
      # @overload list(after: nil, before: nil, channel_id: nil, engagement_status: nil, inserted_at: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param channel_id [String] Limits the results to items with the corresponding channel ID.
      #
      # @param engagement_status [Array<Symbol, Knockapi::Models::MessageListParams::EngagementStatus>] Limits the results to messages with the given engagement status.
      #
      # @param inserted_at [Knockapi::Models::MessageListParams::InsertedAt]
      #
      # @param message_ids [Array<String>] Limits the results to only the message IDs given (max 50). Note: when using this
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param source [String] Limits the results to messages triggered by the given workflow key.
      #
      # @param status [Array<Symbol, Knockapi::Models::MessageListParams::Status>] Limits the results to messages with the given delivery status.
      #
      # @param tenant [String] Limits the results to items with the corresponding tenant.
      #
      # @param trigger_data [String] Limits the results to only messages that were generated with the given data. See
      #
      # @param workflow_categories [Array<String>] Limits the results to messages related to any of the provided categories.
      #
      # @param workflow_recipient_run_id [String] Limits the results to messages for a specific recipient's workflow run.
      #
      # @param workflow_run_id [String] Limits the results to messages associated with the top-level workflow run ID ret
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Message>]
      #
      # @see Knockapi::Models::MessageListParams
      def list(params = {})
        parsed, options = Knockapi::MessageListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/messages",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Message,
          options: options
        )
      end

      # Archives a message for the user. Archived messages are hidden from the default
      # message list in the feed but can still be accessed and unarchived later.
      #
      # @overload archive(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageArchiveParams
      def archive(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/archived", message_id],
          model: Knockapi::Message,
          options: params[:request_options]
        )
      end

      # Retrieves a specific message by its ID.
      #
      # @overload get(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageGetParams
      def get(message_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s", message_id],
          model: Knockapi::Message,
          options: params[:request_options]
        )
      end

      # Returns the fully rendered contents of a message, where the response depends on
      # which channel the message was sent through.
      #
      # @overload get_content(message_id, request_options: {})
      #
      # @param message_id [String] The ID of the message to fetch contents of.
      #
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
      # @param message_id [String] The ID of the message to fetch activities for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param trigger_data [String] The trigger data to filter activities by.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::ItemsCursor<Knockapi::Models::Activity>]
      #
      # @see Knockapi::Models::MessageListActivitiesParams
      def list_activities(message_id, params = {})
        parsed, options = Knockapi::MessageListActivitiesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/activities", message_id],
          query: parsed,
          page: Knockapi::Internal::ItemsCursor,
          model: Knockapi::Activity,
          options: options
        )
      end

      # Returns a paginated list of delivery logs for the specified message.
      #
      # @overload list_delivery_logs(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param message_id [String] The ID of the message to fetch delivery logs for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::MessageDeliveryLog>]
      #
      # @see Knockapi::Models::MessageListDeliveryLogsParams
      def list_delivery_logs(message_id, params = {})
        parsed, options = Knockapi::MessageListDeliveryLogsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/delivery_logs", message_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::MessageDeliveryLog,
          options: options
        )
      end

      # Returns a paginated list of events for the specified message.
      #
      # @overload list_events(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param message_id [String] The ID of the message to fetch events for.
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::MessageEvent>]
      #
      # @see Knockapi::Models::MessageListEventsParams
      def list_events(message_id, params = {})
        parsed, options = Knockapi::MessageListEventsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%1$s/events", message_id],
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::MessageEvent,
          options: options
        )
      end

      # Marks a message as `interacted` with by the user. This can include any user
      # action on the message, with optional metadata about the specific interaction.
      # Cannot include more than 5 key-value pairs, must not contain nested data. Read
      # more about message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      #
      # @overload mark_as_interacted(message_id, metadata: nil, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param metadata [Hash{Symbol=>Object}] Metadata about the interaction.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsInteractedParams
      def mark_as_interacted(message_id, params = {})
        parsed, options = Knockapi::MessageMarkAsInteractedParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/interacted", message_id],
          body: parsed,
          model: Knockapi::Message,
          options: options
        )
      end

      # Marks a message as `read`. This indicates that the user has read the message
      # content. Read more about message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      #
      # @overload mark_as_read(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsReadParams
      def mark_as_read(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/read", message_id],
          model: Knockapi::Message,
          options: params[:request_options]
        )
      end

      # Marks a message as `seen`. This indicates that the user has viewed the message
      # in their feed or inbox. Read more about message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      #
      # @overload mark_as_seen(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsSeenParams
      def mark_as_seen(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%1$s/seen", message_id],
          model: Knockapi::Message,
          options: params[:request_options]
        )
      end

      # Marks a message as `unread`. This reverses the `read` state. Read more about
      # message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      #
      # @overload mark_as_unread(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsUnreadParams
      def mark_as_unread(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%1$s/read", message_id],
          model: Knockapi::Message,
          options: params[:request_options]
        )
      end

      # Marks a message as `unseen`. This reverses the `seen` state. Read more about
      # message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      #
      # @overload mark_as_unseen(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageMarkAsUnseenParams
      def mark_as_unseen(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%1$s/seen", message_id],
          model: Knockapi::Message,
          options: params[:request_options]
        )
      end

      # Removes a message from the archived state, making it visible in the default
      # message list in the feed again.
      #
      # @overload unarchive(message_id, request_options: {})
      #
      # @param message_id [String] The unique identifier for the message.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Message]
      #
      # @see Knockapi::Models::MessageUnarchiveParams
      def unarchive(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%1$s/archived", message_id],
          model: Knockapi::Message,
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
