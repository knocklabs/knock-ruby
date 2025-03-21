# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsReadResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Message], Knockapi::Converter)
    end
  end
end
