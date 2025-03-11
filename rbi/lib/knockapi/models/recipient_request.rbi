# typed: strong

module Knockapi
  module Models
    class RecipientRequest < Knockapi::Union
      abstract!

      class << self
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
