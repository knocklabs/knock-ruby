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

      # Delete a tenant
      #
      # @overload delete(tenant_id, request_options: {})
      #
      # @param tenant_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::TenantDeleteParams
      def delete(tenant_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/tenants/%1$s", tenant_id],
          model: String,
          options: params[:request_options]
        )
      end

      # Get a tenant
      #
      # @overload get(tenant_id, request_options: {})
      #
      # @param tenant_id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantGetParams
      def get(tenant_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/tenants/%1$s", tenant_id],
          model: Knockapi::Models::Tenant,
          options: params[:request_options]
        )
      end

      # Set a tenant
      #
      # @overload set(tenant_id, channel_data: nil, preferences: nil, settings: nil, request_options: {})
      #
      # @param tenant_id [String]
      # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil]
      # @param preferences [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil]
      # @param settings [Knockapi::Models::TenantSetParams::Settings]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantSetParams
      def set(tenant_id, params = {})
        parsed, options = Knockapi::Models::TenantSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/tenants/%1$s", tenant_id],
          body: parsed,
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
