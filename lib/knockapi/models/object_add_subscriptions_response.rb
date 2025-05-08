# frozen_string_literal: true

module Knockapi
  module Models
    # @type [Knockapi::Internal::Type::Converter]
    ObjectAddSubscriptionsResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Recipients::Subscription }]
  end
end
