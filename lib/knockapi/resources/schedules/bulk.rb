# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      class Bulk
        # Bulk creates up to 1,000 schedules at a time. This endpoint also handles
        # [inline identifications](/managing-recipients/identifying-recipients#inline-identifying-recipients)
        # for the `actor`, `recipient`, and `tenant` fields.
        #
        # @overload create(request_options: {})
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Schedules::BulkCreateParams
        def create(params = {})
          @client.request(
            method: :post,
            path: "v1/schedules/bulk/create",
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
