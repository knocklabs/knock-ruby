# typed: strong

module Knockapi
  module Resources
    class Messages
      sig { returns(Knockapi::Resources::Messages::Batch) }
      attr_reader :batch

      sig { returns(Knockapi::Resources::Messages::Activities) }
      attr_reader :activities

      # Returns a paginated list of messages for the current environment.
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
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Message])
      end
      def list(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Limits the results to items with the corresponding channel ID.
        channel_id: nil,
        # Limits the results to messages with the given engagement status.
        engagement_status: nil,
        # Limits the results to only the message ids given (max 50). Note: when using this
        # option, the results will be subject to any other filters applied to the query.
        message_ids: nil,
        # The number of items per page.
        page_size: nil,
        # Limits the results to messages triggered by the given workflow key.
        source: nil,
        # Limits the results to messages with the given delivery status.
        status: nil,
        # Limits the results to items with the corresponding tenant.
        tenant: nil,
        # Limits the results to only messages that were generated with the given data. See
        # [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
        # more information.
        trigger_data: nil,
        # Limits the results to messages related to any of the provided categories.
        workflow_categories: nil,
        # Limits the results to messages for a specific recipient's workflow run.
        workflow_recipient_run_id: nil,
        # Limits the results to messages associated with the top-level workflow run ID
        # returned by the workflow trigger request.
        workflow_run_id: nil,
        request_options: {}
      ); end
      # Archives a message for the user. Archived messages are hidden from the default
      # message list in the feed but can still be accessed and unarchived later.
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def archive(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # Retrieves a specific message by its ID.
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def get(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # Returns the fully rendered contents of a message, where the response depends on
      # which channel the message was sent through.
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::MessageGetContentResponse)
      end
      def get_content(
        # The ID of the message to fetch contents of.
        message_id,
        request_options: {}
      ); end
      # Returns a paginated list of activities for the specified message.
      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          trigger_data: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::MessageListActivitiesResponse)
      end
      def list_activities(
        # The ID of the message to fetch activities for.
        message_id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        # The trigger data to filter activities by.
        trigger_data: nil,
        request_options: {}
      ); end
      # Returns a paginated list of delivery logs for the specified message.
      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::MessageDeliveryLog])
      end
      def list_delivery_logs(
        # The ID of the message to fetch delivery logs for.
        message_id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      ); end
      # Returns a paginated list of events for the specified message.
      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::MessageEvent])
      end
      def list_events(
        # The ID of the message to fetch events for.
        message_id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      ); end
      # Marks a message as `interacted` with by the user. This can include any user
      # action on the message, with optional metadata about the specific interaction.
      # Cannot include more than 5 key-value pairs, must not contain nested data. Read
      # more about message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      sig do
        params(
          message_id: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_interacted(
        # The unique identifier for the message.
        message_id,
        # Metadata about the interaction.
        metadata: nil,
        request_options: {}
      ); end
      # Marks a message as `read`. This indicates that the user has read the message
      # content. Read more about message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_read(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # Marks a message as `seen`. This indicates that the user has viewed the message
      # in their feed or inbox. Read more about message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_seen(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # Marks a message as `unread`. This reverses the `read` state. Read more about
      # message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_unread(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # Marks a message as `unseen`. This reverses the `seen` state. Read more about
      # message engagement statuses
      # [here](/send-notifications/message-statuses#engagement-status).
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def mark_as_unseen(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # Removes a message from the archived state, making it visible in the default
      # message list in the feed again.
      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Message)
      end
      def unarchive(
        # The unique identifier for the message.
        message_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
