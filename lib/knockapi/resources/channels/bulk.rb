# frozen_string_literal: true

module Knockapi
  module Resources
    class Channels
      class Bulk
        # Bulk update messages for a specific channel
        #
        # @overload update_message_status(channel_id, action, request_options: {})
        #
        # @param channel_id [String]
        # @param action [Symbol, Knockapi::Models::Channels::BulkUpdateMessageStatusParams::Action]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Channels::BulkUpdateMessageStatusParams
        def update_message_status(channel_id, action, params = {})
          @client.request(
            method: :post,
            path: ["v1/channels/%1$s/messages/bulk/%2$s", channel_id, action],
            model: Knockapi::Models::BulkOperation,
            options: params[:request_options]
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
