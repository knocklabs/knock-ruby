# typed: strong

module Knockapi
  module Models
    class Recipient < Knockapi::Union
      abstract!

      class << self
        sig { override.returns([[NilClass, Knockapi::Models::User], [NilClass, Knockapi::Models::Object]]) }
        private def variants
        end
      end
    end
  end
end
