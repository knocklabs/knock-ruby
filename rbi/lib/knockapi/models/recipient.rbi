# typed: strong

module Knockapi
  module Models
    # A recipient, which is either a user or an object
    class Recipient < Knockapi::Union
      abstract!

      Variants = type_template(:out) { {fixed: T.any(Knockapi::Models::User, Knockapi::Models::Object)} }
    end
  end
end
