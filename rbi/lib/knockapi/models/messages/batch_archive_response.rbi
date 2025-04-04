# typed: strong

module Knockapi
  module Models
    module Messages
      BatchArchiveResponse =
        T.let(Knockapi::ArrayOf[Knockapi::Models::Message], Knockapi::Internal::Type::Converter)
    end
  end
end
