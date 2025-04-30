# frozen_string_literal: true

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Some parameter documentations has been truncated, see
        # {Knockapi::Models::Channels::BulkUpdateMessageStatusParams} for more details.
        #
        # Bulk update the status of messages for a specific channel. The channel is
        # specified by the `channel_id` parameter. The action to perform is specified by
        # the `action` parameter, where the action is a status change action (e.g.
        # `archive`, `unarchive`).
        #
        # @overload update_message_status(channel_id, action, archived: nil, delivery_status: nil, engagement_status: nil, has_tenant: nil, newer_than: nil, older_than: nil, recipient_ids: nil, tenants: nil, trigger_data: nil, workflows: nil, request_options: {})
        #
        # @param channel_id [String] The ID of the channel to update messages for.
        #
        # @param action [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action] The target status to be applied to the messages.
        #
        # @param archived [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Archived] Limits the results to messages with the given archived status.
        #
        # @param delivery_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus] Limits the results to messages with the given delivery status.
        #
        # @param engagement_status [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus] Limits the results to messages with the given engagement status.
        #
        # @param has_tenant [Boolean] Limits the results to messages that have a tenant or not.
        #
        # @param newer_than [Time] Limits the results to messages inserted after the given date.
        #
        # @param older_than [Time] Limits the results to messages inserted before the given date.
        #
        # @param recipient_ids [Array<String>] Limits the results to messages with the given recipient IDs.
        #
        # @param tenants [Array<String>] Limits the results to messages with the given tenant IDs.
        #
        # @param trigger_data [String] Limits the results to only messages that were generated with the given data. See
        # ...
        #
        # @param workflows [Array<String>] Limits the results to messages with the given workflow keys.
        #
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
