# frozen_string_literal: true

require 'net/http'
require 'uri'

module Knock
  # Provides convienience methods for working with bulk operations
  module BulkOperations
    class << self
      include Base
      include Client

      # Retrieves the given bulk operation
      #
      # @param [String] id The bulk operation ID
      #
      # @return [Hash] The bulk operation
      def get(id:)
        request = get_request(
          auth: true,
          path: "/v1/bulk_operations/#{id}"
        )

        execute_request(request: request)
      end
    end
  end
end
