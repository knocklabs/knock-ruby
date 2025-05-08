# typed: strong

module Knockapi
  module Models
    module Tenants
      class BulkSetParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # The tenants to be upserted.
        sig { returns(T::Array[T.any(String, Knockapi::TenantRequest)]) }
        attr_accessor :tenants

        sig do
          params(
            tenants: T::Array[T.any(String, Knockapi::TenantRequest::OrHash)],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The tenants to be upserted.
          tenants:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              tenants: T::Array[T.any(String, Knockapi::TenantRequest)],
              request_options: Knockapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
