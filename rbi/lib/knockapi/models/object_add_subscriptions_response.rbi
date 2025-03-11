# typed: strong

module Knockapi
  module Models
    ObjectAddSubscriptionsResponse = T.type_alias { T::Array[Knockapi::Models::Recipients::Subscription] }
  end
end
