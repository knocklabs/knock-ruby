# typed: strong

module Knockapi
  module Models
    # An inline tenant request
    module InlineTenantRequest
      extend Knockapi::Union

      Variants = type_template(:out) { {fixed: T.any(String, Knockapi::Models::TenantRequest)} }

      class << self
        sig { override.returns([String, Knockapi::Models::TenantRequest]) }
        def variants
        end
      end
    end
  end
end
