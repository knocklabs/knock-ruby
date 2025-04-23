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
        #   @return [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]
        required :data, union: -> { Knockapi::Models::Recipients::RecipientsChannelData::Data }

        # @!method initialize(_typename:, channel_id:, data:)
        #   Channel data for a given channel type.
        #
        #   @param _typename [String]
        #   @param channel_id [String]
        #   @param data [Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData]

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::RecipientsChannelData#data
        module Data
          extend Knockapi::Internal::Type::Union

          discriminator :__typename

          # The content of a push notification.
          variant :PushChannelData, -> { Knockapi::Models::Recipients::PushChannelData }

          # Slack channel data
          variant :SlackChannelData, -> { Knockapi::Models::Recipients::SlackChannelData }

          # Microsoft Teams channel connection.
          variant :MsTeamsChannelData, -> { Knockapi::Models::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant :DiscordChannelData, -> { Knockapi::Models::Recipients::DiscordChannelData }

          # OneSignal channel data.
          variant :OneSignalChannelData, -> { Knockapi::Models::Recipients::OneSignalChannelData }

          # @!method self.variants
          #   @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData, Knockapi::Models::Recipients::OneSignalChannelData)]
        end
      end
    end
  end
end
