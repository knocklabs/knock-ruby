# frozen_string_literal: true

module Knock
  module Resources
    class Channels
      class Bulk
        # Bulk update messages for a specific channel. The channel is specified by the
        #   `channel_id` parameter. The action to perform is specified by the `action`
        #   parameter, where the action is a status change action (e.g. `archive`,
        #   `unarchive`).
        #
        # @param channel_id [String] The ID of the channel to update messages for
        #
        # @param action [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Action] The action to perform on the messages
        #
        # @param params [Knock::Models::Channels::BulkUpdateMessageStatusParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Archived] :archived
        #
        #   @option params [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus] :delivery_status
        #
        #   @option params [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus] :engagement_status
        #
        #   @option params [Boolean] :has_tenant
        #
        #   @option params [Time] :newer_than
        #
        #   @option params [Time] :older_than
        #
        #   @option params [Array<String>] :recipient_ids
        #
        #   @option params [Array<String>] :tenants
        #
        #   @option params [String] :trigger_data
        #
        #   @option params [Array<String>] :workflows
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def update_message_status(channel_id, action, params = {})
          parsed, options = Knock::Models::Channels::BulkUpdateMessageStatusParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/channels/%0s/messages/bulk/%1s", channel_id, action],
            body: parsed,
            model: Knock::Models::BulkOperation,
            options: options
          )
        end

        # @param client [Knock::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
