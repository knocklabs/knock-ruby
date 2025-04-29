# typed: strong

module Knockapi
  module Resources
    class Tenants
      class Bulk
        # Delete multiple tenants in a single operation. This operation cannot be undone.
        sig do
          params(tenant_ids: T::Array[String], request_options: Knockapi::RequestOpts)
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(
          # The IDs of the tenants to delete.
          tenant_ids:,
          request_options: {}
        ); end
        # Set or update up to 1,000 tenants in a single operation.
        sig do
          params(
            tenants: T::Array[T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)],
            request_options: Knockapi::RequestOpts
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set(
          # The tenants to be upserted.
          tenants:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
