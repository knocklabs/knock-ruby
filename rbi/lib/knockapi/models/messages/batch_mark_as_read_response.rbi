# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsReadResponse = T.type_alias { T::Array[Knockapi::Models::Message] }
    end
  end
end
