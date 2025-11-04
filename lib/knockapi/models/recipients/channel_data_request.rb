# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::PushChannelDataTokensOnly, Knockapi::Models::Recipients::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataTargetArnsOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Recipients::ChannelDataRequest::Data }

        # @!method initialize(data:)
        #   A request to set channel data for a type of channel.
        #
        #   @param data [Knockapi::Models::Recipients::PushChannelDataTokensOnly, Knockapi::Models::Recipients::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataTargetArnsOnly, Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] Channel data for a given channel type.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::ChannelDataRequest#data
        module Data
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
      end
    end
  end
end
