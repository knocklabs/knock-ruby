# typed: strong

module Knockapi
  module Models
    class InlineTenantRequest < Knockapi::Union
      abstract!

      class << self
        sig { override.returns([[NilClass, String], [NilClass, Knockapi::Models::TenantRequest]]) }
        private def variants
        end
      end
    end
  end
end
