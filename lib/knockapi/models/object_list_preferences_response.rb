# frozen_string_literal: true

module Knockapi
  module Models
    ObjectListPreferencesResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::PreferenceSet }]
  end
end
