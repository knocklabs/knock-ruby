# typed: strong

module Knockapi
  module Models
    ObjectAddSubscriptionsResponse =
      T.let(Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription], Knockapi::Internal::Type::Converter)
  end
end
