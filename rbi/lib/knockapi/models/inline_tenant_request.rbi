# typed: strong

module Knockapi
  module Models
    # An inline tenant request
    class InlineTenantRequest < Knockapi::Union
      abstract!

      Variants = type_template(:out) { {fixed: T.any(String, Knockapi::Models::TenantRequest)} }
    end
  end
end
