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
        # @param action [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Action] Path param: The action to perform on the messages
        #
        # @param params [Knock::Models::Channels::BulkUpdateMessageStatusParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :channel_id Path param: The ID of the channel to update messages for
        #
        #   @option params [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::Archived] :archived Body param:
        #
        #   @option params [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::DeliveryStatus] :delivery_status Body param:
        #
        #   @option params [Symbol, Knock::Models::Channels::BulkUpdateMessageStatusParams::EngagementStatus] :engagement_status Body param:
        #
        #   @option params [Boolean] :has_tenant Body param:
        #
        #   @option params [Time] :newer_than Body param:
        #
        #   @option params [Time] :older_than Body param:
        #
        #   @option params [Array<String>] :recipient_ids Body param:
        #
        #   @option params [Array<String>] :tenants Body param:
        #
        #   @option params [String] :trigger_data Body param:
        #
        #   @option params [Array<String>] :workflows Body param:
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def update_message_status(action, params)
          parsed, options = Knock::Models::Channels::BulkUpdateMessageStatusParams.dump_request(params)
          channel_id = parsed.delete(:channel_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
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
