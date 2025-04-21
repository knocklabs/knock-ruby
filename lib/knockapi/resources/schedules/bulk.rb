# frozen_string_literal: true

module Knockapi
  module Resources
    class Schedules
      class Bulk
        # Creates up to 1,000 schedules in a single asynchronous bulk operation. The list
        # of schedules can include inline-identifications for each recipient, tenant, and
        # actor specified on a schedule.
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
