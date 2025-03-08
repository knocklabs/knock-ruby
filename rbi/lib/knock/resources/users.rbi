# typed: strong

module Knock
  module Resources
    class Users
      sig { returns(Knock::Resources::Users::Feeds) }
      def feeds
      end

      sig { returns(Knock::Resources::Users::Bulk) }
      def bulk
      end

      sig do
        params(
          user_id: String,
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          created_at: T.nilable(Time),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::User)
      end
      def update(user_id, channel_data: nil, created_at: nil, preferences: nil, request_options: {})
      end

      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::User])
      end
      def list(after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def delete(user_id, request_options: {})
      end

      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::User)
      end
      def get(user_id, request_options: {})
      end

      sig do
        params(
          channel_id: String,
          user_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ChannelData)
      end
      def get_channel_data(channel_id, user_id:, request_options: {})
      end

      sig do
        params(
          id: String,
          user_id: String,
          tenant: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::PreferenceSet)
      end
      def get_preferences(id, user_id:, tenant: nil, request_options: {})
      end

      sig do
        params(
          user_id: String,
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
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Message])
      end
      def list_messages(
        user_id,
        after: nil,
        before: nil,
        channel_id: nil,
        engagement_status: nil,
        message_ids: nil,
        page_size: nil,
        source: nil,
        status: nil,
        tenant: nil,
        trigger_data: nil,
        workflow_categories: nil,
        workflow_recipient_run_id: nil,
        workflow_run_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          user_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::UserListPreferencesResponse)
      end
      def list_preferences(user_id, request_options: {})
      end

      sig do
        params(
          user_id: String,
          after: String,
          before: String,
          page_size: Integer,
          tenant: String,
          workflow: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Schedule])
      end
      def list_schedules(
        user_id,
        after: nil,
        before: nil,
        page_size: nil,
        tenant: nil,
        workflow: nil,
        request_options: {}
      )
      end

      sig do
        params(
          user_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Subscription])
      end
      def list_subscriptions(user_id, after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        params(
          user_id: String,
          from_user_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::User)
      end
      def merge(user_id, from_user_id:, request_options: {})
      end

      sig do
        params(
          channel_id: String,
          user_id: String,
          data: T.any(
            Knock::Models::PushChannelData,
            Knock::Models::OneSignalChannelData,
            Knock::Models::SlackChannelData,
            Knock::Models::MsTeamsChannelData,
            Knock::Models::DiscordChannelData
          ),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ChannelData)
      end
      def set_channel_data(channel_id, user_id:, data:, request_options: {})
      end

      sig do
        params(
          id: String,
          user_id: String,
          categories: T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knock::Models::PreferenceSetRequest::Category::PreferenceSetWorkflowCategorySettingObject
            )
            ]
          ),
          channel_types: T.nilable(Knock::Models::PreferenceSetChannelTypes),
          workflows: T.nilable(
            T::Hash[
            Symbol,
            T.any(
              T::Boolean,
              Knock::Models::PreferenceSetRequest::Workflow::PreferenceSetWorkflowCategorySettingObject
            )
            ]
          ),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::PreferenceSet)
      end
      def set_preferences(
        id,
        user_id:,
        categories: nil,
        channel_types: nil,
        workflows: nil,
        request_options: {}
      )
      end

      sig do
        params(
          channel_id: String,
          user_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def unset_channel_data(channel_id, user_id:, request_options: {})
      end

      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
