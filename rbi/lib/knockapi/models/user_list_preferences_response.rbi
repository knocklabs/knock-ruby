# typed: strong

module Knockapi
  module Models
    UserListPreferencesResponse =
      T.let(Knockapi::ArrayOf[Knockapi::Models::Recipients::PreferenceSet], Knockapi::Type::Converter)
  end
end
