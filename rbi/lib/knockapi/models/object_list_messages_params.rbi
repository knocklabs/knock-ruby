# typed: strong

module Knockapi
  module Models
    class ObjectListMessagesParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      def before
      end

      sig { params(_: String).returns(String) }
      def before=(_)
      end

      # The channel ID
      sig { returns(T.nilable(String)) }
      def channel_id
      end

      sig { params(_: String).returns(String) }
      def channel_id=(_)
      end

      # The engagement status of the message
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol])) }
      def engagement_status
      end

      sig do
        params(_: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol])
          .returns(T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol])
      end
      def engagement_status=(_)
      end

      # The message IDs to filter messages by
      sig { returns(T.nilable(T::Array[String])) }
      def message_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def message_ids=(_)
      end

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      # The source of the message (workflow key)
      sig { returns(T.nilable(String)) }
      def source
      end

      sig { params(_: String).returns(String) }
      def source=(_)
      end

      # The status of the message
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol])) }
      def status
      end

      sig do
        params(_: T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol])
          .returns(T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol])
      end
      def status=(_)
      end

      # The tenant ID
      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: String).returns(String) }
      def tenant=(_)
      end

      # The trigger data to filter messages by. Must be a valid JSON object.
      sig { returns(T.nilable(String)) }
      def trigger_data
      end

      sig { params(_: String).returns(String) }
      def trigger_data=(_)
      end

      # The workflow categories to filter messages by
      sig { returns(T.nilable(T::Array[String])) }
      def workflow_categories
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def workflow_categories=(_)
      end

      # The workflow recipient run ID to filter messages by
      sig { returns(T.nilable(String)) }
      def workflow_recipient_run_id
      end

      sig { params(_: String).returns(String) }
      def workflow_recipient_run_id=(_)
      end

      # The workflow run ID to filter messages by
      sig { returns(T.nilable(String)) }
      def workflow_run_id
      end

      sig { params(_: String).returns(String) }
      def workflow_run_id=(_)
      end

      sig do
        params(
          after: String,
          before: String,
          channel_id: String,
          engagement_status: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol],
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status: T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol],
          tenant: String,
          trigger_data: String,
          workflow_categories: T::Array[String],
          workflow_recipient_run_id: String,
          workflow_run_id: String,
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
              after: String,
              before: String,
              channel_id: String,
              engagement_status: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol],
              message_ids: T::Array[String],
              page_size: Integer,
              source: String,
              status: T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol],
              tenant: String,
              trigger_data: String,
              workflow_categories: T::Array[String],
              workflow_recipient_run_id: String,
              workflow_run_id: String,
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      module EngagementStatus
        extend Knockapi::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol) }

        SEEN = T.let(:seen, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol)
        READ = T.let(:read, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol)
        INTERACTED = T.let(:interacted, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol)
        LINK_CLICKED =
          T.let(:link_clicked, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol)
        ARCHIVED = T.let(:archived, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol)
      end

      module Status
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListMessagesParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol) }

        QUEUED = T.let(:queued, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
        SENT = T.let(:sent, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
        DELIVERY_ATTEMPTED =
          T.let(:delivery_attempted, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
        UNDELIVERED = T.let(:undelivered, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol)
      end
    end
  end
end
