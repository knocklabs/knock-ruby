# frozen_string_literal: true

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Bulk update messages for a specific channel. The channel is specified by the
        # `channel_id` parameter. The action to perform is specified by the `action`
        # parameter, where the action is a status change action (e.g. `archive`,
        # `unarchive`).
        #
        # @overload update_message_status(channel_id, action, archived: nil, delivery_status: nil, engagement_status: nil, has_tenant: nil, newer_than: nil, older_than: nil, recipient_ids: nil, tenants: nil, trigger_data: nil, workflows: nil, request_options: {})
        #
        # @param channel_id [String]
        # @param action [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action]
        # @param archived [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived]
        # @param delivery_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus]
        # @param engagement_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus]
        # @param has_tenant [Boolean]
        # @param newer_than [Time]
        # @param older_than [Time]
        # @param recipient_ids [Array<String>]
        # @param tenants [Array<String>]
        # @param trigger_data [String]
        # @param workflows [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Channels::BulkUpdateMessageStatusParams
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

        # @api private
        #
        # @param client [Knockapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
