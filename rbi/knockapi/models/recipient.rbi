# typed: strong

module Knockapi
  module Models
    # A recipient of a notification, which is either a user or an object.
    module Recipient
      extend Knockapi::Internal::Type::Union

      sig { override.returns([Knockapi::Models::User, Knockapi::Models::Object]) }
      def self.variants; end
    end
  end
end
