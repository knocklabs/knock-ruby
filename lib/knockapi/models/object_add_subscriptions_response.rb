# frozen_string_literal: true

module Knockapi
  module Models
    ObjectAddSubscriptionsResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Recipients::Subscription }]
  end
end
