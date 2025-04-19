# frozen_string_literal: true

module Knockapi
  module Models
    module Channels
      # @see Knockapi::Resources::Channels::Bulk#update_message_status
      class BulkUpdateMessageStatusParams < Knockapi::Internal::Type::BaseModel
        # @!parse
        #   extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # @!attribute [r] archived
        #   The archived status to filter messages by.
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived, nil]
        optional :archived, enum: -> { Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        #   attr_writer :archived

        # @!attribute [r] delivery_status
        #   The delivery status to filter messages by.
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus, nil]
        optional :delivery_status,
                 enum: -> { Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        #   attr_writer :delivery_status

        # @!attribute [r] engagement_status
        #   The engagement status to filter messages by.
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus, nil]
        optional :engagement_status,
                 enum: -> { Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        #   attr_writer :engagement_status

        # @!attribute [r] has_tenant
        #   Whether to include only messages that have a tenant or not.
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knockapi::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :has_tenant

        # @!attribute [r] newer_than
        #   The timestamp to filter messages by. Only include messages created after this
        #   timestamp.
        #
        #   @return [Time, nil]
        optional :newer_than, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :newer_than

        # @!attribute [r] older_than
        #   The timestamp to filter messages by. Only include messages created before this
        #   timestamp.
        #
        #   @return [Time, nil]
        optional :older_than, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :older_than

        # @!attribute [r] recipient_gids
        #   The recipient GIDs to filter messages by.
        #
        #   @return [Array<String>, nil]
        optional :recipient_gids, Knockapi::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :recipient_gids

        # @!attribute [r] recipient_ids
        #   The recipient IDs to filter messages by.
        #
        #   @return [Array<String>, nil]
        optional :recipient_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :recipient_ids

        # @!attribute [r] tenants
        #   The tenant IDs to filter messages by.
        #
        #   @return [Array<String>, nil]
        optional :tenants, Knockapi::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :tenants

        # @!attribute [r] trigger_data
        #   The trigger data to filter messages by. Must be a valid JSON object.
        #
        #   @return [String, nil]
        optional :trigger_data, String

        # @!parse
        #   # @return [String]
        #   attr_writer :trigger_data

        # @!attribute [r] workflows
        #   The workflow keys to filter messages by.
        #
        #   @return [Array<String>, nil]
        optional :workflows, Knockapi::Internal::Type::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :workflows

        # @!method initialize(archived: nil, delivery_status: nil, engagement_status: nil, has_tenant: nil, newer_than: nil, older_than: nil, recipient_gids: nil, recipient_ids: nil, tenants: nil, trigger_data: nil, workflows: nil, request_options: {})
        #   @param archived [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        #   @param delivery_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        #   @param engagement_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        #   @param has_tenant [Boolean]
        #   @param newer_than [Time]
        #   @param older_than [Time]
        #   @param recipient_gids [Array<String>]
        #   @param recipient_ids [Array<String>]
        #   @param tenants [Array<String>]
        #   @param trigger_data [String]
        #   @param workflows [Array<String>]
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

        # The archived status to filter messages by.
        module Archived
          extend Knockapi::Internal::Type::Enum

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The delivery status to filter messages by.
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

        # The engagement status to filter messages by.
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
