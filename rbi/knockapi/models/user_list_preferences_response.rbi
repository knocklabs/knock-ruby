# typed: strong

module Knockapi
  module Models
    UserListPreferencesResponse =
      T.let(
        Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PreferenceSet],
        Knockapi::Internal::Type::Converter
      )
  end
end
