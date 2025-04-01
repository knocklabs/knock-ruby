# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsUnreadResponse =
        T.let(Knockapi::ArrayOf[Knockapi::Models::Message], Knockapi::Type::Converter)
    end
  end
end
