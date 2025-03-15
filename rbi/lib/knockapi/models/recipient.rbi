# typed: strong

module Knockapi
  module Models
    # A recipient, which is either a user or an object
    class Recipient < Knockapi::Union
      abstract!

      class << self
        sig { override.returns([Knockapi::Models::User, Knockapi::Models::Object]) }
        def variants
        end
      end
    end
  end
end
