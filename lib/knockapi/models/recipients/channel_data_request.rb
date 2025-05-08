# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Recipients::PushChannelData, Knockapi::Recipients::OneSignalChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Recipients::ChannelDataRequest::Data }

        # @!method initialize(data:)
        #   A request to set channel data for a type of channel.
        #
        #   @param data [Knockapi::Recipients::PushChannelData, Knockapi::Recipients::OneSignalChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData] Channel data for a given channel type.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Recipients::ChannelDataRequest#data
        module Data
          extend Knockapi::Internal::Type::Union

          # The content of a push notification.
          variant -> { Knockapi::Recipients::PushChannelData }

          # OneSignal channel data.
          variant -> { Knockapi::Recipients::OneSignalChannelData }

          # Slack channel data
          variant -> { Knockapi::Recipients::SlackChannelData }

          # Microsoft Teams channel connection.
          variant -> { Knockapi::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant -> { Knockapi::Recipients::DiscordChannelData }

          # @!method self.variants
          #   @return [Array(Knockapi::Recipients::PushChannelData, Knockapi::Recipients::OneSignalChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData)]
        end
      end
    end
  end
end
