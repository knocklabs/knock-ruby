# frozen_string_literal: true

module Knock
  module Models
    ObjectDeleteSubscriptionsResponse = Knock::ArrayOf[-> { Knock::Models::Subscription }]
  end
end
