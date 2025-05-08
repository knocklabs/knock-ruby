# frozen_string_literal: true

module Knockapi
  module Models
    # @type [Knockapi::Internal::Type::Converter]
    ObjectDeleteSubscriptionsResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Recipients::Subscription }]
  end
end
