# typed: strong

module Knock
  module Resources
    class Objects
      sig { returns(Knock::Resources::Objects::Bulk) }
      def bulk
      end

      sig do
        params(
          collection: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Object])
      end
      def list(collection, after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          collection: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def delete(id, collection:, request_options: {})
      end

      sig do
        params(
          object_id_: String,
          collection: String,
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ObjectAddSubscriptionsResponse)
      end
      def add_subscriptions(object_id_, collection:, recipients:, properties: nil, request_options: {})
      end

      sig do
        params(
          object_id_: String,
          collection: String,
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ObjectDeleteSubscriptionsResponse)
      end
      def delete_subscriptions(object_id_, collection:, recipients:, request_options: {})
      end

      sig do
        params(
          id: String,
          collection: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Object)
      end
      def get(id, collection:, request_options: {})
      end

      sig do
        params(
          channel_id: String,
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ChannelData)
      end
      def get_channel_data(channel_id, collection:, object_id_:, request_options: {})
      end

      sig do
        params(
          id: String,
          collection: String,
          object_id_: String,
          tenant: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::PreferenceSet)
      end
      def get_preferences(id, collection:, object_id_:, tenant: nil, request_options: {})
      end

      sig do
        params(
          id: String,
          collection: String,
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
        id,
        collection:,
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
          object_id_: String,
          collection: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ObjectListPreferencesResponse)
      end
      def list_preferences(object_id_, collection:, request_options: {})
      end

      sig do
        params(
          id: String,
          collection: String,
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
        id,
        collection:,
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
          object_id_: String,
          collection: String,
          after: String,
          before: String,
          mode: Symbol,
          page_size: Integer,
          recipients: T::Array[T.any(String, Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Subscription])
      end
      def list_subscriptions(
        object_id_,
        collection:,
        after: nil,
        before: nil,
        mode: nil,
        page_size: nil,
        recipients: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          collection: String,
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Object)
      end
      def set(id, collection:, channel_data: nil, preferences: nil, request_options: {})
      end

      sig do
        params(
          channel_id: String,
          collection: String,
          object_id_: String,
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
      def set_channel_data(channel_id, collection:, object_id_:, data:, request_options: {})
      end

      sig do
        params(
          id: String,
          collection: String,
          object_id_: String,
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
        collection:,
        object_id_:,
        categories: nil,
        channel_types: nil,
        workflows: nil,
        request_options: {}
      )
      end

      sig do
        params(
          channel_id: String,
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def unset_channel_data(channel_id, collection:, object_id_:, request_options: {})
      end

      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
