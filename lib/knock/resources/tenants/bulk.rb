# frozen_string_literal: true

module Knock
  module Resources
    class Tenants
      class Bulk
        # Bulk delete tenants
        #
        # @param params [Knock::Models::Tenants::BulkDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :tenant_ids The IDs of the tenants to delete
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def delete(params)
          parsed, options = Knock::Models::Tenants::BulkDeleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/delete",
            query: parsed,
            model: Knock::Models::BulkOperation,
            options: options
          )
        end

        # Bulk set tenants
        #
        # @param params [Knock::Models::Tenants::BulkSetParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String, Knock::Models::TenantRequest>] :tenants
        #
        #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Knock::Models::BulkOperation]
        #
        def set(params)
          parsed, options = Knock::Models::Tenants::BulkSetParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/set",
            body: parsed,
            model: Knock::Models::BulkOperation,
            options: options
          )
        end

        # @param client [Knock::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
