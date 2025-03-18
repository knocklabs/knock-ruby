# typed: strong

module Knockapi
  module Models
    # Specifies a recipient in a request. This can either be a user identifier
    #   (string), an inline user request (object), or an inline object request, which is
    #   determined by the presence of a `collection` property.
    class RecipientRequest < Knockapi::Union
      abstract!

      Variants = type_template(:out) { {fixed: T.any(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)} }
    end
  end
end
