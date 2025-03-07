# frozen_string_literal: true

module Knock
  module Models
    ObjectListPreferencesResponse = Knock::ArrayOf[-> { Knock::Models::PreferenceSet }]
  end
end
