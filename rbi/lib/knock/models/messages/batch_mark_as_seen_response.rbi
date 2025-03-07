# typed: strong

module Knock
  module Models
    module Messages
      BatchMarkAsSeenResponse = T.type_alias { T::Array[Knock::Models::Message] }
    end
  end
end
