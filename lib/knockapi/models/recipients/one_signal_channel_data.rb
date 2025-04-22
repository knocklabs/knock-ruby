# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class OneSignalChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Typename]
        required :_typename,
                 enum: -> { Knockapi::Models::Recipients::OneSignalChannelData::Typename },
                 api_name: :__typename

        # @!attribute player_ids
        #   A list of OneSignal player IDs.
        #
        #   @return [Array<String>]
        required :player_ids, Knockapi::Internal::Type::ArrayOf[String]

        # @!method initialize(_typename:, player_ids:)
        #   OneSignal channel data.
        #
        #   @param _typename [Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Typename]
        #   @param player_ids [Array<String>]

        # The typename of the schema.
        #
        # @see Knockapi::Models::Recipients::OneSignalChannelData#_typename
        module Typename
          extend Knockapi::Internal::Type::Enum

          ONE_SIGNAL_CHANNEL_DATA = :OneSignalChannelData

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
