# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      InlineChannelDataRequest =
        Knockapi::Internal::Type::HashOf[-> { Knockapi::Models::Recipients::ChannelDataRequest }]
    end
  end
end
