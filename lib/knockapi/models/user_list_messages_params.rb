# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Users#list_messages
    class UserListMessagesParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute after
      #   The cursor to fetch entries after.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   The cursor to fetch entries before.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute channel_id
      #   Limits the results to items with the corresponding channel ID.
      #
      #   @return [String, nil]
      optional :channel_id, String

      # @!attribute engagement_status
      #   Limits the results to messages with the given engagement status.
      #
      #   @return [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>, nil]
      optional :engagement_status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::UserListMessagesParams::EngagementStatus] }

      # @!attribute message_ids
      #   Limits the results to only the message ids given (max 50). Note: when using this
      #   option, the results will be subject to any other filters applied to the query.
      #
      #   @return [Array<String>, nil]
      optional :message_ids, Knockapi::Internal::Type::ArrayOf[String]

      # @!attribute page_size
      #   The number of items per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute source
      #   Limits the results to messages triggered by the given workflow key.
      #
      #   @return [String, nil]
      optional :source, String

      # @!attribute status
      #   Limits the results to messages with the given delivery status.
      #
      #   @return [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>, nil]
      optional :status,
               -> { Knockapi::Internal::Type::ArrayOf[enum: Knockapi::Models::UserListMessagesParams::Status] }

      # @!attribute tenant
      #   Limits the results to items with the corresponding tenant.
      #
      #   @return [String, nil]
      optional :tenant, String

      # @!attribute trigger_data
      #   Limits the results to only messages that were generated with the given data. See
      #   [trigger data filtering](/api-reference/overview/trigger-data-filtering) for
      #   more information.
      #
      #   @return [String, nil]
      optional :trigger_data, String

      # @!attribute workflow_categories
      #   Limits the results to messages related to any of the provided categories.
      #
      #   @return [Array<String>, nil]
      optional :workflow_categories, Knockapi::Internal::Type::ArrayOf[String]

      # @!attribute workflow_recipient_run_id
      #   Limits the results to messages for a specific recipient's workflow run.
      #
      #   @return [String, nil]
      optional :workflow_recipient_run_id, String

      # @!attribute workflow_run_id
      #   Limits the results to messages associated with the top-level workflow run ID
      #   returned by the workflow trigger request.
      #
      #   @return [String, nil]
      optional :workflow_run_id, String

      # @!method initialize(after: nil, before: nil, channel_id: nil, engagement_status: nil, message_ids: nil, page_size: nil, source: nil, status: nil, tenant: nil, trigger_data: nil, workflow_categories: nil, workflow_recipient_run_id: nil, workflow_run_id: nil, request_options: {})
      #   @param after [String]
      #   @param before [String]
      #   @param channel_id [String]
      #   @param engagement_status [Array<Symbol, Knockapi::Models::UserListMessagesParams::EngagementStatus>]
      #   @param message_ids [Array<String>]
      #   @param page_size [Integer]
      #   @param source [String]
      #   @param status [Array<Symbol, Knockapi::Models::UserListMessagesParams::Status>]
      #   @param tenant [String]
      #   @param trigger_data [String]
      #   @param workflow_categories [Array<String>]
      #   @param workflow_recipient_run_id [String]
      #   @param workflow_run_id [String]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      module EngagementStatus
        extend Knockapi::Internal::Type::Enum

        SEEN = :seen
        READ = :read
        INTERACTED = :interacted
        LINK_CLICKED = :link_clicked
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
