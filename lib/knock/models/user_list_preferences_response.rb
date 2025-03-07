# frozen_string_literal: true

module Knock
  module Models
    UserListPreferencesResponse = Knock::ArrayOf[-> { Knock::Models::PreferenceSet }]
  end
end
