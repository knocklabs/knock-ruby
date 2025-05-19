# typed: strong

module Knockapi
  module Models
    ObjectListPreferencesResponse =
      T.let(
        Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PreferenceSet],
        Knockapi::Internal::Type::Converter
      )
  end
end
