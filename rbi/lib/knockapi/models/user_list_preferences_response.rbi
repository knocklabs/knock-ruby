# typed: strong

module Knockapi
  module Models
    UserListPreferencesResponse = T.type_alias { T::Array[Knockapi::Models::Recipients::PreferenceSet] }
  end
end
