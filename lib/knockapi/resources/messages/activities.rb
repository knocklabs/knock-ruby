# frozen_string_literal: true

module Knockapi
  module Resources
    class Messages
      class Activities
        # Returns a paginated list of activities for the specified message.
        #
        # @overload list(message_id, after: nil, before: nil, page_size: nil, trigger_data: nil, request_options: {})
        #
        # @param message_id [String]
        # @param after [String]
        # @param before [String]
        # @param page_size [Integer]
        # @param trigger_data [String]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Activity>]
        #
        # @see Knockapi::Models::Messages::ActivityListParams
        def list(message_id, params = {})
          parsed, options = Knockapi::Models::Messages::ActivityListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/messages/%1$s/activities", message_id],
            query: parsed,
            page: Knockapi::Internal::EntriesCursor,
            model: Knockapi::Models::Activity,
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
