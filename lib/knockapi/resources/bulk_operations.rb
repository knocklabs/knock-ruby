# frozen_string_literal: true

module Knockapi
  module Resources
    class BulkOperations
      # Retrieves a bulk operation (if it exists) and displays the current state of it.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] The ID of the bulk operation to retrieve.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::BulkOperation]
      #
      # @see Knockapi::Models::BulkOperationGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/bulk_operations/%1$s", id],
          model: Knockapi::BulkOperation,
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
