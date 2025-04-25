# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      class Bulk
        # Bulk creates up to 1,000 schedules at a time. This endpoint also handles
        # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
        # for the `actor`, `recipient`, and `tenant` fields.
        #
        # @overload create(schedules:, request_options: {})
        #
        # @param schedules [Array<Knockapi::Models::Schedules::BulkCreateParams::Schedule>] A list of schedules.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Schedules::BulkCreateParams
        def create(params)
          parsed, options = Knockapi::Models::Schedules::BulkCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/schedules/bulk/create",
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
