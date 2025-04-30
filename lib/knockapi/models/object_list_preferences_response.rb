# frozen_string_literal: true

module Knockapi
  module Models
    # @type [Knockapi::Internal::Type::Converter]
    ObjectListPreferencesResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::PreferenceSet }]
  end
end
