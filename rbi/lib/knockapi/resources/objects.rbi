# typed: strong

module Knockapi
  module Resources
    class Objects
      sig { returns(Knockapi::Resources::Objects::Bulk) }
      def bulk
      end

      # List objects in a collection
      sig do
        params(
          collection: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Object])
      end
      def list(
        # Collection name
        collection,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an object
      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def delete(
        # Collection name
        collection,
        # Object ID
        object_id_,
        request_options: {}
      )
      end

      # Add subscriptions for an object. If a subscription already exists, it will be
      #   updated.
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def add_subscriptions(
        # Collection name
        collection,
        # Object ID
        object_id_,
        # The recipients to subscribe to the object
        recipients:,
        # The custom properties associated with the subscription
        properties: nil,
        request_options: {}
      )
      end

      # Delete subscriptions
      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(T::Array[Knockapi::Models::Recipients::Subscription])
      end
      def delete_subscriptions(
        # Collection name
        collection,
        # Object ID
        object_id_,
        recipients:,
        request_options: {}
      )
      end

      # Get an object
      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Object)
      end
      def get(
        # Collection name
        collection,
        # Object ID
        object_id_,
        request_options: {}
      )
      end

      # Get channel data
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def get_channel_data(
        # The collection
        collection,
        # The object ID
        object_id_,
        # The channel ID
        channel_id,
        request_options: {}
      )
      end

      # Get a preference set
      sig do
        params(
          collection: String,
          object_id_: String,
          preference_set_id: String,
          tenant: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Recipients::PreferenceSet)
      end
      def get_preferences(
        # Collection
        collection,
        # Object ID
        object_id_,
        # Preference set ID
        preference_set_id,
        # Tenant ID
        tenant: nil,
        request_options: {}
      )
      end

      # List messages
      sig do
        params(
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          channel_id: String,
          engagement_status: T::Array[Symbol],
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status: T::Array[Symbol],
          tenant: String,
          trigger_data: String,
          workflow_categories: T::Array[String],
          workflow_recipient_run_id: String,
          workflow_run_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Message])
      end
      def list_messages(
        # The collection name
        collection,
        # The object ID
        object_id_,
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

      # List schedules
      sig do
        params(
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          page_size: Integer,
          tenant: String,
          workflow: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Schedule])
      end
      def list_schedules(
        # The collection of the object to list schedules for
        collection,
        # The ID of the object to list schedules for
        object_id_,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        # The ID of the tenant to list schedules for
        tenant: nil,
        # The ID of the workflow to list schedules for
        workflow: nil,
        request_options: {}
      )
      end

      # List subscriptions for an object. Either list all subscriptions that belong to
      #   the object, or all subscriptions that this object has. Determined by the `mode`
      #   query parameter.
      sig do
        params(
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          mode: Symbol,
          objects: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Object::ObjectReference)],
          page_size: Integer,
          recipients: T::Array[T.any(String, Knockapi::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Recipients::Subscription])
      end
      def list_subscriptions(
        # Collection name
        collection,
        # Object ID
        object_id_,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # Mode of the request
        mode: nil,
        # Objects to filter by (only used if mode is `recipient`)
        objects: nil,
        # The page size to fetch
        page_size: nil,
        # Recipients to filter by (only used if mode is `object`)
        recipients: nil,
        request_options: {}
      )
      end

      # Set (identify) an object
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
          preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Object)
      end
      def set(
        # Collection name
        collection,
        # Object ID
        object_id_,
        # Allows inline setting channel data for a recipient
        channel_data: nil,
        # Inline set preferences for a recipient, where the key is the preference set name
        preferences: nil,
        request_options: {}
      )
      end

      # Set channel data
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          data: T.any(
            Knockapi::Models::Recipients::PushChannelData,
            Knockapi::Models::Recipients::OneSignalChannelData,
            Knockapi::Models::Recipients::SlackChannelData,
            Knockapi::Models::Recipients::MsTeamsChannelData,
            Knockapi::Models::Recipients::DiscordChannelData
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def set_channel_data(
        # The collection
        collection,
        # The object ID
        object_id_,
        # The channel ID
        channel_id,
        # Channel data for push providers
        data:,
        request_options: {}
      )
      end

      # Update a preference set
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
              Knockapi::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
            )
            ]
          ),
          channel_types: T.nilable(Knockapi::Models::Recipients::PreferenceSetChannelTypes),
          workflows: T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knockapi::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
            )
            ]
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Recipients::PreferenceSet)
      end
      def set_preferences(
        # Collection
        collection,
        # Object ID
        object_id_,
        # Preference set ID
        preference_set_id,
        # A setting for a preference set, where the key in the object is the category, and
        #   the values are the preference settings for that category.
        categories: nil,
        # Channel type preferences
        channel_types: nil,
        # A setting for a preference set, where the key in the object is the workflow key,
        #   and the values are the preference settings for that workflow.
        workflows: nil,
        request_options: {}
      )
      end

      # Unset channel data
      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def unset_channel_data(
        # The collection
        collection,
        # The object ID
        object_id_,
        # The channel ID
        channel_id,
        request_options: {}
      )
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
