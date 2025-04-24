# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute player_ids
        #   A list of OneSignal player IDs.
        #
        #   @return [Array<String>]
        required :player_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(player_ids:)
        #   OneSignal channel data.
        #
        #   @param player_ids [Array<String>]
      end
    end
  end
end
