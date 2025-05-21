# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      # Channel data for a given channel type.
      module InlineChannelDataRequestItem
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

      # @type [Knockapi::Internal::Type::Converter]
      InlineChannelDataRequest =
        Knockapi::Internal::Type::HashOf[union: -> { Knockapi::Recipients::InlineChannelDataRequestItem }]
    end
  end
end
