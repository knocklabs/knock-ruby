# typed: strong

module Knock
  module Models
    class Recipient < Knock::Union
      abstract!

      class << self
        sig { override.returns([[NilClass, Knock::Models::User], [NilClass, Knock::Models::Object]]) }
        private def variants
        end
      end
    end
  end
end
