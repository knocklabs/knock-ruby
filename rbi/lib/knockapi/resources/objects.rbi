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
          object_id_: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def delete(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        request_options: {}
      ); end
      # Add subscriptions for an object. If a subscription already exists, it will be
      # updated. This endpoint also handles
      # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
      # for the `recipient`.
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[
            T.any(
              String,
              Knockapi::Models::InlineIdentifyUserRequest,
              Knockapi::Internal::AnyHash,
              Knockapi::Models::InlineObjectRequest
            )
          ],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def add_subscriptions(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The recipients of the subscription.
        recipients:,
        # The custom properties associated with the recipients of the subscription.
        properties: nil,
        request_options: {}
      ); end
      # Delete subscriptions for the specified recipients from an object. Returns the
      # list of deleted subscriptions.
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def delete_subscriptions(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The recipients of the subscription.
        recipients:,
        request_options: {}
      ); end
      # Retrieves a specific object by its ID from the specified collection. Returns the
      # object with all its properties.
      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Object)
      end
      def get(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        request_options: {}
      ); end
      # Returns the channel data for the specified object and channel.
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def get_channel_data(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The unique identifier for the channel.
        channel_id,
        request_options: {}
      ); end
      # Returns the preference set for the specified object.
      sig do
        params(
          collection: String,
          object_id_: String,
          preference_set_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::PreferenceSet)
      end
      def get_preferences(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # Unique identifier for the preference set.
        preference_set_id,
        request_options: {}
      ); end
      # Returns a paginated list of messages for a specific object in the given
      # collection. Allows filtering by message status and provides various sorting
      # options.
      sig do
        params(
          collection: String,
          object_id_: String,
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
        object_id_,
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
      # Returns a paginated list of preference sets for the specified object.
      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::PreferenceSet])
      end
      def list_preferences(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        request_options: {}
      ); end
      # Returns a paginated list of schedules for an object.
      sig do
        params(
          collection: String,
          object_id_: String,
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
        object_id_,
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
      # List subscriptions for an object. Either list the recipients that subscribe to
      # the provided object, or list the objects that the provided object is subscribed
      # to. Determined by the `mode` query parameter.
      sig do
        params(
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::ObjectListSubscriptionsParams::Include::OrSymbol],
          mode: Knockapi::Models::ObjectListSubscriptionsParams::Mode::OrSymbol,
          objects: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Recipients::Subscription])
      end
      def list_subscriptions(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Additional fields to include in the response.
        include: nil,
        # Mode of the request.
        mode: nil,
        # Objects to filter by (only used if mode is `recipient`).
        objects: nil,
        # The number of items per page.
        page_size: nil,
        # Recipients to filter by (only used if mode is `object`).
        recipients: nil,
        request_options: {}
      ); end
      # Creates a new object or updates an existing one in the specified collection.
      # This operation is used to identify objects with their properties, as well as
      # optional preferences and channel data.
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          preferences: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequestItem, Knockapi::Internal::AnyHash)]
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Object)
      end
      def set(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # Inline set preferences for a recipient, where the key is the preference set name
        preferences: nil,
        request_options: {}
      ); end
      # Sets the channel data for the specified object and channel.
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          data: T.any(
            Knockapi::Models::Recipients::PushChannelData,
            Knockapi::Internal::AnyHash,
            Knockapi::Models::Recipients::OneSignalChannelData,
            Knockapi::Models::Recipients::SlackChannelData,
            Knockapi::Models::Recipients::MsTeamsChannelData,
            Knockapi::Models::Recipients::DiscordChannelData
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def set_channel_data(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The unique identifier for the channel.
        channel_id,
        # Channel data for a given channel type.
        data:,
        request_options: {}
      ); end
      # Updates the preference set for the specified object.
      sig do
        params(
          collection: String,
          object_id_: String,
          preference_set_id: String,
          categories: T.nilable(
            T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject,
                Knockapi::Internal::AnyHash
              )
            ]
          ),
          channel_types: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSetChannelTypes, Knockapi::Internal::AnyHash)),
          workflows: T.nilable(
            T::Hash[
              Symbol,
              T.any(
                T::Boolean,
                Knockapi::Models::Recipients::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject,
                Knockapi::Internal::AnyHash
              )
            ]
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::PreferenceSet)
      end
      def set_preferences(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # Unique identifier for the preference set.
        preference_set_id,
        # An object where the key is the category and the values are the preference
        # settings for that category.
        categories: nil,
        # Channel type preferences.
        channel_types: nil,
        # An object where the key is the workflow key and the values are the preference
        # settings for that workflow.
        workflows: nil,
        request_options: {}
      ); end
      # Unsets the channel data for the specified object and channel.
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def unset_channel_data(
        # The collection this object belongs to.
        collection,
        # Unique identifier for the object.
        object_id_,
        # The unique identifier for the channel.
        channel_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
