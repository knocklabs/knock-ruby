# typed: strong

module Knockapi
  module Models
    module Messages
      BatchMarkAsInteractedResponse =
        T.let(Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Message], Knockapi::Internal::Type::Converter)
    end
  end
end
