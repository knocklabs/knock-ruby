# typed: strong

module Knockapi
  module Resources
    class Messages
      sig { returns(Knockapi::Resources::Messages::Batch) }
      def batch
      end

      # List messages
      sig do
        params(
          after: String,
          before: String,
          channel_id: String,
          engagement_status: T::Array[Knockapi::Models::MessageListParams::EngagementStatus::OrSymbol],
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status: T::Array[Knockapi::Models::MessageListParams::Status::OrSymbol],
          tenant: String,
          trigger_data: String,
          workflow_categories: T::Array[String],
          workflow_recipient_run_id: String,
          workflow_run_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Message])
      end
      def list(
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The channel ID
        channel_id: nil,
        # The engagement status of the message
        engagement_status: nil,
        # The message IDs to filter messages by
        message_ids: nil,
        # The page size to fetch
        page_size: nil,
        # The source of the message (workflow key)
        source: nil,
        # The status of the message
        status: nil,
        # The tenant ID
        tenant: nil,
        # The trigger data to filter messages by. Must be a valid JSON object.
        trigger_data: nil,
        # The workflow categories to filter messages by
        workflow_categories: nil,
        # The workflow recipient run ID to filter messages by
        workflow_recipient_run_id: nil,
        # The workflow run ID to filter messages by
        workflow_run_id: nil,
        request_options: {}
      )
      end

      # Archive message
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def archive(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      # Get message
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def get(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      # Returns the fully rendered contents of a message, where the response depends on
      #   the channel the message was sent on.
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::MessageGetContentResponse)
      end
      def get_content(
        # The ID of the message to fetch contents of
        message_id,
        request_options: {}
      )
      end

      # List activities
      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          trigger_data: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::ItemsCursor[Knockapi::Models::Activity])
      end
      def list_activities(
        # The ID of the message to fetch activities for
        message_id,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        # The trigger data to filter activities by
        trigger_data: nil,
        request_options: {}
      )
      end

      # List delivery logs
      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::MessageDeliveryLog])
      end
      def list_delivery_logs(
        # The ID of the message to fetch delivery logs for
        message_id,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      )
      end

      # List events
      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::MessageEvent])
      end
      def list_events(
        # The ID of the message to fetch events for
        message_id,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      )
      end

      # Mark message as interacted
      sig do
        params(
          message_id: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_interacted(
        # The message ID
        message_id,
        # Metadata about the interaction
        metadata: nil,
        request_options: {}
      )
      end

      # Mark message as read
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_read(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      # Mark message as seen
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_seen(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      # Mark message as unread
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_unread(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      # Mark message as unseen
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_unseen(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      # Unarchive message
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def unarchive(
        # The message ID
        message_id,
        request_options: {}
      )
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
