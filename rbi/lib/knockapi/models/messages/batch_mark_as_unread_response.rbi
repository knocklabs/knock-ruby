# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsUnreadResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Message], Knockapi::Converter)
    end
  end
end
