# frozen_string_literal: true

module Knock
  module Models
    class OneSignalChannelData < Knock::BaseModel
      # @!attribute player_ids
      #   The OneSignal player IDs
      #
      #   @return [Array<String>]
      required :player_ids, Knock::ArrayOf[String]

      # @!parse
      #   # OneSignal channel data
      #   #
      #   # @param player_ids [Array<String>]
      #   #
      #   def initialize(player_ids:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void
    end
  end
end
