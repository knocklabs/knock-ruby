# typed: strong

module Knockapi
  module Models
    module Tenants
      class BulkDeleteParams < Knockapi::Internal::Type::BaseModel
        extend Knockapi::Internal::Type::RequestParameters::Converter
        include Knockapi::Internal::Type::RequestParameters

        # The IDs of the tenants to delete.
        sig { returns(T::Array[String]) }
        attr_accessor :tenant_ids

        sig do
          params(
            tenant_ids: T::Array[String],
            request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The IDs of the tenants to delete.
          tenant_ids:,
          request_options: {}
        ); end
        sig { override.returns({tenant_ids: T::Array[String], request_options: Knockapi::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
