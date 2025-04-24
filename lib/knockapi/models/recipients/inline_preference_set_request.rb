# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      InlinePreferenceSetRequest =
        Knockapi::Internal::Type::HashOf[-> { Knockapi::Models::Recipients::PreferenceSetRequest }]
    end
  end
end
