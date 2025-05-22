# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @type [Knockapi::Internal::Type::Converter]
      BatchMarkAsUnseenResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Message }]
    end
  end
end
