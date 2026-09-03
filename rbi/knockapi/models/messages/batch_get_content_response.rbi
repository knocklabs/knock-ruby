# typed: strong

module Knockapi
  module Models
    module Messages
      BatchGetContentResponse =
        T.let(
          Knockapi::Internal::Type::ArrayOf[Knockapi::MessageContents],
          Knockapi::Internal::Type::Converter
        )
    end
  end
end
