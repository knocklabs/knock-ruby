# typed: strong

module Knock
  module Models
    module Messages
      BatchMarkAsReadResponse = T.type_alias { T::Array[Knock::Models::Message] }
    end
  end
end
