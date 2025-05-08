# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class RecipientsChannelData < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute channel_id
        #   The unique identifier for the channel.
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Recipients::PushChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData, Knockapi::Recipients::OneSignalChannelData]
        required :data, union: -> { Knockapi::Recipients::RecipientsChannelData::Data }

        # @!attribute provider
        #   The type of provider.
        #
        #   @return [Symbol, Knockapi::Recipients::RecipientsChannelData::Provider, nil]
        optional :provider, enum: -> { Knockapi::Recipients::RecipientsChannelData::Provider }

        # @!method initialize(_typename:, channel_id:, data:, provider: nil)
        #   Channel data for a given channel type.
        #
        #   @param _typename [String] The typename of the schema.
        #
        #   @param channel_id [String] The unique identifier for the channel.
        #
        #   @param data [Knockapi::Recipients::PushChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData, Knockapi::Recipients::OneSignalChannelData] Channel data for a given channel type.
        #
        #   @param provider [Symbol, Knockapi::Recipients::RecipientsChannelData::Provider] The type of provider.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Recipients::RecipientsChannelData#data
        module Data
          extend Knockapi::Internal::Type::Union

          # The content of a push notification.
          variant -> { Knockapi::Recipients::PushChannelData }

          # Slack channel data
          variant -> { Knockapi::Recipients::SlackChannelData }

          # Microsoft Teams channel connection.
          variant -> { Knockapi::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant -> { Knockapi::Recipients::DiscordChannelData }

          # OneSignal channel data.
          variant -> { Knockapi::Recipients::OneSignalChannelData }

          # @!method self.variants
          #   @return [Array(Knockapi::Recipients::PushChannelData, Knockapi::Recipients::SlackChannelData, Knockapi::Recipients::MsTeamsChannelData, Knockapi::Recipients::DiscordChannelData, Knockapi::Recipients::OneSignalChannelData)]
        end

        # The type of provider.
        #
        # @see Knockapi::Recipients::RecipientsChannelData#provider
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
