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
      # @param page_size [Integer] The number of items per page (defaults to 50).
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
      # @return [nil]
      #
      # @see Knockapi::Models::TenantDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/tenants/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::TenantGetParams} for more details.
      #
      # Get a tenant by ID.
      #
      # @overload get(id, resolve_full_preference_settings: nil, request_options: {})
      #
      # @param id [String] The unique identifier for the tenant.
      #
      # @param resolve_full_preference_settings [Boolean] When true, merges environment-level default preferences into the tenant's `setti
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantGetParams
      def get(id, params = {})
        parsed, options = Knockapi::TenantGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/tenants/%1$s", id],
          query: parsed,
          model: Knockapi::Tenant,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Knockapi::Models::TenantSetParams} for more details.
      #
      # Sets a tenant within an environment, performing an upsert operation. Any
      # existing properties will be merged with the incoming properties.
      #
      # @overload set(id, resolve_full_preference_settings: nil, channel_data: nil, name: nil, settings: nil, request_options: {})
      #
      # @param id [String] Path param: The unique identifier for the tenant.
      #
      # @param resolve_full_preference_settings [Boolean] Query param: When true, merges environment-level default preferences into the te
      #
      # @param channel_data [Hash{Symbol=>Knockapi::Models::Recipients::PushChannelDataTokensOnly, Knockapi::Models::Recipients::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataTargetArnsOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData}, nil] Body param: A request to set channel data for a type of channel inline.
      #
      # @param name [String, nil] Body param: An optional name for the tenant.
      #
      # @param settings [Knockapi::Models::TenantSetParams::Settings] Body param: The settings for the tenant. Includes branding and preference set.
      #
      # @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Knockapi::Models::Tenant]
      #
      # @see Knockapi::Models::TenantSetParams
      def set(id, params = {})
        parsed, options = Knockapi::TenantSetParams.dump_request(params)
        query_params = [:resolve_full_preference_settings]
        @client.request(
          method: :put,
          path: ["v1/tenants/%1$s", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
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
