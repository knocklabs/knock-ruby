# frozen_string_literal: true

require 'net/http'
require 'uri'

module Knock
  # Methods for interacting with tenants in Knock
  module Tenants
    class << self
      include Base
      include Client

      # Retrieves all Tenants in environment
      #
      # @param [Hash] options Options to pass to the tenants endpoint query
      #
      # @return [Hash] Paginated list of Tenant records
      def list(options: {})
        request = get_request(
          auth: true,
          path: '/v1/tenants',
          params: options
        )

        execute_request(request: request)
      end

      # Retrieves a Tenant
      #
      # @param [String] id The Tenant id
      #
      # @return [Hash] The Tenant
      def get(id:)
        request = get_request(
          auth: true,
          path: "/v1/tenants/#{id}"
        )

        execute_request(request: request)
      end

      # Upserts a Tenant
      #
      # @param [String] id The Tenant id
      # @param [Hash] tenant_data The data to set on the Tenant
      #
      # @return [Hash] The Tenant
      def set(id:, tenant_data: {})
        request = put_request(
          auth: true,
          path: "/v1/tenants/#{id}",
          body: tenant_data
        )

        execute_request(request: request)
      end

      # Deletes a Tenant
      #
      # @param [String] id The Tenant id
      #
      # @return [nil] Nothing
      def delete(id:)
        request = delete_request(
          auth: true,
          path: "/v1/tenants/#{id}"
        )

        execute_request(request: request)
      end
    end
  end
end
