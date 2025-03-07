# frozen_string_literal: true

module Knock
  module Models
    module Channels
      class BulkUpdateMessageStatusParams < Knock::BaseModel
        # @!parse
        #   extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        # @!attribute channel_id
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute [r] archived
        #
        #   @return [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Archived, nil]
        optional :archived, enum: -> { Knock::Models::Channels::BulkUpdateMessageStatusParams::Archived }

        # @!parse
        #   # @return [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        #   attr_writer :archived

        # @!attribute [r] delivery_status
        #
        #   @return [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus, nil]
        optional :delivery_status,
                 enum: -> { Knock::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus }

        # @!parse
        #   # @return [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        #   attr_writer :delivery_status

        # @!attribute [r] engagement_status
        #
        #   @return [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus, nil]
        optional :engagement_status,
                 enum: -> { Knock::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus }

        # @!parse
        #   # @return [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        #   attr_writer :engagement_status

        # @!attribute [r] has_tenant
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knock::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :has_tenant

        # @!attribute [r] newer_than
        #
        #   @return [Time, nil]
        optional :newer_than, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :newer_than

        # @!attribute [r] older_than
        #
        #   @return [Time, nil]
        optional :older_than, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :older_than

        # @!attribute [r] recipient_ids
        #
        #   @return [Array<String>, nil]
        optional :recipient_ids, Knock::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :recipient_ids

        # @!attribute [r] tenants
        #
        #   @return [Array<String>, nil]
        optional :tenants, Knock::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :tenants

        # @!attribute [r] trigger_data
        #
        #   @return [String, nil]
        optional :trigger_data, String

        # @!parse
        #   # @return [String]
        #   attr_writer :trigger_data

        # @!attribute [r] workflows
        #
        #   @return [Array<String>, nil]
        optional :workflows, Knock::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :workflows

        # @!parse
        #   # @param channel_id [String]
        #   # @param archived [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        #   # @param delivery_status [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        #   # @param engagement_status [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        #   # @param has_tenant [Boolean]
        #   # @param newer_than [Time]
        #   # @param older_than [Time]
        #   # @param recipient_ids [Array<String>]
        #   # @param tenants [Array<String>]
        #   # @param trigger_data [String]
        #   # @param workflows [Array<String>]
        #   # @param request_options [Knock::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     channel_id:,
        #     archived: nil,
        #     delivery_status: nil,
        #     engagement_status: nil,
        #     has_tenant: nil,
        #     newer_than: nil,
        #     older_than: nil,
        #     recipient_ids: nil,
        #     tenants: nil,
        #     trigger_data: nil,
        #     workflows: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Knock::BaseModel) -> void

        # @abstract
        #
        class Action < Knock::Enum
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

          finalize!
        end

        # @abstract
        #
        class Archived < Knock::Enum
          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          finalize!
        end

        # @abstract
        #
        class DeliveryStatus < Knock::Enum
          QUEUED = :queued
          SENT = :sent
          DELIVERED = :delivered
          DELIVERY_ATTEMPTED = :delivery_attempted
          UNDELIVERED = :undelivered
          NOT_SENT = :not_sent
          BOUNCED = :bounced

          finalize!
        end

        # @abstract
        #
        class EngagementStatus < Knock::Enum
          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          LINK_CLICKED = :link_clicked
          INTERACTED = :interacted

          finalize!
        end
      end
    end
  end
end
