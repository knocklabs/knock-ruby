# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      BatchMarkAsInteractedResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Message }]
    end
  end
end
