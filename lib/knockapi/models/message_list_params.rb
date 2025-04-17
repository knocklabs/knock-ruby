# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Messages#list
    class MessageListParams < Knockapi::Internal::Type::BaseModel
      # @!parse
      #   extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute [r] after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] channel_id
      #   The unique identifier for the channel.
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :channel_id

      # @!attribute [r] engagement_status
      #   The engagement status to filter messages by.
      #
      #   @return [Array<Symbol, Knockapi::Models::MessageListParams::EngagementStatus>, nil]
      optional :engagement_status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::MessageListParams::EngagementStatus] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::MessageListParams::EngagementStatus>]
      #   attr_writer :engagement_status

      # @!attribute [r] message_ids
      #   The message IDs to filter messages by.
      #
      #   @return [Array<String>, nil]
      optional :message_ids, Knockapi::Internal::Type::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :message_ids

      # @!attribute [r] page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] source
      #   The source of the message (workflow key).
      #
      #   @return [String, nil]
      optional :source, String

      # @!parse
      #   # @return [String]
      #   attr_writer :source

      # @!attribute [r] status
      #   The delivery status to filter messages by.
      #
      #   @return [Array<Symbol, Knockapi::Models::MessageListParams::Status>, nil]
      optional :status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::MessageListParams::Status] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::MessageListParams::Status>]
      #   attr_writer :status

      # @!attribute [r] tenant
      #   The unique identifier for the tenant.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!parse
      #   # @return [String]
      #   attr_writer :tenant

      # @!attribute [r] trigger_data
      #   The trigger data to filter messages by. Must be a valid JSON object.
      #
      #   @return [String, nil]
      optional :trigger_data, String

      # @!parse
      #   # @return [String]
      #   attr_writer :trigger_data

      # @!attribute [r] workflow_categories
      #   The workflow categories to filter messages by.
      #
      #   @return [Array<String>, nil]
      optional :workflow_categories, Knockapi::Internal::Type::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :workflow_categories

      # @!attribute [r] workflow_recipient_run_id
      #   The workflow recipient run ID to filter messages by.
      #
      #   @return [String, nil]
      optional :workflow_recipient_run_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :workflow_recipient_run_id

      # @!attribute [r] workflow_run_id
      #   The workflow run ID to filter messages by.
      #
      #   @return [String, nil]
      optional :workflow_run_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :workflow_run_id

      # @!parse
      #   # @param after [String]
      #   # @param before [String]
      #   # @param channel_id [String]
      #   # @param engagement_status [Array<Symbol, Knockapi::Models::MessageListParams::EngagementStatus>]
      #   # @param message_ids [Array<String>]
      #   # @param page_size [Integer]
      #   # @param source [String]
      #   # @param status [Array<Symbol, Knockapi::Models::MessageListParams::Status>]
      #   # @param tenant [String]
      #   # @param trigger_data [String]
      #   # @param workflow_categories [Array<String>]
      #   # @param workflow_recipient_run_id [String]
      #   # @param workflow_run_id [String]
      #   # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     after: nil,
      #     before: nil,
      #     channel_id: nil,
      #     engagement_status: nil,
      #     message_ids: nil,
      #     page_size: nil,
      #     source: nil,
      #     status: nil,
      #     tenant: nil,
      #     trigger_data: nil,
      #     workflow_categories: nil,
      #     workflow_recipient_run_id: nil,
      #     workflow_run_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Knockapi::Internal::Type::BaseModel) -> void

      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Status
        extend Knockapi::Internal::Type::Enum

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
    end
  end
end
