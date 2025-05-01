# frozen_string_literal: true

module Knockapi
  module Models
    # Specifies a recipient in a request. This can either be a user identifier
    # (string), an inline user request (object), or an inline object request, which is
    # determined by the presence of a `collection` property.
    module RecipientRequest
      extend Knockapi::Internal::Type::Union

      # The ID of the user which is used as the reference for the recipient.
      variant String

      # A set of parameters to inline-identify a user with. Inline identifying the user will ensure that the user is available before the request is executed in Knock. It will perform an upsert for the user you're supplying, replacing any properties specified.
      variant -> { Knockapi::Models::InlineIdentifyUserRequest }

      # A custom [Object](/concepts/objects) entity which belongs to a collection.
      variant -> { Knockapi::Models::InlineObjectRequest }

      # @!method self.variants
      #   @return [Array(String, Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Models::InlineObjectRequest)]
    end
  end
end
