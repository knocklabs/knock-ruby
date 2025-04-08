# typed: strong

module Knockapi
  module Resources
    class Users
      sig { returns(Knockapi::Resources::Users::Feeds) }
      attr_reader :feeds

      sig { returns(Knockapi::Resources::Users::Bulk) }
      attr_reader :bulk

      # Identify user
      sig do
        params(
          user_id: String,
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash)]
          ),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::User)
      end
      def update(
        # User ID
        user_id,
        # Allows inline setting channel data for a recipient
        channel_data: nil,
        created_at: nil,
        # Inline set preferences for a recipient, where the key is the preference set name
        preferences: nil,
        request_options: {}
      ); end
      # List users
      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::User])
      end
      def list(
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      ); end
      # Delete user
      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def delete(
        # User ID
        user_id,
        request_options: {}
      ); end
      # Get user
      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::User)
      end
      def get(
        # User ID
        user_id,
        request_options: {}
      ); end
      # Get channel data
      sig do
        params(
          user_id: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def get_channel_data(
        # The user ID
        user_id,
        # The channel ID
        channel_id,
        request_options: {}
      ); end
      # Get preference set
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
        # User ID
        user_id,
        # Preference set ID
        preference_set_id,
        # Tenant ID
        tenant: nil,
        request_options: {}
      ); end
      # List messages
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
        # The user ID
        user_id,
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
      ); end
      # List preference sets
      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(T::Array[Knockapi::Models::Recipients::PreferenceSet])
      end
      def list_preferences(
        # User ID
        user_id,
        request_options: {}
      ); end
      # List schedules
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
        # The ID of the user to list schedules for
        user_id,
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
      ); end
      # List subscriptions
      sig do
        params(
          user_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Internal::EntriesCursor[Knockapi::Models::Recipients::Subscription])
      end
      def list_subscriptions(
        # User ID
        user_id,
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      ); end
      # Merge two users together, where the user specified with the `from_user_id` param
      #   will be merged into the user specified by `user_id`.
      sig do
        params(
          user_id: String,
          from_user_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::User)
      end
      def merge(
        # User ID
        user_id,
        # The user ID to merge from
        from_user_id:,
        request_options: {}
      ); end
      # Set channel data
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
        # The user ID
        user_id,
        # The channel ID
        channel_id,
        # Channel data for push providers
        data:,
        request_options: {}
      ); end
      # Updates a complete preference set for a user. This is a destructive operation
      #   that will replace the existing preference set for the user.
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
        # User ID
        user_id,
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
      ); end
      # Unset channel data
      sig do
        params(
          user_id: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def unset_channel_data(
        # The user ID
        user_id,
        # The channel ID
        channel_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
