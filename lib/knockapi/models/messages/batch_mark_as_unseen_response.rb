# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      BatchMarkAsUnseenResponse = Knockapi::ArrayOf[-> { Knockapi::Models::Message }]
    end
  end
end
