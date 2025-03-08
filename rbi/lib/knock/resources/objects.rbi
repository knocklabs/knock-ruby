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
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def delete(collection, object_id_, request_options: {})
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          properties: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ObjectAddSubscriptionsResponse)
      end
      def add_subscriptions(collection, object_id_, recipients:, properties: nil, request_options: {})
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          recipients: T::Array[T.any(String, Knock::Models::InlineIdentifyUserRequest, Knock::Models::InlineObjectRequest)],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ObjectDeleteSubscriptionsResponse)
      end
      def delete_subscriptions(collection, object_id_, recipients:, request_options: {})
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Object)
      end
      def get(collection, object_id_, request_options: {})
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::ChannelData)
      end
      def get_channel_data(collection, object_id_, channel_id, request_options: {})
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          preference_set_id: String,
          tenant: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::PreferenceSet)
      end
      def get_preferences(collection, object_id_, preference_set_id, tenant: nil, request_options: {})
      end

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
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Message])
      end
      def list_messages(
        collection,
        object_id_,
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
          collection: String,
          object_id_: String,
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
        collection,
        object_id_,
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
          collection: String,
          object_id_: String,
          after: String,
          before: String,
          mode: Symbol,
          objects: T::Array[T.any(String, Knock::Models::ObjectListSubscriptionsParams::Object::ObjectReference)],
          page_size: Integer,
          recipients: T::Array[T.any(String, Knock::Models::ObjectListSubscriptionsParams::Recipient::ObjectReference)],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Subscription])
      end
      def list_subscriptions(
        collection,
        object_id_,
        after: nil,
        before: nil,
        mode: nil,
        objects: nil,
        page_size: nil,
        recipients: nil,
        request_options: {}
      )
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Object)
      end
      def set(collection, object_id_, channel_data: nil, preferences: nil, request_options: {})
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
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
      def set_channel_data(collection, object_id_, channel_id, data:, request_options: {})
      end

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
        collection,
        object_id_,
        preference_set_id,
        categories: nil,
        channel_types: nil,
        workflows: nil,
        request_options: {}
      )
      end

      sig do
        params(
          collection: String,
          object_id_: String,
          channel_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def unset_channel_data(collection, object_id_, channel_id, request_options: {})
      end

      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
