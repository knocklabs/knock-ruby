# typed: strong

module Knockapi
  module Models
    class ObjectListMessagesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The cursor to fetch entries after
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The channel ID
      sig { returns(T.nilable(String)) }
      attr_reader :channel_id

      sig { params(channel_id: String).void }
      attr_writer :channel_id

      # The engagement status of the message
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol])) }
      attr_reader :engagement_status

      sig do
        params(
          engagement_status: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol]
        )
          .void
      end
      attr_writer :engagement_status

      # The message IDs to filter messages by
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :message_ids

      sig { params(message_ids: T::Array[String]).void }
      attr_writer :message_ids

      # The page size to fetch
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # The source of the message (workflow key)
      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      # The status of the message
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol])) }
      attr_reader :status

      sig { params(status: T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol]).void }
      attr_writer :status

      # The tenant ID
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      # The trigger data to filter messages by. Must be a valid JSON object.
      sig { returns(T.nilable(String)) }
      attr_reader :trigger_data

      sig { params(trigger_data: String).void }
      attr_writer :trigger_data

      # The workflow categories to filter messages by
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :workflow_categories

      sig { params(workflow_categories: T::Array[String]).void }
      attr_writer :workflow_categories

      # The workflow recipient run ID to filter messages by
      sig { returns(T.nilable(String)) }
      attr_reader :workflow_recipient_run_id

      sig { params(workflow_recipient_run_id: String).void }
      attr_writer :workflow_recipient_run_id

      # The workflow run ID to filter messages by
      sig { returns(T.nilable(String)) }
      attr_reader :workflow_run_id

      sig { params(workflow_run_id: String).void }
      attr_writer :workflow_run_id

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
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
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
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol) }

        SEEN = T.let(:seen, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        READ = T.let(:read, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        INTERACTED =
          T.let(:interacted, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        LINK_CLICKED =
          T.let(:link_clicked, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        ARCHIVED = T.let(:archived, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol]) }
        def self.values
        end
      end

      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListMessagesParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol) }

        QUEUED = T.let(:queued, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        SENT = T.let(:sent, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        DELIVERY_ATTEMPTED =
          T.let(:delivery_attempted, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        UNDELIVERED = T.let(:undelivered, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
