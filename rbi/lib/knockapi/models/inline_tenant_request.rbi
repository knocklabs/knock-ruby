# typed: strong

module Knockapi
  module Models
    # An inline tenant request
    class InlineTenantRequest < Knockapi::Union
      abstract!

      class << self
        # @api private
        sig { override.returns([[NilClass, String], [NilClass, Knockapi::Models::TenantRequest]]) }
        private def variants
        end
      end
    end
  end
end
