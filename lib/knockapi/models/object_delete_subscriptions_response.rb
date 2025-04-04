# frozen_string_literal: true

module Knockapi
  module Models
    ObjectDeleteSubscriptionsResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::Subscription }]
  end
end
