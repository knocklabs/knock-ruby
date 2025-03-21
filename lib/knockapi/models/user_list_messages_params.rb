# frozen_string_literal: true

module Knockapi
  module Models
    class UserListMessagesParams < Knockapi::BaseModel
      # @!parse
      #   extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      # @!attribute [r] after
      #   The cursor to fetch entries after
      #
      #   @return [String, nil]
      optional :after, String

      # @!parse
      #   # @return [String]
      #   attr_writer :after

      # @!attribute [r] before
      #   The cursor to fetch entries before
      #
      #   @return [String, nil]
      optional :before, String

      # @!parse
      #   # @return [String]
      #   attr_writer :before

      # @!attribute [r] channel_id
      #   The channel ID
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :channel_id

      # @!attribute [r] engagement_status
      #   The engagement status of the message
      #
      #   @return [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>, nil]
      optional :engagement_status,
               -> { Knockapi::ArrayOf[enum: Knockapi::Models::UserListMessagesParams::EngagementStatus] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>]
      #   attr_writer :engagement_status

      # @!attribute [r] message_ids
      #   The message IDs to filter messages by
      #
      #   @return [Array<String>, nil]
      optional :message_ids, Knockapi::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :message_ids

      # @!attribute [r] page_size
      #   The page size to fetch
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :page_size

      # @!attribute [r] source
      #   The source of the message (workflow key)
      #
      #   @return [String, nil]
      optional :source, String

      # @!parse
      #   # @return [String]
      #   attr_writer :source

      # @!attribute [r] status
      #   The status of the message
      #
      #   @return [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>, nil]
      optional :status, -> { Knockapi::ArrayOf[enum: Knockapi::Models::UserListMessagesParams::Status] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>]
      #   attr_writer :status

      # @!attribute [r] tenant
      #   The tenant ID
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
      #   The workflow categories to filter messages by
      #
      #   @return [Array<String>, nil]
      optional :workflow_categories, Knockapi::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :workflow_categories

      # @!attribute [r] workflow_recipient_run_id
      #   The workflow recipient run ID to filter messages by
      #
      #   @return [String, nil]
      optional :workflow_recipient_run_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :workflow_recipient_run_id

      # @!attribute [r] workflow_run_id
      #   The workflow run ID to filter messages by
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
      #   # @param engagement_status [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>]
      #   # @param message_ids [Array<String>]
      #   # @param page_size [Integer]
      #   # @param source [String]
      #   # @param status [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>]
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

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      module EngagementStatus
        extend Knockapi::Enum

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        finalize!
      end

      module Status
        extend Knockapi::Enum

        QUEUED = :queued
        SENT = :sent
        DELIVERED = :delivered
        DELIVERY_ATTEMPTED = :delivery_attempted
        UNDELIVERED = :undelivered
        NOT_SENT = :not_sent
        BOUNCED = :bounced

        finalize!
      end
    end
  end
end
