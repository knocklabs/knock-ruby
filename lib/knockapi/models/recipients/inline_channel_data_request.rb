# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      # @type [Knockapi::Internal::Type::Converter]
      InlineChannelDataRequest =
        Knockapi::Internal::Type::HashOf[-> { Knockapi::Recipients::ChannelDataRequest }]
    end
  end
end
