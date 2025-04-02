# frozen_string_literal: true

module Knockapi
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
        # @param action [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action] The action to perform on the messages
        #
        # @param params [Knockapi::Models::Channels::BulkUpdateMessageStatusParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived] :archived
        #
        #   @option params [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus] :delivery_status
        #
        #   @option params [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus] :engagement_status
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
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        def update_message_status(channel_id, action, params = {})
          parsed, options = Knockapi::Models::Channels::BulkUpdateMessageStatusParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/channels/%1$s/messages/bulk/%2$s", channel_id, action],
            body: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
