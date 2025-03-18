# typed: strong

module Knockapi
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T.nilable(Symbol)) }
        def archived
        end

        sig { params(_: Symbol).returns(Symbol) }
        def archived=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def delivery_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def delivery_status=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def engagement_status
        end

        sig { params(_: Symbol).returns(Symbol) }
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
            archived: Symbol,
            delivery_status: Symbol,
            engagement_status: Symbol,
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
                archived: Symbol,
                delivery_status: Symbol,
                engagement_status: Symbol,
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

        class Action < Knockapi::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          INTERACTED = :interacted
          ARCHIVE = :archive
          UNARCHIVE = :unarchive
          DELETE = :delete
        end

        class Archived < Knockapi::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only
        end

        class DeliveryStatus < Knockapi::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          QUEUED = :queued
          SENT = :sent
          DELIVERED = :delivered
          DELIVERY_ATTEMPTED = :delivery_attempted
          UNDELIVERED = :undelivered
          NOT_SENT = :not_sent
          BOUNCED = :bounced
        end

        class EngagementStatus < Knockapi::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          LINK_CLICKED = :link_clicked
          INTERACTED = :interacted
        end
      end
    end
  end
end
