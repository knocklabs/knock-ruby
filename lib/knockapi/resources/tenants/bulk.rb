# frozen_string_literal: true

module Knockapi
  module Resources
    class Tenants
      class Bulk
        # Deletes tenants in bulk
        #
        # @overload delete(tenant_ids:, request_options: {})
        #
        # @param tenant_ids [Array<String>]
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
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

        # Sets tenants in bulk
        #
        # @overload set(request_options: {})
        #
        # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Knockapi::Models::BulkOperation]
        #
        # @see Knockapi::Models::Tenants::BulkSetParams
        def set(params = {})
          @client.request(
            method: :post,
            path: "v1/tenants/bulk/set",
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
