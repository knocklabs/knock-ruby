# frozen_string_literal: true

module Knockapi
  module Resources
    class Tenants
      class Bulk
        # Bulk delete tenants
        #
        # @param params [Knockapi::Models::Tenants::BulkDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :tenant_ids The IDs of the tenants to delete
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Tenants::BulkDeleteParams
        def delete(params)
          parsed, options = Knockapi::Models::Tenants::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/delete",
            query: parsed,
            model: Knockapi::Models::BulkOperation,
            options: options
          )
        end

        # Bulk set tenants
        #
        # @param params [Knockapi::Models::Tenants::BulkSetParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String, Knockapi::Models::TenantRequest>] :tenants
        #
        #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Tenants::BulkSetParams
        def set(params)
          parsed, options = Knockapi::Models::Tenants::BulkSetParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/set",
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
