# typed: strong

module Knock
  module Resources
    class Tenants
      sig { returns(Knock::Resources::Tenants::Bulk) }
      def bulk
      end

      sig do
        params(
          after: String,
          before: String,
          page_size: Integer,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::EntriesCursor[Knock::Models::Tenant])
      end
      def list(after: nil, before: nil, page_size: nil, request_options: {})
      end

      sig do
        params(
          tenant_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def delete(tenant_id, request_options: {})
      end

      sig do
        params(
          tenant_id: String,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Tenant)
      end
      def get(tenant_id, request_options: {})
      end

      sig do
        params(
          tenant_id: String,
          channel_data: T.nilable(Knock::Models::InlineChannelDataRequest),
          preferences: T.nilable(Knock::Models::InlinePreferenceSetRequest),
          settings: Knock::Models::TenantSetParams::Settings,
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knock::Models::Tenant)
      end
      def set(tenant_id, channel_data: nil, preferences: nil, settings: nil, request_options: {})
      end

      sig { params(client: Knock::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
