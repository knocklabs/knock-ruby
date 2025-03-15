# typed: strong

module Knockapi
  module Models
    # Specifies a recipient in a request. This can either be a user identifier
    #   (string), an inline user request (object), or an inline object request, which is
    #   determined by the presence of a `collection` property.
    class RecipientRequest < Knockapi::Union
      abstract!

      class << self
        # @api private
        sig do
          override
            .returns(
              [[NilClass, String], [NilClass, Knockapi::Models::InlineIdentifyUserRequest], [NilClass, Knockapi::Models::InlineObjectRequest]]
            )
        end
        private def variants
        end
      end
    end
  end
end
