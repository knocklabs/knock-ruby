# frozen_string_literal: true

module Knockapi
  module Resources
    class Tenants
      # @return [Knockapi::Resources::Tenants::Bulk]
      attr_reader :bulk

      # List tenants for the current environment.
      #
      # @overload list(after: nil, before: nil, name: nil, page_size: nil, tenant_id: nil, request_options: {})
      #
      # @param after [String] The cursor to fetch entries after.
      #
      # @param before [String] The cursor to fetch entries before.
      #
      # @param name [String] Filter tenants by name.
      #
      # @param page_size [Integer] The number of items per page.
      #
      # @param tenant_id [String] Filter tenants by ID.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Internal::EntriesCursor<Knockapi::Models::Tenant>]
      #
      # @see Knockapi::Models::TenantListParams
      def list(params = {})
        parsed, options = Knockapi::TenantListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/tenants",
          query: parsed,
          page: Knockapi::Internal::EntriesCursor,
          model: Knockapi::Tenant,
          options: options
        )
      end

      # Delete a tenant and all associated data. This operation cannot be undone.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier for the tenant.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Knockapi::Models::TenantDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/tenants/%1$s", id],
          model: String,
          options: params[:request_options]
        )
      end

      # Get a tenant by ID.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] The unique identifier for the tenant.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/tenants/%1$s", id],
          model: Knockapi::Tenant,
          options: params[:request_options]
        )
      end

      # Sets a tenant within an environment, performing an upsert operation. Any
      # existing properties will be merged with the incoming properties.
      #
      # @overload set(id, channel_data: nil, settings: nil, request_options: {})
      #
      # @param id [String] The unique identifier for the tenant.
      #
      # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil] A request to set channel data for a type of channel inline.
      #
      # @param settings [Knockapi::Models::TenantSetParams::Settings] The settings for the tenant. Includes branding and preference set.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantSetParams
      def set(id, params = {})
        parsed, options = Knockapi::TenantSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/tenants/%1$s", id],
          body: parsed,
          model: Knockapi::Tenant,
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
