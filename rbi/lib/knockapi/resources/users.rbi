# typed: strong

module Knockapi
  module Resources
    class Users
      sig { returns(Knockapi::Resources::Users::Feeds) }
      attr_reader :feeds

      sig { returns(Knockapi::Resources::Users::Bulk) }
      attr_reader :bulk

      # Identify a user
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
      # Returns a list of users
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
      # Deletes a user
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
      # Returns a user
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
      # Get channel data for a user
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
      # Returns a paginated list of messages for a user
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
      # List preference sets for a user
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
      # List schedules for a user
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
      # List subscriptions for a user
      sig do
        params(
          user_id: String,
          after: String,
          before: String,
          objects: T::Array[
            T.any(
              String,
              Knockapi::Models::UserListSubscriptionsParams::Object::UnionMember1,
              Knockapi::Internal::AnyHash
            )
          ],
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
        # Objects to filter by
        objects: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      ); end
      # Merges two users together
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
        from_user_id: nil,
        request_options: {}
      ); end
      # Sets channel data for a user
      sig do
        params(
          user_id: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::Recipients::RecipientsChannelData)
      end
      def set_channel_data(
        # The user ID
        user_id,
        # The channel ID
        channel_id,
        request_options: {}
      ); end
      # Unsets channel data for a user
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
