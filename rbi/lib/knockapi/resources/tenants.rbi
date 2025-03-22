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
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::EntriesCursor[Knockapi::Models::Tenant])
      end
      def list(
        # The cursor to fetch entries after
        after: nil,
        # The cursor to fetch entries before
        before: nil,
        # The page size to fetch
        page_size: nil,
        request_options: {}
      )
      end

      # Delete a tenant
      sig do
        params(
          tenant_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(String)
      end
      def delete(
        # The ID of the tenant
        tenant_id,
        request_options: {}
      )
      end

      # Get a tenant
      sig do
        params(
          tenant_id: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Tenant)
      end
      def get(
        # The ID of the tenant
        tenant_id,
        request_options: {}
      )
      end

      # Set a tenant
      sig do
        params(
          tenant_id: String,
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Util::AnyHash)]
          ),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Util::AnyHash)]
          ),
          settings: T.any(Knockapi::Models::TenantSetParams::Settings, Knockapi::Util::AnyHash),
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash))
        )
          .returns(Knockapi::Models::Tenant)
      end
      def set(
        # The ID of the tenant
        tenant_id,
        # Allows inline setting channel data for a recipient
        channel_data: nil,
        # Inline set preferences for a recipient, where the key is the preference set name
        preferences: nil,
        settings: nil,
        request_options: {}
      )
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
