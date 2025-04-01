# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsSeenResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Message], Knockapi::Type::Converter)
    end
  end
end
