# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute channel_id
        #   The unique identifier for the channel.
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::RecipientsChannelData::Data }

        # @!attribute provider
        #   The type of provider.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::RecipientsChannelData::Provider, nil]
        optional :provider, enum: -> { Knockapi::Models::Recipients::RecipientsChannelData::Provider }

        # @!method initialize(channel_id:, data:, provider: nil)
        #   Channel data for a given channel type.
        #
        #   @param channel_id [String] The unique identifier for the channel.
        #
        #   @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData] Channel data for a given channel type.
        #
        #   @param provider [Symbol, Knockapi::Models::Recipients::RecipientsChannelData::Provider] The type of provider.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::RecipientsChannelData#data
        module Data
          extend Knockapi::Internal::Type::Union

          # The content of a push notification.
          variant -> { Knockapi::Models::Recipients::PushChannelData }

          # Slack channel data
          variant -> { Knockapi::Models::Recipients::SlackChannelData }

          # Microsoft Teams channel connection.
          variant -> { Knockapi::Models::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant -> { Knockapi::Models::Recipients::DiscordChannelData }

          # OneSignal channel data.
          variant -> { Knockapi::Models::Recipients::OneSignalChannelData }

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData)]
        end

        # The type of provider.
        #
        # @see Knockapi::Models::Recipients::RecipientsChannelData#provider
        module Provider
          extend Knockapi::Internal::Type::Enum

          PUSH_FCM = :push_fcm
          PUSH_APNS = :push_apns
          PUSH_EXPO = :push_expo
          PUSH_ONE_SIGNAL = :push_one_signal
          CHAT_SLACK = :chat_slack
          CHAT_MS_TEAMS = :chat_ms_teams
          CHAT_DISCORD = :chat_discord
          HTTP_KNOCK_WEBHOOK = :http_knock_webhook

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
