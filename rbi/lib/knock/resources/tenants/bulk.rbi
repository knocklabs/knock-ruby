# typed: strong

module Knock
  module Resources
    class Tenants
      class Bulk
        sig do
          params(
            tenant_ids: T::Array[String],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::BulkOperation)
        end
        def delete(tenant_ids:, request_options: {})
        end

        sig do
          params(
            tenants: T::Array[T.any(String, Knock::Models::TenantRequest)],
            request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Knock::Models::BulkOperation)
        end
        def set(tenants:, request_options: {})
        end

        sig { params(client: Knock::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
