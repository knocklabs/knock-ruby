# frozen_string_literal: true

module Knock
  module Models
    module Messages
      BatchUnarchiveResponse = Knock::ArrayOf[-> { Knock::Models::Message }]
    end
  end
end
