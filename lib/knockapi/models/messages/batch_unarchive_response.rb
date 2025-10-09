# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @type [Knockapi::Internal::Type::Converter]
      BatchUnarchiveResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Message }]
    end
  end
end
