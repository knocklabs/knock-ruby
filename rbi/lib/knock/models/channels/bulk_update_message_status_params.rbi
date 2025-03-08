# typed: strong

module Knock
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(String) }
        def channel_id
        end

        sig { params(_: String).returns(String) }
        def channel_id=(_)
        end

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
            channel_id: String,
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
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
          channel_id:,
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
                channel_id: String,
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
                request_options: Knock::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Action < Knock::Enum
          abstract!

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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Archived < Knock::Enum
          abstract!

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DeliveryStatus < Knock::Enum
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

        class EngagementStatus < Knock::Enum
          abstract!

          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          LINK_CLICKED = :link_clicked
          INTERACTED = :interacted

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
