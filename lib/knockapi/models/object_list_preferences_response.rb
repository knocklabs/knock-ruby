# frozen_string_literal: true

module Knockapi
  module Models
    # @type [Knockapi::Internal::Type::Converter]
    ObjectListPreferencesResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Recipients::PreferenceSet }]
  end
end
