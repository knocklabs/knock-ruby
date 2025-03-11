# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      BatchMarkAsReadResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Message }]
    end
  end
end
