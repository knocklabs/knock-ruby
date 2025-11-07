# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      # Channel data for a given channel type.
      module InlineChannelDataRequestItem
        extend Knockapi::Internal::Type::Union

        # Push channel data.
        variant -> { Knockapi::Recipients::PushChannelDataTokensOnly }

        # Push channel data.
        variant -> { Knockapi::Recipients::PushChannelDataDevicesOnly }

        # AWS SNS push channel data.
        variant -> { Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly }

        # AWS SNS push channel data.
        variant -> { Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly }

        # OneSignal channel data.
        variant -> { Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly }

        # Slack channel data.
        variant -> { Knockapi::Recipients::SlackChannelData }

        # Microsoft Teams channel data.
        variant -> { Knockapi::Recipients::MsTeamsChannelData }

        # Discord channel data.
        variant -> { Knockapi::Recipients::DiscordChannelData }

        # @!method self.variants
        #   @return [Array(Knockapi::Models::Recipients::PushChannelDataTokensOnly, Knockapi::Models::Recipients::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataTargetArnsOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
      end

      # @type [Knockapi::Internal::Type::Converter]
      InlineChannelDataRequest =
        Knockapi::Internal::Type::HashOf[union: -> { Knockapi::Recipients::InlineChannelDataRequestItem }]
    end
  end
end
