# frozen_string_literal: true

module Knock
  module Models
    InlinePreferenceSetRequest = Knock::HashOf[-> { Knock::Models::PreferenceSetRequest }]
  end
end
