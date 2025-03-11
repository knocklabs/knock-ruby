# frozen_string_literal: true

module Knockapi
  module Resources
    class BulkOperations
      # Retrieves a bulk operation (if it exists) and displays the current state of it.
      #
      # @param id [String] The ID of the bulk operation to retrieve
      #
      # @param params [Knockapi::Models::BulkOperationGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::BulkOperation]
      #
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/bulk_operations/%0s", id],
          model: Knockapi::Models::BulkOperation,
          options: params[:request_options]
        )
      end

      # @param client [Knockapi::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
