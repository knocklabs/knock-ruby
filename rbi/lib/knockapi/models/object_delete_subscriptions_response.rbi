# typed: strong

module Knockapi
  module Models
    ObjectDeleteSubscriptionsResponse = T.type_alias { T::Array[Knockapi::Models::Recipients::Subscription] }
  end
end
