# frozen_string_literal: true

module Knockapi
  module Resources
    class Tenants
      # @return [Knockapi::Resources::Tenants::Bulk]
      attr_reader :bulk

      # List tenants
      #
      # @param params [Knockapi::Models::TenantListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::EntriesCursor<Knockapi::Models::Tenant>]
      def list(params = {})
        parsed, options = Knockapi::Models::TenantListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tenants",
          query: parsed,
          page: Knockapi::EntriesCursor,
          model: Knockapi::Models::Tenant,
          options: options
        )
      end

      # Delete a tenant
      #
      # @param tenant_id [String] The ID of the tenant
      #
      # @param params [Knockapi::Models::TenantDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
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
      # @param tenant_id [String] The ID of the tenant
      #
      # @param params [Knockapi::Models::TenantGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Tenant]
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
      # @param tenant_id [String] The ID of the tenant
      #
      # @param params [Knockapi::Models::TenantSetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Knockapi::Models::Recipients::ChannelDataRequest}, nil] :channel_data Allows inline setting channel data for a recipient
      #
      #   @option params [Hash{Symbol=>Knockapi::Models::Recipients::PreferenceSetRequest}, nil] :preferences Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @option params [Knockapi::Models::TenantSetParams::Settings] :settings
      #
      #   @option params [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knockapi::Models::Tenant]
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

      # @param client [Knockapi::Client]
      def initialize(client:)
        @client = client
        @bulk = Knockapi::Resources::Tenants::Bulk.new(client: client)
      end
    end
  end
end
