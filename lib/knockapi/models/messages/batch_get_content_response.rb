# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @type [Knockapi::Internal::Type::Converter]
      BatchGetContentResponse = Knockapi::Internal::Type::ArrayOf[-> { Knockapi::MessageContents }]
    end
  end
end
