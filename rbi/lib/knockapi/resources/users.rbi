# typed: strong

module Knockapi
  module Resources
    class Users
      sig { returns(Knockapi::Resources::Users::Feeds) }
      attr_reader :feeds

      sig { returns(Knockapi::Resources::Users::Guides) }
      attr_reader :guides

      sig { returns(Knockapi::Resources::Users::Bulk) }
      attr_reader :bulk

      # Create or update a user with the provided identification data.
      sig do
        params(
          user_id: String,
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlineChannelDataRequestItem, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::InlinePreferenceSetRequestItem, Knockapi::Internal::AnyHash)]
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::User)
      end
      def update(
        # The ID of the user to identify.
        user_id,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # The creation date of the user from your system.
        created_at: nil,
        # Inline set preferences for a recipient, where the key is the preference set name
        preferences: nil,
        request_options: {}
      ); end
      # Retrieve a paginated list of users in the environment.
      sig do
        params(
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::UserListParams::Include::OrSymbol],
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::User])
      end
      def list(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Associated resources to include in the response.
        include: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      ); end
      # Permanently delete a user and all associated data.
      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def delete(
        # The ID of the user to delete.
        user_id,
        request_options: {}
      ); end
      # Retrieve a specific user by their ID.
      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::User)
      end
      def get(
        # The ID of the user to retrieve.
        user_id,
        request_options: {}
      ); end
      # Retrieves the channel data for a specific user and channel ID.
      sig do
        params(
          user_id: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def get_channel_data(
        # The ID for the user that you set when identifying them in Knock.
        user_id,
        # The unique identifier for the channel.
        channel_id,
        request_options: {}
      ); end
      # Retrieves a specific preference set for a user identified by the preference set
      # ID.
      sig do
        params(
          user_id: String,
          preference_set_id: String,
          tenant: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::PreferenceSet)
      end
      def get_preferences(
        # The ID for the user that you set when identifying them in Knock.
        user_id,
        # Unique identifier for the preference set.
        preference_set_id,
        # The unique identifier for the tenant.
        tenant: nil,
        request_options: {}
      ); end
      # Returns a paginated list of messages for a specific user. Allows filtering by
      # message status and provides various sorting options.
      sig do
        params(
          user_id: String,
          after: String,
          before: String,
          channel_id: String,
          engagement_status: T::Array[Knockapi::Models::UserListMessagesParams::EngagementStatus::OrSymbol],
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status: T::Array[Knockapi::Models::UserListMessagesParams::Status::OrSymbol],
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
        # The user ID to list messages for.
        user_id,
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
      # Retrieves a list of all preference sets for a specific user.
      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::PreferenceSet])
      end
      def list_preferences(
        # The ID for the user that you set when identifying them in Knock.
        user_id,
        request_options: {}
      ); end
      # Returns a paginated list of schedules for a specific user. Can be filtered by
      # workflow and tenant.
      sig do
        params(
          user_id: String,
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
        # The ID of the user to list schedules for.
        user_id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # The number of items per page.
        page_size: nil,
        # The ID of the tenant to list schedules for.
        tenant: nil,
        # The ID of the workflow to list schedules for.
        workflow: nil,
        request_options: {}
      ); end
      # Retrieves a paginated list of subscriptions for a specific user. Allows
      # filtering by objects and includes optional preference data.
      sig do
        params(
          user_id: String,
          after: String,
          before: String,
          include: T::Array[Knockapi::Models::UserListSubscriptionsParams::Include::OrSymbol],
          objects: T::Array[T.any(String, Knockapi::Models::RecipientReference::ObjectReference, Knockapi::Internal::AnyHash)],
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Recipients::Subscription])
      end
      def list_subscriptions(
        # The ID for the user that you set when identifying them in Knock.
        user_id,
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Associated resources to include in the response.
        include: nil,
        # Only return subscriptions for the given recipients.
        objects: nil,
        # The number of items per page.
        page_size: nil,
        request_options: {}
      ); end
      # Merge two users together, where the user specified with the `from_user_id` param
      # will be merged into the user specified by `user_id`.
      sig do
        params(
          user_id: String,
          from_user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::User)
      end
      def merge(
        # The id of the user to merge into.
        user_id,
        # The user ID to merge from.
        from_user_id:,
        request_options: {}
      ); end
      # Updates or creates channel data for a specific user and channel ID.
      sig do
        params(
          user_id: String,
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
        # The ID for the user that you set when identifying them in Knock.
        user_id,
        # The unique identifier for the channel.
        channel_id,
        # Channel data for a given channel type.
        data:,
        request_options: {}
      ); end
      # Updates a complete preference set for a user. This is a destructive operation
      # that will replace the existing preference set for the user.
      sig do
        params(
          user_id: String,
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
        # The ID for the user that you set when identifying them in Knock.
        user_id,
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
      # Deletes channel data for a specific user and channel ID.
      sig do
        params(
          user_id: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def unset_channel_data(
        # The ID for the user that you set when identifying them in Knock.
        user_id,
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
