# typed: strong

module Knockapi
  module Models
    # A recipient, which is either a user or an object
    class Recipient < Knockapi::Union
      abstract!

      class << self
        # @api private
        sig { override.returns([[NilClass, Knockapi::Models::User], [NilClass, Knockapi::Models::Object]]) }
        private def variants
        end
      end
    end
  end
end
