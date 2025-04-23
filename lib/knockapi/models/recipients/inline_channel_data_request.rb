# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class InlineChannelDataRequestItem < Knockapi::Internal::Type::BaseModel
        # @!attribute channel_id
        #   The ID of the channel to associate data with.
        #
        #   @return [String]
        required :channel_id, String

        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::PushChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::InlineChannelDataRequestItem::Data }

        # @!attribute provider
        #   The provider identifier (must match the data.type value)
        #
        #   @return [String]
        required :provider, String

        # @!method initialize(channel_id:, data:, provider:)
        #   A request to set channel data for a type of channel inline.
        #
        #   @param channel_id [String]
        #   @param data [Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::PushChannelData]
        #   @param provider [String]

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::InlineChannelDataRequestItem#data
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

      InlineChannelDataRequest =
        Knockapi::Internal::Type::ArrayOf[-> { Knockapi::Models::Recipients::InlineChannelDataRequestItem }]
    end
  end
end
