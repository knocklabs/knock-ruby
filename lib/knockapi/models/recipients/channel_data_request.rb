# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::PushChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::ChannelDataRequest::Data }

        # @!method initialize(data:)
        #   A request to set channel data for a type of channel.
        #
        #   @param data [Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::PushChannelData]

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::ChannelDataRequest#data
        module Data
          extend Knockapi::Internal::Type::Union

          discriminator :type

          # OneSignal channel data.
          variant :push_one_signal, -> { Knockapi::Models::Recipients::OneSignalChannelData }

          # Slack channel data
          variant :chat_slack, -> { Knockapi::Models::Recipients::SlackChannelData }

          # Microsoft Teams channel connection.
          variant :chat_ms_teams, -> { Knockapi::Models::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant :chat_discord, -> { Knockapi::Models::Recipients::DiscordChannelData }

          # The content of a push notification.
          variant -> { Knockapi::Models::Recipients::PushChannelData }

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::PushChannelData)]
        end
      end
    end
  end
end
