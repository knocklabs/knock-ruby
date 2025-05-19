# typed: strong

module Knockapi
  module Models
    # An request to set a tenant inline.
    module InlineTenantRequest
      extend Knockapi::Internal::Type::Union

      Variants = T.type_alias { T.any(String, Knockapi::TenantRequest) }

      sig do
        override.returns(T::Array[Knockapi::InlineTenantRequest::Variants])
      end
      def self.variants
      end
    end
  end
end
