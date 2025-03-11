# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      # @return [Knockapi::Resources::Messages::Batch]
      attr_reader :batch

      # List messages
      #
      # @param params [Knockapi::Models::MessageListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [String] :channel_id The channel ID
      #
      #   @option params [Array<Symbol, Knockapi::Models::MessageListParams::EngagementStatus>] :engagement_status The engagement status of the message
      #
      #   @option params [Array<String>] :message_ids The message IDs to filter messages by
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :source The source of the message (workflow key)
      #
      #   @option params [Array<Symbol, Knockapi::Models::MessageListParams::Status>] :status The status of the message
      #
      #   @option params [String] :tenant The tenant ID
      #
      #   @option params [String] :trigger_data The trigger data to filter messages by. Must be a valid JSON object.
      #
      #   @option params [Array<String>] :workflow_categories The workflow categories to filter messages by
      #
      #   @option params [String] :workflow_recipient_run_id The workflow recipient run ID to filter messages by
      #
      #   @option params [String] :workflow_run_id The workflow run ID to filter messages by
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Message>]
      #
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
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def archive(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%0s/archived", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Get message
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def get(message_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/messages/%0s", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Returns the fully rendered contents of a message, where the response depends on
      #   the channel the message was sent on.
      #
      # @param message_id [String] The ID of the message to fetch contents of
      #
      # @param params [Knockapi::Models::MessageGetContentParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::MessageGetContentResponse]
      #
      def get_content(message_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/messages/%0s/content", message_id],
          model: Knockapi::Models::MessageGetContentResponse,
          options: params[:request_options]
        )
      end

      # List activities
      #
      # @param message_id [String] The ID of the message to fetch activities for
      #
      # @param params [Knockapi::Models::MessageListActivitiesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [String] :trigger_data The trigger data to filter activities by
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::ItemsCursor<Knockapi::Models::Activity>]
      #
      def list_activities(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListActivitiesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%0s/activities", message_id],
          query: parsed,
          page: Knockapi::ItemsCursor,
          model: Knockapi::Models::Activity,
          options: options
        )
      end

      # List delivery logs
      #
      # @param message_id [String] The ID of the message to fetch delivery logs for
      #
      # @param params [Knockapi::Models::MessageListDeliveryLogsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::MessageDeliveryLog>]
      #
      def list_delivery_logs(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListDeliveryLogsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%0s/delivery_logs", message_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::MessageDeliveryLog,
          options: options
        )
      end

      # List events
      #
      # @param message_id [String] The ID of the message to fetch events for
      #
      # @param params [Knockapi::Models::MessageListEventsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::MessageEvent>]
      #
      def list_events(message_id, params = {})
        parsed, options = Knockapi::Models::MessageListEventsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/messages/%0s/events", message_id],
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::MessageEvent,
          options: options
        )
      end

      # Mark message as interacted
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageMarkAsInteractedParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Object}] :metadata Metadata about the interaction
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def mark_as_interacted(message_id, params = {})
        parsed, options = Knockapi::Models::MessageMarkAsInteractedParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/messages/%0s/interacted", message_id],
          body: parsed,
          model: Knockapi::Models::Message,
          options: options
        )
      end

      # Mark message as read
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageMarkAsReadParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def mark_as_read(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%0s/read", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Mark message as seen
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageMarkAsSeenParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def mark_as_seen(message_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/messages/%0s/seen", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Mark message as unread
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageMarkAsUnreadParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def mark_as_unread(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%0s/unread", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Mark message as unseen
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageMarkAsUnseenParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def mark_as_unseen(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%0s/unseen", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # Unarchive message
      #
      # @param message_id [String] The message ID
      #
      # @param params [Knockapi::Models::MessageUnarchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Message]
      #
      def unarchive(message_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/messages/%0s/unarchived", message_id],
          model: Knockapi::Models::Message,
          options: params[:request_options]
        )
      end

      # @param client [Knockapi::Client]
      #
      def initialize(client:)
        @client = client
        @batch = Knockapi::Resources::Messages::Batch.new(client: client)
      end
    end
  end
end
