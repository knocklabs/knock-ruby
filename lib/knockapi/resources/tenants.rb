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
      # @param after [String]
      # @param before [String]
      # @param name [String]
      # @param page_size [Integer]
      # @param tenant_id [String]
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

      # Delete a tenant and all associated data. This operation cannot be undone.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
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
      # @param id [String]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/tenants/%1$s", id],
          model: Knockapi::Models::Tenant,
          options: params[:request_options]
        )
      end

      # Set or update a tenant's properties and settings. This operation allows you to
      # update tenant preferences, channel data, and branding settings.
      #
      # @overload set(id, channel_data: nil, preferences: nil, settings: nil, request_options: {})
      #
      # @param id [String]
      # @param channel_data [Array<Knockapi::Models::Recipients::InlineChannelDataRequestItem>, nil]
      # @param preferences [Array<Knockapi::Models::Recipients::InlinePreferenceSetRequestItem>, nil]
      # @param settings [Knockapi::Models::TenantSetParams::Settings]
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantSetParams
      def set(id, params = {})
        parsed, options = Knockapi::Models::TenantSetParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/tenants/%1$s", id],
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
