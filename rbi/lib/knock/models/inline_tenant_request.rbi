# typed: strong

module Knock
  module Models
    class InlineTenantRequest < Knock::Union
      abstract!

      class << self
        sig { override.returns([[NilClass, String], [NilClass, Knock::Models::TenantRequest]]) }
        private def variants
        end
      end
    end
  end
end
