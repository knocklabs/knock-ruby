# typed: strong

module Knock
  module Models
    module Messages
      BatchArchiveResponse = T.type_alias { T::Array[Knock::Models::Message] }
    end
  end
end
