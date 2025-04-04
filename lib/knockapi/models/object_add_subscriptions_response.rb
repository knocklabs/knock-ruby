# frozen_string_literal: true

module Knockapi
  module Models
    ObjectAddSubscriptionsResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::Subscription }]
  end
end
