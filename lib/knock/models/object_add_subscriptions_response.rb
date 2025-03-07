# frozen_string_literal: true

module Knock
  module Models
    ObjectAddSubscriptionsResponse = Knock::ArrayOf[-> { Knock::Models::Subscription }]
  end
end
