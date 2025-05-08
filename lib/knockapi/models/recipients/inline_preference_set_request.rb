# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      # @type [Knockapi::Internal::Type::Converter]
      InlinePreferenceSetRequest =
        Knockapi::Internal::Type::HashOf[-> { Knockapi::Recipients::PreferenceSetRequest }]
    end
  end
end
