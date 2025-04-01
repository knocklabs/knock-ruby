# typed: strong

module Knockapi
  module Models
    module Messages
      BatchUnarchiveResponse = T.let(Knockapi::ArrayOf[Knockapi::Models::Message], Knockapi::Type::Converter)
    end
  end
end
