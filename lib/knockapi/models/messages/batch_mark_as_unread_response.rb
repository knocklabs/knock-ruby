# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      BatchMarkAsUnreadResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Message }]
    end
  end
end
