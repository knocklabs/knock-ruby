# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class InlineChannelDataRequestItem < Knockapi::Internal::Type::BaseModel
        # @!attribute channel_id
        #   The ID of the channel to associate data with
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::InlineChannelDataRequestItem::Data }

        # @!method initialize(channel_id:, data:)
        #   A request to set channel data for a type of channel inline.
        #
        #   @param channel_id [String]
        #   @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::InlineChannelDataRequestItem#data
        module Data
          extend Knockapi::Internal::Type::Union

          # The content of a push notification.
          variant -> { Knockapi::Models::Recipients::PushChannelData }

          # OneSignal channel data.
          variant -> { Knockapi::Models::Recipients::OneSignalChannelData }

          # Slack channel data
          variant -> { Knockapi::Models::Recipients::SlackChannelData }

          # Microsoft Teams channel connection.
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant -> { Knockapi::Models::Recipients::DiscordChannelData }

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
        end
      end

      InlineChannelDataRequest =
        Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::InlineChannelDataRequestItem }]
    end
  end
end
