# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsUnreadResponse = T.type_alias { T::Array[Knockapi::Models::Message] }
    end
  end
end
