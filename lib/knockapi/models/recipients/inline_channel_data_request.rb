# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      # Channel data for a given channel type.
      module InlineChannelDataRequestItem
        extend Knockapi::Internal::Type::Union

        # Push channel data.
        variant -> { Knockapi::Recipients::PushChannelData }

        # OneSignal channel data.
        variant -> { Knockapi::Recipients::OneSignalChannelData }

        # AWS SNS push channel data.
        variant -> { Knockapi::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData }

        # Slack channel data.
        variant -> { Knockapi::Recipients::SlackChannelData }

        # Microsoft Teams channel data.
        variant -> { Knockapi::Recipients::MsTeamsChannelData }

        # Discord channel data.
        variant -> { Knockapi::Recipients::DiscordChannelData }

        class AwsSnsPushChannelData < Knockapi::Internal::Type::BaseModel
          # @!attribute target_arns
          #   A list of platform endpoint ARNs. See
          #   [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
          #
          #   @return [Array<String>]
          required :target_arns, Knockapi::Internal::Type::ArrayOf[String]

          # @!method initialize(target_arns:)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData}
          #   for more details.
          #
          #   AWS SNS push channel data.
          #
          #   @param target_arns [Array<String>] A list of platform endpoint ARNs. See [Setting up an Amazon SNS platform endpoin
        end

        # @!method self.variants
        #   @return [Array(Knockapi::Models::Recipients::PushChannelData, Knockapi::Models::Recipients::OneSignalChannelData, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwsSnsPushChannelData, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
      end

      # @type [Knockapi::Internal::Type::Converter]
      InlineChannelDataRequest =
        Knockapi::Internal::Type::HashOf[union: -> { Knockapi::Recipients::InlineChannelDataRequestItem }]
    end
  end
end
