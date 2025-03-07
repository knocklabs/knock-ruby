# typed: strong

module Knock
  module Models
    UserListPreferencesResponse = T.type_alias { T::Array[Knock::Models::PreferenceSet] }
  end
end
