# typed: strong

module Knockapi
  module Resources
    class Tenants
      sig { returns(Knockapi::Resources::Tenants::Bulk) }
      def bulk
      end

      # List tenants
      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Tenant])
      end
      def list(after: nil, before: nil, page_size: nil, request_options: {})
      end

      # Delete a tenant
      sig do
        params(
          tenant_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def delete(tenant_id, request_options: {})
      end

      # Get a tenant
      sig do
        params(
          tenant_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Tenant)
      end
      def get(tenant_id, request_options: {})
      end

      # Set a tenant
      sig do
        params(
          tenant_id: String,
          channel_data: T.nilable(Knockapi::Models::Recipients::InlineChannelDataRequest),
          preferences: T.nilable(Knockapi::Models::Recipients::InlinePreferenceSetRequest),
          settings: Knockapi::Models::TenantSetParams::Settings,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::Tenant)
      end
      def set(tenant_id, channel_data: nil, preferences: nil, settings: nil, request_options: {})
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
