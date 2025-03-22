# typed: strong

module Knockapi
  module Models
    # Specifies a recipient in a request. This can either be a user identifier
    #   (string), an inline user request (object), or an inline object request, which is
    #   determined by the presence of a `collection` property.
    module RecipientRequest
      extend Knockapi::Union

      sig do
        override
          .returns([String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest])
      end
      def self.variants
      end
    end
  end
end
