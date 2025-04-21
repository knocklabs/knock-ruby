# typed: strong

module Knockapi
  module Models
    class UserListMessagesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # The cursor to fetch entries after.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The cursor to fetch entries before.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Limits the results to items with the corresponding channel ID.
      sig { returns(T.nilable(String)) }
      attr_reader :channel_id

      sig { params(channel_id: String).void }
      attr_writer :channel_id

      # One or more engagement statuses. Limits results to messages with the given
      # engagement status(es).
      sig { returns(T.nilable(T::Array[Knockapi::Models::UserListMessagesParams::EngagementStatus::OrSymbol])) }
      attr_reader :engagement_status

      sig do
        params(engagement_status: T::Array[Knockapi::Models::UserListMessagesParams::EngagementStatus::OrSymbol])
          .void
      end
      attr_writer :engagement_status

      # Limits the results to only the message ids given (max 50). Note: when using this
      # option, the results will be subject to any other filters applied to the query.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :message_ids

      sig { params(message_ids: T::Array[String]).void }
      attr_writer :message_ids

      # The number of items per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Key of the source that triggered the message to limit results to.
      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      # One or more delivery statuses. Limits results to messages with the given
      # delivery status(es).
      sig { returns(T.nilable(T::Array[Knockapi::Models::UserListMessagesParams::Status::OrSymbol])) }
      attr_reader :status

      sig { params(status: T::Array[Knockapi::Models::UserListMessagesParams::Status::OrSymbol]).void }
      attr_writer :status

      # Limits the results to items with the corresponding tenant, or where the tenant
      # is empty.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      # Limits the results to only items that were generated with the given data.
      sig { returns(T.nilable(String)) }
      attr_reader :trigger_data

      sig { params(trigger_data: String).void }
      attr_writer :trigger_data

      # Limits the results to only items related to any of the provided categories.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :workflow_categories

      sig { params(workflow_categories: T::Array[String]).void }
      attr_writer :workflow_categories

      # Limits the results to messages for a specific recipient's workflow run.
      sig { returns(T.nilable(String)) }
      attr_reader :workflow_recipient_run_id

      sig { params(workflow_recipient_run_id: String).void }
      attr_writer :workflow_recipient_run_id

      # Limits the results to messages triggered by the top-level workflow run ID.
      sig { returns(T.nilable(String)) }
      attr_reader :workflow_run_id

      sig { params(workflow_run_id: String).void }
      attr_writer :workflow_run_id

      sig do
        params(
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
      ); end
      sig do
        override
          .returns(
            {
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
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEEN = T.let(:seen, Knockapi::Models::UserListMessagesParams::EngagementStatus::TaggedSymbol)
        READ = T.let(:read, Knockapi::Models::UserListMessagesParams::EngagementStatus::TaggedSymbol)
        INTERACTED = T.let(:interacted, Knockapi::Models::UserListMessagesParams::EngagementStatus::TaggedSymbol)
        LINK_CLICKED =
          T.let(:link_clicked, Knockapi::Models::UserListMessagesParams::EngagementStatus::TaggedSymbol)
        ARCHIVED = T.let(:archived, Knockapi::Models::UserListMessagesParams::EngagementStatus::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::UserListMessagesParams::EngagementStatus::TaggedSymbol]) }
        def self.values; end
      end

      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::UserListMessagesParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)
        SENT = T.let(:sent, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)
        DELIVERY_ATTEMPTED =
          T.let(:delivery_attempted, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)
        UNDELIVERED = T.let(:undelivered, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::UserListMessagesParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
