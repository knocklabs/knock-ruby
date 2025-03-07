# frozen_string_literal: true

module Knock
  module Models
    module Messages
      BatchMarkAsUnreadResponse = Knock::ArrayOf[-> { Knock::Models::Message }]
    end
  end
end
