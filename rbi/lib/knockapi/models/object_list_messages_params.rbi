# typed: strong

module Knockapi
  module Models
    class ObjectListMessagesParams < Knockapi::Internal::Type::BaseModel
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

      # Limits the results to messages with the given engagement status.
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol])) }
      attr_reader :engagement_status

      sig do
        params(
          engagement_status: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol]
        )
          .void
      end
      attr_writer :engagement_status

      sig { returns(T.nilable(Knockapi::Models::ObjectListMessagesParams::InsertedAt)) }
      attr_reader :inserted_at

      sig do
        params(
          inserted_at: T.any(Knockapi::Models::ObjectListMessagesParams::InsertedAt, Knockapi::Internal::AnyHash)
        )
          .void
      end
      attr_writer :inserted_at

      # Limits the results to only the message IDs given (max 50). Note: when using this
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

      # Limits the results to messages triggered by the given workflow key.
      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      # Limits the results to messages with the given delivery status.
      sig { returns(T.nilable(T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol])) }
      attr_reader :status

      sig { params(status: T::Array[Knockapi::Models::ObjectListMessagesParams::Status::OrSymbol]).void }
      attr_writer :status

      # Limits the results to items with the corresponding tenant.
      sig { returns(T.nilable(String)) }
      attr_reader :tenant

      sig { params(tenant: String).void }
      attr_writer :tenant

      # Limits the results to only messages that were generated with the given data. See
      # [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
      # more information.
      sig { returns(T.nilable(String)) }
      attr_reader :trigger_data

      sig { params(trigger_data: String).void }
      attr_writer :trigger_data

      # Limits the results to messages related to any of the provided categories.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :workflow_categories

      sig { params(workflow_categories: T::Array[String]).void }
      attr_writer :workflow_categories

      # Limits the results to messages for a specific recipient's workflow run.
      sig { returns(T.nilable(String)) }
      attr_reader :workflow_recipient_run_id

      sig { params(workflow_recipient_run_id: String).void }
      attr_writer :workflow_recipient_run_id

      # Limits the results to messages associated with the top-level workflow run ID
      # returned by the workflow trigger request.
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
          inserted_at: T.any(Knockapi::Models::ObjectListMessagesParams::InsertedAt, Knockapi::Internal::AnyHash),
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
        inserted_at: nil,
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
              engagement_status: T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::OrSymbol],
              inserted_at: Knockapi::Models::ObjectListMessagesParams::InsertedAt,
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
      def to_hash; end

      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEEN = T.let(:seen, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        READ = T.let(:read, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        INTERACTED =
          T.let(:interacted, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        LINK_CLICKED =
          T.let(:link_clicked, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)
        ARCHIVED = T.let(:archived, Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListMessagesParams::EngagementStatus::TaggedSymbol]) }
        def self.values; end
      end

      class InsertedAt < Knockapi::Internal::Type::BaseModel
        # Limits the results to messages inserted after the given date.
        sig { returns(T.nilable(String)) }
        attr_reader :gt

        sig { params(gt: String).void }
        attr_writer :gt

        # Limits the results to messages inserted after or on the given date.
        sig { returns(T.nilable(String)) }
        attr_reader :gte

        sig { params(gte: String).void }
        attr_writer :gte

        # Limits the results to messages inserted before the given date.
        sig { returns(T.nilable(String)) }
        attr_reader :lt

        sig { params(lt: String).void }
        attr_writer :lt

        # Limits the results to messages inserted before or on the given date.
        sig { returns(T.nilable(String)) }
        attr_reader :lte

        sig { params(lte: String).void }
        attr_writer :lte

        sig { params(gt: String, gte: String, lt: String, lte: String).returns(T.attached_class) }
        def self.new(gt: nil, gte: nil, lt: nil, lte: nil); end

        sig { override.returns({gt: String, gte: String, lt: String, lte: String}) }
        def to_hash; end
      end

      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Knockapi::Models::ObjectListMessagesParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED = T.let(:queued, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        SENT = T.let(:sent, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        DELIVERY_ATTEMPTED =
          T.let(:delivery_attempted, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        UNDELIVERED = T.let(:undelivered, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        NOT_SENT = T.let(:not_sent, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)
        BOUNCED = T.let(:bounced, Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Knockapi::Models::ObjectListMessagesParams::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
