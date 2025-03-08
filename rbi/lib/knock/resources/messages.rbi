# typed: strong

module Knock
  module Resources
    class Messages
      sig { returns(Knock::Resources::Messages::Batch) }
      def batch
      end

      sig do
        params(
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
      def list(
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
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def archive(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def get(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::MessageGetContentResponse)
      end
      def get_content(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          trigger_data: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::ItemsCursor[Knock::Models::Activity])
      end
      def list_activities(
        message_id,
        after: nil,
        before: nil,
        page_size: nil,
        trigger_data: nil,
        request_options: {}
      )
      end

      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::MessageDeliveryLog])
      end
      def list_delivery_logs(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        params(
          message_id: String,
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::MessageEvent])
      end
      def list_events(message_id, after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        params(
          message_id: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def mark_as_interacted(message_id, metadata: nil, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def mark_as_read(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def mark_as_seen(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def mark_as_unread(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def mark_as_unseen(message_id, request_options: {})
      end

      sig do
        params(
          message_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Message)
      end
      def unarchive(message_id, request_options: {})
      end

      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
