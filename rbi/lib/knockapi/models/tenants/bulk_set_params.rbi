# typed: strong

module Knockapi
  module Models
    module Tenants
      class BulkSetParams < Knockapi::BaseModel
        extend Knockapi::RequestParameters::Converter
        include Knockapi::RequestParameters

        sig { returns(T::Array[T.any(String, Knockapi::Models::TenantRequest)]) }
        attr_accessor :tenants

        sig do
          params(
            tenants: T::Array[T.any(String, Knockapi::Models::TenantRequest, Knockapi::Util::AnyHash)],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(tenants:, request_options: {})
        end

        sig do
          override
            .returns(
              {tenants: T::Array[T.any(String, Knockapi::Models::TenantRequest)], request_options: Knockapi::RequestOptions}
            )
        end
        def to_hash
        end
      end
    end
  end
end
