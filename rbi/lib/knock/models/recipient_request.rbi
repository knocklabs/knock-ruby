# typed: strong

module Knock
  module Models
    class RecipientRequest < Knock::Union
      abstract!

      class << self
        sig do
          override
            .returns(
              [[NilClass, String], [NilClass, Knock::Models::InlineIdentifyUserRequest], [NilClass, Knock::Models::InlineObjectRequest]]
            )
        end
        private def variants
        end
      end
    end
  end
end
