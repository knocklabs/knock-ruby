# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      BatchMarkAsInteractedResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Message }]
    end
  end
end
