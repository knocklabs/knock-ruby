# typed: strong

module Knockapi
  module Models
    ObjectAddSubscriptionsResponse =
      T.let(
        Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Recipients::Subscription],
        Knockapi::Internal::Type::Converter
      )
  end
end
