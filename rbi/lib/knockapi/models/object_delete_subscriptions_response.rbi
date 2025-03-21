# typed: strong

module Knockapi
  module Models
    ObjectDeleteSubscriptionsResponse =
      T.let(Knockapi::ArrayOf[Knockapi::Models::Recipients::Subscription], Knockapi::Converter)
  end
end
