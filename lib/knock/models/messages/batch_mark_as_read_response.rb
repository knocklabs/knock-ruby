# frozen_string_literal: true

module Knock
  module Models
    module Messages
      BatchMarkAsReadResponse = Knock::ArrayOf[-> { Knock::Models::Message }]
    end
  end
end
