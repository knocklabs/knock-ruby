# typed: strong

module Knockapi
  module Models
    module Tenants
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        sig { returns(T::Array[T.any(String, Knockapi::Models::TenantRequest)]) }
        attr_accessor :tenants

        sig do
          params(
            tenants: T::Array[T.any(String, Knockapi::Models::TenantRequest, Knockapi::Internal::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(tenants:, request_options: {}); end

        sig do
          override
            .returns(
              {tenants: T::Array[T.any(String, Knockapi::Models::TenantRequest)], request_options: Knockapi::RequestOptions}
            )
        end
        def to_hash; end
      end
    end
  end
end
