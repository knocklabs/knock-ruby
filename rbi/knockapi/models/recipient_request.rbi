# typed: strong

module Knockapi
  module Models
    # Specifies a recipient in a request. This can either be a user identifier
    # (string), an inline user request (object), or an inline object request, which is
    # determined by the presence of a `collection` property.
    module RecipientRequest
      extend Knockapi::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            String,
            Knockapi::InlineIdentifyUserRequest,
            Knockapi::InlineObjectRequest
          )
        end

      sig { override.returns(T::Array[Knockapi::RecipientRequest::Variants]) }
      def self.variants
      end
    end
  end
end
