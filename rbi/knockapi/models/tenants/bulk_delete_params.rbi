# typed: strong

module Knockapi
  module Models
    module Tenants
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Knockapi::Tenants::BulkDeleteParams,
              Knockapi::Internal::AnyHash
            )
          end

        # The IDs of the tenants to delete.
        sig { returns(T::Array[String]) }
        attr_accessor :tenant_ids

        sig do
          params(
            tenant_ids: T::Array[String],
            request_options: Knockapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The IDs of the tenants to delete.
          tenant_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              tenant_ids: T::Array[String],
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
