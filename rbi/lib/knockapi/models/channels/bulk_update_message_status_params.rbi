# typed: strong

module Knockapi
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # Limits the results to messages with the given archived status.
        sig { returns(T.nilable(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)) }
        attr_reader :archived

        sig { params(archived: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol).void }
        attr_writer :archived

        # Limits the results to messages with the given delivery status.
        sig { returns(T.nilable(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)) }
        attr_reader :delivery_status

        sig do
          params(
            delivery_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol
          )
            .void
        end
        attr_writer :delivery_status

        # Limits the results to messages with the given engagement status.
        sig { returns(T.nilable(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)) }
        attr_reader :engagement_status

        sig do
          params(
            engagement_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol
          )
            .void
        end
        attr_writer :engagement_status

        # Limits the results to messages that have a tenant or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_tenant

        sig { params(has_tenant: T::Boolean).void }
        attr_writer :has_tenant

        # Limits the results to messages inserted after the given date.
        sig { returns(T.nilable(Time)) }
        attr_reader :newer_than

        sig { params(newer_than: Time).void }
        attr_writer :newer_than

        # Limits the results to messages inserted before the given date.
        sig { returns(T.nilable(Time)) }
        attr_reader :older_than

        sig { params(older_than: Time).void }
        attr_writer :older_than

        # Limits the results to messages with the given recipient IDs.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :recipient_ids

        sig { params(recipient_ids: T::Array[String]).void }
        attr_writer :recipient_ids

        # Limits the results to messages with the given tenant IDs.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tenants

        sig { params(tenants: T::Array[String]).void }
        attr_writer :tenants

        # Limits the results to only messages that were generated with the given data. See
        # [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
        # more information.
        sig { returns(T.nilable(String)) }
        attr_reader :trigger_data

        sig { params(trigger_data: String).void }
        attr_writer :trigger_data

        # Limits the results to messages with the given workflow keys.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :workflows

        sig { params(workflows: T::Array[String]).void }
        attr_writer :workflows

        sig do
          params(
            archived: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol,
            delivery_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol,
            engagement_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol,
            has_tenant: T::Boolean,
            newer_than: Time,
            older_than: Time,
            recipient_ids: T::Array[String],
            tenants: T::Array[String],
            trigger_data: String,
            workflows: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          archived: nil,
          delivery_status: nil,
          engagement_status: nil,
          has_tenant: nil,
          newer_than: nil,
          older_than: nil,
          recipient_ids: nil,
          tenants: nil,
          trigger_data: nil,
          workflows: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                archived: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol,
                delivery_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol,
                engagement_status: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol,
                has_tenant: T::Boolean,
                newer_than: Time,
                older_than: Time,
                recipient_ids: T::Array[String],
                tenants: T::Array[String],
                trigger_data: String,
                workflows: T::Array[String],
                request_options: Knockapi::RequestOptions
              }
            )
        end
        def to_hash; end

        # The target status to be applied to the messages.
        module Status
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEEN = T.let(:seen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          UNSEEN = T.let(:unseen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          READ = T.let(:read, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          UNREAD = T.let(:unread, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          ARCHIVED =
            T.let(:archived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          UNARCHIVED =
            T.let(:unarchived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          INTERACTED =
            T.let(:interacted, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          ARCHIVE =
            T.let(:archive, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          UNARCHIVE =
            T.let(:unarchive, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)
          DELETE = T.let(:delete, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol)

          sig do
            override.returns(T::Array[Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Status::TaggedSymbol])
          end
          def self.values; end
        end

        # Limits the results to messages with the given archived status.
        module Archived
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCLUDE =
            T.let(:exclude, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol)
          INCLUDE =
            T.let(:include, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol)
          ONLY = T.let(:only, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol])
          end
          def self.values; end
        end

        # Limits the results to messages with the given delivery status.
        module DeliveryStatus
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(:queued, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol)
          SENT =
            T.let(:sent, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol)
          DELIVERED =
            T.let(:delivered, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol)
          DELIVERY_ATTEMPTED =
            T.let(
              :delivery_attempted,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          UNDELIVERED =
            T.let(
              :undelivered,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          NOT_SENT =
            T.let(:not_sent, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol)
          BOUNCED =
            T.let(:bounced, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol])
          end
          def self.values; end
        end

        # Limits the results to messages with the given engagement status.
        module EngagementStatus
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEEN =
            T.let(:seen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol)
          UNSEEN =
            T.let(:unseen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol)
          READ =
            T.let(:read, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol)
          UNREAD =
            T.let(:unread, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol)
          ARCHIVED =
            T.let(
              :archived,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          UNARCHIVED =
            T.let(
              :unarchived,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          LINK_CLICKED =
            T.let(
              :link_clicked,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          INTERACTED =
            T.let(
              :interacted,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end
    end
  end
end
