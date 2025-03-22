# typed: strong

module Knockapi
  module Models
    # An inline tenant request
    module InlineTenantRequest
      extend Knockapi::Union

      sig { override.returns([String, Knockapi::Models::TenantRequest]) }
      def self.variants
      end
    end
  end
end
