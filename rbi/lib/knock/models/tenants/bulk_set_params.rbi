# typed: strong

module Knock
  module Models
    module Tenants
      class BulkSetParams < Knock::BaseModel
        extend Knock::RequestParameters::Converter
        include Knock::RequestParameters

        sig { returns(T::Array[T.any(String, Knock::Models::TenantRequest)]) }
        def tenants
        end

        sig do
          params(_: T::Array[T.any(String, Knock::Models::TenantRequest)])
            .returns(T::Array[T.any(String, Knock::Models::TenantRequest)])
        end
        def tenants=(_)
        end

        sig do
          params(
            tenants: T::Array[T.any(String, Knock::Models::TenantRequest)],
            request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(tenants:, request_options: {})
        end

        sig do
          override
            .returns(
              {tenants: T::Array[T.any(String, Knock::Models::TenantRequest)], request_options: Knock::RequestOptions}
            )
        end
        def to_hash
        end
      end
    end
  end
end
