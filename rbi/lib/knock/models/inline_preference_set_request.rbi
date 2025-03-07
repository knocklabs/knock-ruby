# typed: strong

module Knock
  module Models
    InlinePreferenceSetRequest = T.type_alias { T::Hash[Symbol, Knock::Models::PreferenceSetRequest] }
  end
end
