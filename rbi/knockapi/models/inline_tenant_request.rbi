# typed: strong

module Knockapi
  module Models
    # An request to set a tenant inline.
    module InlineTenantRequest
      extend Knockapi::Internal::Type::Union

      sig { override.returns([String, Knockapi::Models::TenantRequest]) }
      def self.variants; end
    end
  end
end
