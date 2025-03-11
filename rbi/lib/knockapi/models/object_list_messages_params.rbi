# typed: strong

module Knockapi
  module Models
    class ObjectListMessagesParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T.nilable(String)) }
      def after
      end

      sig { params(_: String).returns(String) }
      def after=(_)
      end

      sig { returns(T.nilable(String)) }
      def before
      end

      sig { params(_: String).returns(String) }
      def before=(_)
      end

      sig { returns(T.nilable(String)) }
      def channel_id
      end

      sig { params(_: String).returns(String) }
      def channel_id=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def engagement_status
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def engagement_status=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def message_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def message_ids=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: Integer).returns(Integer) }
      def page_size=(_)
      end

      sig { returns(T.nilable(String)) }
      def source
      end

      sig { params(_: String).returns(String) }
      def source=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def status
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: String).returns(String) }
      def tenant=(_)
      end

      sig { returns(T.nilable(String)) }
      def trigger_data
      end

      sig { params(_: String).returns(String) }
      def trigger_data=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def workflow_categories
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def workflow_categories=(_)
      end

      sig { returns(T.nilable(String)) }
      def workflow_recipient_run_id
      end

      sig { params(_: String).returns(String) }
      def workflow_recipient_run_id=(_)
      end

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
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      class EngagementStatus < Knockapi::Enum
        abstract!

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < Knockapi::Enum
        abstract!

        QUEUED = :queued
        SENT = :sent
        DELIVERED = :delivered
        DELIVERY_ATTEMPTED = :delivery_attempted
        UNDELIVERED = :undelivered
        NOT_SENT = :not_sent
        BOUNCED = :bounced

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
