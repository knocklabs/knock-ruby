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

        # @!attribute type
        #   The type of provider.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Type]
        required :type, enum: -> { Knockapi::Models::Recipients::OneSignalChannelData::Type }

        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Typename, nil]
        optional :_typename,
                 enum: -> { Knockapi::Models::Recipients::OneSignalChannelData::Typename },
                 api_name: :__typename

        # @!method initialize(player_ids:, type:, _typename: nil)
        #   OneSignal channel data.
        #
        #   @param player_ids [Array<String>]
        #   @param type [Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Type]
        #   @param _typename [Symbol, Knockapi::Models::Recipients::OneSignalChannelData::Typename]

        # The type of provider.
        #
        # @see Knockapi::Models::Recipients::OneSignalChannelData#type
        module Type
          extend Knockapi::Internal::Type::Enum

          PUSH_ONE_SIGNAL = :push_one_signal

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
