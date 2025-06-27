# typed: strong

module Knockapi
  module Models
    class ObjectListMessagesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ObjectListMessagesParams, Knockapi::Internal::AnyHash)
        end

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
      sig do
        returns(
          T.nilable(
            T::Array[
              Knockapi::ObjectListMessagesParams::EngagementStatus::OrSymbol
            ]
          )
        )
      end
      attr_reader :engagement_status

      sig do
        params(
          engagement_status:
            T::Array[
              Knockapi::ObjectListMessagesParams::EngagementStatus::OrSymbol
            ]
        ).void
      end
      attr_writer :engagement_status

      sig { returns(T.nilable(Knockapi::ObjectListMessagesParams::InsertedAt)) }
      attr_reader :inserted_at

      sig do
        params(
          inserted_at: Knockapi::ObjectListMessagesParams::InsertedAt::OrHash
        ).void
      end
      attr_writer :inserted_at

      # Limits the results to only the message IDs given (max 50). Note: when using this
      # option, the results will be subject to any other filters applied to the query.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :message_ids

      sig { params(message_ids: T::Array[String]).void }
      attr_writer :message_ids

      # The number of items per page (defaults to 50).
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
      sig do
        returns(
          T.nilable(
            T::Array[Knockapi::ObjectListMessagesParams::Status::OrSymbol]
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[Knockapi::ObjectListMessagesParams::Status::OrSymbol]
        ).void
      end
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
          engagement_status:
            T::Array[
              Knockapi::ObjectListMessagesParams::EngagementStatus::OrSymbol
            ],
          inserted_at: Knockapi::ObjectListMessagesParams::InsertedAt::OrHash,
          message_ids: T::Array[String],
          page_size: Integer,
          source: String,
          status:
            T::Array[Knockapi::ObjectListMessagesParams::Status::OrSymbol],
          tenant: String,
          trigger_data: String,
          workflow_categories: T::Array[String],
          workflow_recipient_run_id: String,
          workflow_run_id: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor to fetch entries after.
        after: nil,
        # The cursor to fetch entries before.
        before: nil,
        # Limits the results to items with the corresponding channel ID.
        channel_id: nil,
        # Limits the results to messages with the given engagement status.
        engagement_status: nil,
        inserted_at: nil,
        # Limits the results to only the message IDs given (max 50). Note: when using this
        # option, the results will be subject to any other filters applied to the query.
        message_ids: nil,
        # The number of items per page (defaults to 50).
        page_size: nil,
        # Limits the results to messages triggered by the given workflow key.
        source: nil,
        # Limits the results to messages with the given delivery status.
        status: nil,
        # Limits the results to items with the corresponding tenant.
        tenant: nil,
        # Limits the results to only messages that were generated with the given data. See
        # [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
        # more information.
        trigger_data: nil,
        # Limits the results to messages related to any of the provided categories.
        workflow_categories: nil,
        # Limits the results to messages for a specific recipient's workflow run.
        workflow_recipient_run_id: nil,
        # Limits the results to messages associated with the top-level workflow run ID
        # returned by the workflow trigger request.
        workflow_run_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            channel_id: String,
            engagement_status:
              T::Array[
                Knockapi::ObjectListMessagesParams::EngagementStatus::OrSymbol
              ],
            inserted_at: Knockapi::ObjectListMessagesParams::InsertedAt,
            message_ids: T::Array[String],
            page_size: Integer,
            source: String,
            status:
              T::Array[Knockapi::ObjectListMessagesParams::Status::OrSymbol],
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
          T.type_alias do
            T.all(Symbol, Knockapi::ObjectListMessagesParams::EngagementStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEEN =
          T.let(
            :seen,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        UNSEEN =
          T.let(
            :unseen,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        READ =
          T.let(
            :read,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        UNREAD =
          T.let(
            :unread,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        UNARCHIVED =
          T.let(
            :unarchived,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        LINK_CLICKED =
          T.let(
            :link_clicked,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )
        INTERACTED =
          T.let(
            :interacted,
            Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Knockapi::ObjectListMessagesParams::EngagementStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class InsertedAt < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::ObjectListMessagesParams::InsertedAt,
              Knockapi::Internal::AnyHash
            )
          end

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

        sig do
          params(gt: String, gte: String, lt: String, lte: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Limits the results to messages inserted after the given date.
          gt: nil,
          # Limits the results to messages inserted after or on the given date.
          gte: nil,
          # Limits the results to messages inserted before the given date.
          lt: nil,
          # Limits the results to messages inserted before or on the given date.
          lte: nil
        )
        end

        sig do
          override.returns({ gt: String, gte: String, lt: String, lte: String })
        end
        def to_hash
        end
      end

      module Status
        extend Knockapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Knockapi::ObjectListMessagesParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(
            :queued,
            Knockapi::ObjectListMessagesParams::Status::TaggedSymbol
          )
        SENT =
          T.let(:sent, Knockapi::ObjectListMessagesParams::Status::TaggedSymbol)
        DELIVERED =
          T.let(
            :delivered,
            Knockapi::ObjectListMessagesParams::Status::TaggedSymbol
          )
        DELIVERY_ATTEMPTED =
          T.let(
            :delivery_attempted,
            Knockapi::ObjectListMessagesParams::Status::TaggedSymbol
          )
        UNDELIVERED =
          T.let(
            :undelivered,
            Knockapi::ObjectListMessagesParams::Status::TaggedSymbol
          )
        NOT_SENT =
          T.let(
            :not_sent,
            Knockapi::ObjectListMessagesParams::Status::TaggedSymbol
          )
        BOUNCED =
          T.let(
            :bounced,
            Knockapi::ObjectListMessagesParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Knockapi::ObjectListMessagesParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
