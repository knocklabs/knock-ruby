# frozen_string_literal: true

module Knockapi
  module Resources
    class Tenants
      # @return [Knockapi::Resources::Tenants::Bulk]
      attr_reader :bulk

      # List tenants
      #
      # @overload list(after: nil, before: nil, page_size: nil, request_options: {})
      #
      # @param after [String]
      # @param before [String]
      # @param page_size [Integer]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Tenant>]
      #
      # @see Knockapi::Models::TenantListParams
      def list(params = {})
        parsed, options = Knockapi::Models::TenantListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tenants",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Models::Tenant,
          options: options
        )
      end

      # @api private
      #
      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @bulk = Knockapi::Resources::Tenants::Bulk.new(client: client)
      end
    end
  end
end
