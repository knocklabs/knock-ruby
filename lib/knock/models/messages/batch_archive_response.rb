# frozen_string_literal: true

module Knock
  module Models
    module Messages
      BatchArchiveResponse = Knock::ArrayOf[-> { Knock::Models::Message }]
    end
  end
end
