# frozen_string_literal: true

module Knock
  module Resources
    class Tenants
      # @return [Knock::Resources::Tenants::Bulk]
      attr_reader :bulk

      # List tenants
      #
      # @param params [Knock::Models::TenantListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :after The cursor to fetch entries after
      #
      #   @option params [String] :before The cursor to fetch entries before
      #
      #   @option params [Integer] :page_size The page size to fetch
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::EntriesCursor<Knock::Models::Tenant>]
      #
      def list(params = {})
        parsed, options = Knock::Models::TenantListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tenants",
          query: parsed,
          page: Knock::EntriesCursor,
          model: Knock::Models::Tenant,
          options: options
        )
      end

      # Delete a tenant
      #
      # @param tenant_id [String] The ID of the tenant
      #
      # @param params [Knock::Models::TenantDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [String]
      #
      def delete(tenant_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/tenants/%0s", tenant_id],
          model: String,
          options: params[:request_options]
        )
      end

      # Get a tenant
      #
      # @param tenant_id [String] The ID of the tenant
      #
      # @param params [Knock::Models::TenantGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::Tenant]
      #
      def get(tenant_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/tenants/%0s", tenant_id],
          model: Knock::Models::Tenant,
          options: params[:request_options]
        )
      end

      # Set a tenant
      #
      # @param tenant_id [String] The ID of the tenant
      #
      # @param params [Knock::Models::TenantSetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>Knock::Models::ChannelDataRequest}, nil] :channel_data Allows inline setting channel data for a recipient
      #
      #   @option params [Hash{Symbol=>Knock::Models::PreferenceSetRequest}, nil] :preferences Inline set preferences for a recipient, where the key is the preference set name
      #
      #   @option params [Knock::Models::TenantSetParams::Settings] :settings
      #
      #   @option params [Knock::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Knock::Models::Tenant]
      #
      def set(tenant_id, params = {})
        parsed, options = Knock::Models::TenantSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/tenants/%0s", tenant_id],
          body: parsed,
          model: Knock::Models::Tenant,
          options: options
        )
      end

      # @param client [Knock::Client]
      #
      def initialize(client:)
        @client = client
        @bulk = Knock::Resources::Tenants::Bulk.new(client: client)
      end
    end
  end
end
