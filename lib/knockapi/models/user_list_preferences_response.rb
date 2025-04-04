# frozen_string_literal: true

module Knockapi
  module Models
    UserListPreferencesResponse =
      Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::PreferenceSet }]
  end
end
