# frozen_string_literal: true

module Knockapi
  module Models
    module Channels
      # @see Knockapi::Resources::Channels::Bulk#update_message_status
      class BulkUpdateMessageStatusParams < Knockapi::BaseModel
        # @!parse
        #   extend Knockapi::Type::RequestParameters::Converter
        include Knockapi::RequestParameters

        # @!attribute [r] archived
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived, nil]
        optional :archived, enum: -> { Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        #   attr_writer :archived

        # @!attribute [r] delivery_status
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus, nil]
        optional :delivery_status,
                 enum: -> { Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        #   attr_writer :delivery_status

        # @!attribute [r] engagement_status
        #
        #   @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus, nil]
        optional :engagement_status,
                 enum: -> { Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus }

        # @!parse
        #   # @return [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        #   attr_writer :engagement_status

        # @!attribute [r] has_tenant
        #
        #   @return [Boolean, nil]
        optional :has_tenant, Knockapi::BooleanModel

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
        optional :recipient_ids, Knockapi::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :recipient_ids

        # @!attribute [r] tenants
        #
        #   @return [Array<String>, nil]
        optional :tenants, Knockapi::ArrayOf[String]

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
        optional :workflows, Knockapi::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :workflows

        # @!parse
        #   # @param archived [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        #   # @param delivery_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        #   # @param engagement_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        #   # @param has_tenant [Boolean]
        #   # @param newer_than [Time]
        #   # @param older_than [Time]
        #   # @param recipient_ids [Array<String>]
        #   # @param tenants [Array<String>]
        #   # @param trigger_data [String]
        #   # @param workflows [Array<String>]
        #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
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

        # def initialize: (Hash | Knockapi::BaseModel) -> void

        module Action
          extend Knockapi::Enum

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

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        module Archived
          extend Knockapi::Enum

          EXCLUDE = :exclude
          INCLUDE = :include
          ONLY = :only

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        module DeliveryStatus
          extend Knockapi::Enum

          QUEUED = :queued
          SENT = :sent
          DELIVERED = :delivered
          DELIVERY_ATTEMPTED = :delivery_attempted
          UNDELIVERED = :undelivered
          NOT_SENT = :not_sent
          BOUNCED = :bounced

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        module EngagementStatus
          extend Knockapi::Enum

          SEEN = :seen
          UNSEEN = :unseen
          READ = :read
          UNREAD = :unread
          ARCHIVED = :archived
          UNARCHIVED = :unarchived
          LINK_CLICKED = :link_clicked
          INTERACTED = :interacted

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
