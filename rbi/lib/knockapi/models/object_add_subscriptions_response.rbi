# typed: strong

module Knockapi
  module Models
    ObjectAddSubscriptionsResponse =
      T.let(Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription], Knockapi::Type::Converter)
  end
end
