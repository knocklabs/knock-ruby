# typed: strong

module Knockapi
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T.nilable(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)) }
        def archived
        end

        sig do
          params(_: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)
            .returns(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)
        end
        def archived=(_)
        end

        sig { returns(T.nilable(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)) }
        def delivery_status
        end

        sig do
          params(_: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
            .returns(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
        end
        def delivery_status=(_)
        end

        sig { returns(T.nilable(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)) }
        def engagement_status
        end

        sig do
          params(_: Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
            .returns(Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
        end
        def engagement_status=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def has_tenant
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def has_tenant=(_)
        end

        sig { returns(T.nilable(Time)) }
        def newer_than
        end

        sig { params(_: Time).returns(Time) }
        def newer_than=(_)
        end

        sig { returns(T.nilable(Time)) }
        def older_than
        end

        sig { params(_: Time).returns(Time) }
        def older_than=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def recipient_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def recipient_ids=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def tenants
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def tenants=(_)
        end

        sig { returns(T.nilable(String)) }
        def trigger_data
        end

        sig { params(_: String).returns(String) }
        def trigger_data=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def workflows
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def workflows=(_)
        end

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
            request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
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
        )
        end

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
        def to_hash
        end

        module Action
          extend Knockapi::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol) }

          SEEN = T.let(:seen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          UNSEEN = T.let(:unseen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          READ = T.let(:read, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          UNREAD = T.let(:unread, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          ARCHIVED = T.let(:archived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          UNARCHIVED =
            T.let(:unarchived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          INTERACTED =
            T.let(:interacted, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          ARCHIVE = T.let(:archive, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          UNARCHIVE =
            T.let(:unarchive, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
          DELETE = T.let(:delete, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action::OrSymbol)
        end

        module Archived
          extend Knockapi::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol) }

          EXCLUDE = T.let(:exclude, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)
          INCLUDE = T.let(:include, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)
          ONLY = T.let(:only, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol)
        end

        module DeliveryStatus
          extend Knockapi::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol) }

          QUEUED =
            T.let(:queued, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
          SENT = T.let(:sent, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
          DELIVERED =
            T.let(:delivered, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
          DELIVERY_ATTEMPTED =
            T.let(
              :delivery_attempted,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol
            )
          UNDELIVERED =
            T.let(:undelivered, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
          NOT_SENT =
            T.let(:not_sent, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
          BOUNCED =
            T.let(:bounced, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol)
        end

        module EngagementStatus
          extend Knockapi::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol) }

          SEEN =
            T.let(:seen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
          UNSEEN =
            T.let(:unseen, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
          READ =
            T.let(:read, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
          UNREAD =
            T.let(:unread, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
          ARCHIVED =
            T.let(:archived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
          UNARCHIVED =
            T.let(:unarchived, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
          LINK_CLICKED =
            T.let(
              :link_clicked,
              Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol
            )
          INTERACTED =
            T.let(:interacted, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol)
        end
      end
    end
  end
end
