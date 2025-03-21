# typed: strong

module Knockapi
  module Models
    class MessageListParams < Knockapi::BaseModel
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
      sig { returns(T.nilable(T::Array[Knockapi::Models::MessageListParams::EngagementStatus::OrSymbol])) }
      def engagement_status
      end

      sig do
        params(_: T::Array[Knockapi::Models::MessageListParams::EngagementStatus::OrSymbol])
          .returns(T::Array[Knockapi::Models::MessageListParams::EngagementStatus::OrSymbol])
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
      sig { returns(T.nilable(T::Array[Knockapi::Models::MessageListParams::Status::OrSymbol])) }
      def status
      end

      sig do
        params(_: T::Array[Knockapi::Models::MessageListParams::Status::OrSymbol])
          .returns(T::Array[Knockapi::Models::MessageListParams::Status::OrSymbol])
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
          engagement_status: T::Array[Knockapi::Models::MessageListParams::EngagementStatus::OrSymbol],
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status: T::Array[Knockapi::Models::MessageListParams::Status::OrSymbol],
          tenant: String,
          trigger_data: String,
          workflow_categories: T::Array[String],
          workflow_recipient_run_id: String,
          workflow_run_id: String,
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
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
              engagement_status: T::Array[Knockapi::Models::MessageListParams::EngagementStatus::OrSymbol],
              message_ids: T::Array[String],
              page_size: Integer,
              source: String,
              status: T::Array[Knockapi::Models::MessageListParams::Status::OrSymbol],
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

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageListParams::EngagementStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol) }

        SEEN = T.let(:seen, Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol)
        READ = T.let(:read, Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol)
        INTERACTED = T.let(:interacted, Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol)
        LINK_CLICKED = T.let(:link_clicked, Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol)
        ARCHIVED = T.let(:archived, Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Knockapi::Models::MessageListParams::EngagementStatus::TaggedSymbol]) }
          def values
          end
        end
      end

      module Status
        extend Knockapi::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::MessageListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Knockapi::Models::MessageListParams::Status::TaggedSymbol) }

        QUEUED = T.let(:queued, Knockapi::Models::MessageListParams::Status::TaggedSymbol)
        SENT = T.let(:sent, Knockapi::Models::MessageListParams::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Models::MessageListParams::Status::TaggedSymbol)
        DELIVERY_ATTEMPTED =
          T.let(:delivery_attempted, Knockapi::Models::MessageListParams::Status::TaggedSymbol)
        UNDELIVERED = T.let(:undelivered, Knockapi::Models::MessageListParams::Status::TaggedSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Models::MessageListParams::Status::TaggedSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Models::MessageListParams::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Knockapi::Models::MessageListParams::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
