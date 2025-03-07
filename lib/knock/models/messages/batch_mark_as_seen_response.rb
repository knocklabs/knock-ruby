# frozen_string_literal: true

module Knock
  module Models
    module Messages
      BatchMarkAsSeenResponse = Knock::ArrayOf[-> { Knock::Models::Message }]
    end
  end
end
