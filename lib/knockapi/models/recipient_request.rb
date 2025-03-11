# frozen_string_literal: true

module Knockapi
  module Models
    # @abstract
    #
    # Specifies a recipient in a request. This can either be a user identifier
    #   (string), an inline user request (object), or an inline object request, which is
    #   determined by the presence of a `collection` property.
    class RecipientRequest < Knockapi::Union
      # A user identifier
      variant String

      # A set of parameters to inline-identify a user with. Inline identifying the user will ensure that the user is available before the request is executed in Knock. It will perform an upsert against the user you're supplying, replacing any properties specified.
      variant -> { Knockapi::Models::InlineIdentifyUserRequest }

      # Inline identifies a custom object belonging to a collection
      variant -> { Knockapi::Models::InlineObjectRequest }
    end
  end
end
