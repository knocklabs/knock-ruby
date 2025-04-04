# typed: strong

module Knockapi
  module Resources
    class Tenants
      class Bulk
        # Bulk delete tenants
        sig do
          params(
            tenant_ids: T::Array[String],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def delete(
          # The IDs of the tenants to delete
          tenant_ids:,
          request_options: {}
        )
        end

        # Bulk set tenants
        sig do
          params(
            tenants: T::Array[T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)],
            request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
          )
            .returns(Knockapi::Models::BulkOperation)
        end
        def set(tenants:, request_options: {})
        end

        # @api private
        sig { params(client: Knockapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
