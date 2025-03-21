# typed: strong

module Knockapi
  module Models
    # A recipient, which is either a user or an object
    module Recipient
      extend Knockapi::Union

      Variants = type_template(:out) { {fixed: T.any(Knockapi::Models::User, Knockapi::Models::Object)} }

      class << self
        sig { override.returns([Knockapi::Models::User, Knockapi::Models::Object]) }
        def variants
        end
      end
    end
  end
end
