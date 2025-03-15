# typed: strong

module Knockapi
  module Models
    # An inline tenant request
    class InlineTenantRequest < Knockapi::Union
      abstract!

      class << self
        sig { override.returns([String, Knockapi::Models::TenantRequest]) }
        def variants
        end
      end
    end
  end
end
