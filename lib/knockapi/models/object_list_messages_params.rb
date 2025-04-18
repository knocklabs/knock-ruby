# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Objects#list_messages
    class ObjectListMessagesParams < Knockapi::Internal::Type::BaseModel
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
      #   Limits the results to items with the corresponding channel id.
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :channel_id

      # @!attribute [r] engagement_status
      #   One or more engagement statuses. Limits results to messages with the given
      #   engagement status(es).
      #
      #   @return [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>, nil]
      optional :engagement_status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::ObjectListMessagesParams::EngagementStatus] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>]
      #   attr_writer :engagement_status

      # @!attribute [r] message_ids
      #   Limits the results to only the message ids given (max 50). Note: when using this
      #   option, the results will be subject to any other filters applied to the query.
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
      #   Key of the source that triggered the message to limit results to.
      #
      #   @return [String, nil]
      optional :source, String

      # @!parse
      #   # @return [String]
      #   attr_writer :source

      # @!attribute [r] status
      #   One or more delivery statuses. Limits results to messages with the given
      #   delivery status(es).
      #
      #   @return [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::Status>, nil]
      optional :status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::ObjectListMessagesParams::Status] }

      # @!parse
      #   # @return [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::Status>]
      #   attr_writer :status

      # @!attribute [r] tenant
      #   Limits the results to items with the corresponding tenant, or where the tenant
      #   is empty.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!parse
      #   # @return [String]
      #   attr_writer :tenant

      # @!attribute [r] trigger_data
      #   Limits the results to only items that were generated with the given data.
      #
      #   @return [String, nil]
      optional :trigger_data, String

      # @!parse
      #   # @return [String]
      #   attr_writer :trigger_data

      # @!attribute [r] workflow_categories
      #   Limits the results to only items related to any of the provided categories.
      #
      #   @return [Array<String>, nil]
      optional :workflow_categories, Knockapi::Internal::Type::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :workflow_categories

      # @!attribute [r] workflow_recipient_run_id
      #   Limits the results to messages for a specific recipient's workflow run.
      #
      #   @return [String, nil]
      optional :workflow_recipient_run_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :workflow_recipient_run_id

      # @!attribute [r] workflow_run_id
      #   Limits the results to messages triggered by the top-level workflow run ID.
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
      #   # @param engagement_status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::EngagementStatus>]
      #   # @param message_ids [Array<String>]
      #   # @param page_size [Integer]
      #   # @param source [String]
      #   # @param status [Array<Symbol, Knockapi::Models::ObjectListMessagesParams::Status>]
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
