# frozen_string_literal: true

module Knockapi
  module Models
    module Channels
      # @see Knockapi::Resources::Channels::Bulk#update_message_status
      class BulkUpdateMessageStatusParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute archived
        #   Limits the results to messages with the given archived status.
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived, nil]
        optional :archived, enum: -> { Knockapi::Channels::BulkUpdateMessageStatusParams::Archived }

        # @!attribute delivery_status
        #   Limits the results to messages with the given delivery status.
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus, nil]
        optional :delivery_status, enum: -> { Knockapi::Channels::BulkUpdateMessageStatusParams::DeliveryStatus }

        # @!attribute engagement_status
        #   Limits the results to messages with the given engagement status.
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus, nil]
        optional :engagement_status,
                 enum: -> { Knockapi::Channels::BulkUpdateMessageStatusParams::EngagementStatus }

        # @!attribute has_tenant
        #   Limits the results to messages that have a tenant or not.
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knockapi::Internal::Type::Boolean

        # @!attribute newer_than
        #   Limits the results to messages inserted after the given date.
        #
        #   @return [Time, nil]
        optional :newer_than, Time

        # @!attribute older_than
        #   Limits the results to messages inserted before the given date.
        #
        #   @return [Time, nil]
        optional :older_than, Time

        # @!attribute recipient_ids
        #   Limits the results to messages with the given recipient IDs.
        #
        #   @return [Array<String>, nil]
        optional :recipient_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!attribute tenants
        #   Limits the results to messages with the given tenant IDs.
        #
        #   @return [Array<String>, nil]
        optional :tenants, Knockapi::Internal::Type::ArrayOf[String]

        # @!attribute trigger_data
        #   Limits the results to only messages that were generated with the given data. See
        #   [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
        #   more information.
        #
        #   @return [String, nil]
        optional :trigger_data, String

        # @!attribute workflows
        #   Limits the results to messages with the given workflow keys.
        #
        #   @return [Array<String>, nil]
        optional :workflows, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(archived: nil, delivery_status: nil, engagement_status: nil, has_tenant: nil, newer_than: nil, older_than: nil, recipient_ids: nil, tenants: nil, trigger_data: nil, workflows: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Channels::BulkUpdateMessageStatusParams} for more details.
        #
        #   @param archived [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived] Limits the results to messages with the given archived status.
        #
        #   @param delivery_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus] Limits the results to messages with the given delivery status.
        #
        #   @param engagement_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus] Limits the results to messages with the given engagement status.
        #
        #   @param has_tenant [Boolean] Limits the results to messages that have a tenant or not.
        #
        #   @param newer_than [Time] Limits the results to messages inserted after the given date.
        #
        #   @param older_than [Time] Limits the results to messages inserted before the given date.
        #
        #   @param recipient_ids [Array<String>] Limits the results to messages with the given recipient IDs.
        #
        #   @param tenants [Array<String>] Limits the results to messages with the given tenant IDs.
        #
        #   @param trigger_data [String] Limits the results to only messages that were generated with the given data. See
        #
        #   @param workflows [Array<String>] Limits the results to messages with the given workflow keys.
        #
        #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

        module Action
          extend Knockapi::Internal::Type::Enum

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

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Limits the results to messages with the given archived status.
        module Archived
          extend Knockapi::Internal::Type::Enum

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Limits the results to messages with the given delivery status.
        module DeliveryStatus
          extend Knockapi::Internal::Type::Enum

          QUEUED = :queued
          SENT = :sent
          DELIVERED = :delivered
          DELIVERY_ATTEMPTED = :delivery_attempted
          UNDELIVERED = :undelivered
          NOT_SENT = :not_sent
          BOUNCED = :bounced

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Limits the results to messages with the given engagement status.
        module EngagementStatus
          extend Knockapi::Internal::Type::Enum

          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          LINK_CLICKED = :link_clicked
          INTERACTED = :interacted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
