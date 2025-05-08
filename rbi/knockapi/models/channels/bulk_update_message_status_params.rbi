# typed: strong

module Knockapi
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # Limits the results to messages with the given archived status.
        sig do
          returns(
            T.nilable(
              Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol
            )
          )
        end
        attr_reader :archived

        sig do
          params(
            archived:
              Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol
          ).void
        end
        attr_writer :archived

        # Limits the results to messages with the given delivery status.
        sig do
          returns(
            T.nilable(
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol
            )
          )
        end
        attr_reader :delivery_status

        sig do
          params(
            delivery_status:
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol
          ).void
        end
        attr_writer :delivery_status

        # Limits the results to messages with the given engagement status.
        sig do
          returns(
            T.nilable(
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol
            )
          )
        end
        attr_reader :engagement_status

        sig do
          params(
            engagement_status:
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol
          ).void
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
            archived:
              Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol,
            delivery_status:
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol,
            engagement_status:
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol,
            has_tenant: T::Boolean,
            newer_than: Time,
            older_than: Time,
            recipient_ids: T::Array[String],
            tenants: T::Array[String],
            trigger_data: String,
            workflows: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Limits the results to messages with the given archived status.
          archived: nil,
          # Limits the results to messages with the given delivery status.
          delivery_status: nil,
          # Limits the results to messages with the given engagement status.
          engagement_status: nil,
          # Limits the results to messages that have a tenant or not.
          has_tenant: nil,
          # Limits the results to messages inserted after the given date.
          newer_than: nil,
          # Limits the results to messages inserted before the given date.
          older_than: nil,
          # Limits the results to messages with the given recipient IDs.
          recipient_ids: nil,
          # Limits the results to messages with the given tenant IDs.
          tenants: nil,
          # Limits the results to only messages that were generated with the given data. See
          # [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
          # more information.
          trigger_data: nil,
          # Limits the results to messages with the given workflow keys.
          workflows: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archived:
                Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::OrSymbol,
              delivery_status:
                Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::OrSymbol,
              engagement_status:
                Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::OrSymbol,
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
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Knockapi::Channels::BulkUpdateMessageStatusParams::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEEN =
            T.let(
              :seen,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          UNSEEN =
            T.let(
              :unseen,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          READ =
            T.let(
              :read,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          UNREAD =
            T.let(
              :unread,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          UNARCHIVED =
            T.let(
              :unarchived,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          INTERACTED =
            T.let(
              :interacted,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          ARCHIVE =
            T.let(
              :archive,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          UNARCHIVE =
            T.let(
              :unarchive,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )
          DELETE =
            T.let(
              :delete,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Channels::BulkUpdateMessageStatusParams::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Limits the results to messages with the given archived status.
        module Archived
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Knockapi::Channels::BulkUpdateMessageStatusParams::Archived
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCLUDE =
            T.let(
              :exclude,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol
            )
          INCLUDE =
            T.let(
              :include,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol
            )
          ONLY =
            T.let(
              :only,
              Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Channels::BulkUpdateMessageStatusParams::Archived::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Limits the results to messages with the given delivery status.
        module DeliveryStatus
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          DELIVERY_ATTEMPTED =
            T.let(
              :delivery_attempted,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          UNDELIVERED =
            T.let(
              :undelivered,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          NOT_SENT =
            T.let(
              :not_sent,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )
          BOUNCED =
            T.let(
              :bounced,
              Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Limits the results to messages with the given engagement status.
        module EngagementStatus
          extend Knockapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEEN =
            T.let(
              :seen,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          UNSEEN =
            T.let(
              :unseen,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          READ =
            T.let(
              :read,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          UNREAD =
            T.let(
              :unread,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          ARCHIVED =
            T.let(
              :archived,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          UNARCHIVED =
            T.let(
              :unarchived,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          LINK_CLICKED =
            T.let(
              :link_clicked,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )
          INTERACTED =
            T.let(
              :interacted,
              Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
