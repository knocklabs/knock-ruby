# typed: strong

module Knockapi
  module Resources
    class Objects
      sig { returns(Knockapi::Resources::Objects::Bulk) }
      attr_reader :bulk

      # Returns a paginated list of objects from the specified collection. Optionally
      # includes preference data for the objects.
      sig do
        params(
          collection: String,
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::ObjectListParams::Include::OrSymbol],
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Object])
      end
      def list(
        # The collection this object belongs to.
        collection,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Includes preferences of the objects in the response.
        include: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      ); end
      # Permanently removes an object from the specified collection. This operation
      # cannot be undone.
      sig do
        params(
          collection: String,
          id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def delete(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        id,
        request_options: {}
      ); end
      # Retrieves a specific object by its ID from the specified collection. Returns the
      # object with all its properties.
      sig do
        params(
          collection: String,
          id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Object)
      end
      def get(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        id,
        request_options: {}
      ); end
      # Returns a paginated list of messages for a specific object in the given
      # collection. Allows filtering by message status and provides various sorting
      # options.
      sig do
        params(
          collection: String,
          id: String,
          after: String,
          before: String,
          channel_id: String,
          engagement_status: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol],
          inserted_at: T.any(Knockapi::Models::ObjectListMessagesParams::InsertedAt, Knockapi::Internal::AnyHash),
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status: T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol],
          tenant: String,
          trigger_data: String,
          workflow_categories: T::Array[String],
          workflow_recipient_run_id: String,
          workflow_run_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Message])
      end
      def list_messages(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Limits the results to items with the corresponding channel ID.
        channel_id: nil,
        # Limits the results to messages with the given engagement status.
        engagement_status: nil,
        inserted_at: nil,
        # Limits the results to only the message IDs given (max 50). Note: when using this
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
      # Returns a paginated list of schedules for an object.
      sig do
        params(
          collection: String,
          id: String,
          after: String,
          before: String,
          page_size: Integer,
          tenant: String,
          workflow: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Schedule])
      end
      def list_schedules(
        # The collection of the object to list schedules for.
        collection,
        # The ID of the object to list schedules for.
        id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        # Filter schedules by tenant id.
        tenant: nil,
        # Filter schedules by workflow id.
        workflow: nil,
        request_options: {}
      ); end
      # Creates a new object or updates an existing one in the specified collection.
      # This operation is used to identify objects with their properties, as well as
      # optional preferences and channel data.
      sig do
        params(
          collection: String,
          id: String,
          channel_data: T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)],
          locale: T.nilable(String),
          preferences: T::Array[T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequestItem, Knockapi::Internal::AnyHash)],
          timezone: T.nilable(String),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Object)
      end
      def set(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        id,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # The locale of the object. Used for
        # [message localization](/concepts/translations).
        locale: nil,
        # Inline set preferences for a recipient, where the key is the preference set name
        preferences: nil,
        # The timezone of the object. Must be a valid
        # [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
        # Used for
        # [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
        timezone: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
