# typed: strong

module Knockapi
  module Models
    # A recipient of a notification, which is either a user or an object.
    module Recipient
      extend Knockapi::Internal::Type::Union

      Variants = T.type_alias { T.any(Knockapi::User, Knockapi::Object) }

      sig { override.returns(T::Array[Knockapi::Recipient::Variants]) }
      def self.variants
      end
    end
  end
end
