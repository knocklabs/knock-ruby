# frozen_string_literal: true

module Knock
  module Models
    InlineChannelDataRequest = Knock::HashOf[-> { Knock::Models::ChannelDataRequest }]
  end
end
