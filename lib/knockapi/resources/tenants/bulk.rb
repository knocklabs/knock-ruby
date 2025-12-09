# frozen_string_literal: true

module Knockapi
  module Resources
    class Tenants
      class Bulk
        # Delete up to 1,000 tenants at a time in a single operation. This operation
        # cannot be undone.
        #
        # @overload delete(tenant_ids:, request_options: {})
        #
        # @param tenant_ids [Array<String>] The IDs of the tenants to delete.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Tenants::BulkDeleteParams
        def delete(params)
          parsed, options = Knockapi::Tenants::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/delete",
            query: parsed,
            model: Knockapi::BulkOperation,
            options: options
          )
        end

        # Set or update up to 1,000 tenants in a single operation.
        #
        # @overload set(tenants:, request_options: {})
        #
        # @param tenants [Array<String, Knockapi::Models::TenantRequest>] The tenants to be upserted.
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Tenants::BulkSetParams
        def set(params)
          parsed, options = Knockapi::Tenants::BulkSetParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/set",
            body: parsed,
            model: Knockapi::BulkOperation,
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
