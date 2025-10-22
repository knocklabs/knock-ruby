# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      # Channel data for a given channel type.
      module InlineChannelDataRequestItem
        extend Knockapi::Internal::Type::Union

        # Push channel data.
        variant -> { Knockapi::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly }

        # AWS SNS push channel data.
        variant -> { Knockapi::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly }

        # OneSignal channel data.
        variant -> { Knockapi::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly }

        # Slack channel data.
        variant -> { Knockapi::Recipients::SlackChannelData }

        # Microsoft Teams channel data.
        variant -> { Knockapi::Recipients::MsTeamsChannelData }

        # Discord channel data.
        variant -> { Knockapi::Recipients::DiscordChannelData }

        class PushChannelDataTokensOnly < Knockapi::Internal::Type::BaseModel
          # @!attribute tokens
          #   A list of push channel tokens.
          #
          #   @return [Array<String>]
          required :tokens, Knockapi::Internal::Type::ArrayOf[String]

          # @!method initialize(tokens:)
          #   Push channel data.
          #
          #   @param tokens [Array<String>] A list of push channel tokens.
        end

        class AwssnsPushChannelDataTargetArNsOnly < Knockapi::Internal::Type::BaseModel
          # @!attribute target_arns
          #   A list of platform endpoint ARNs. See
          #   [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
          #
          #   @return [Array<String>]
          required :target_arns, Knockapi::Internal::Type::ArrayOf[String]

          # @!method initialize(target_arns:)
          #   Some parameter documentations has been truncated, see
          #   {Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly}
          #   for more details.
          #
          #   AWS SNS push channel data.
          #
          #   @param target_arns [Array<String>] A list of platform endpoint ARNs. See [Setting up an Amazon SNS platform endpoin
        end

        class OneSignalChannelDataPlayerIDsOnly < Knockapi::Internal::Type::BaseModel
          # @!attribute player_ids
          #   A list of OneSignal player IDs.
          #
          #   @return [Array<String>]
          required :player_ids, Knockapi::Internal::Type::ArrayOf[String]

          # @!method initialize(player_ids:)
          #   OneSignal channel data.
          #
          #   @param player_ids [Array<String>] A list of OneSignal player IDs.
        end

        # @!method self.variants
        #   @return [Array(Knockapi::Models::Recipients::InlineChannelDataRequestItem::PushChannelDataTokensOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::InlineChannelDataRequestItem::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
      end

      # @type [Knockapi::Internal::Type::Converter]
      InlineChannelDataRequest =
        Knockapi::Internal::Type::HashOf[union: -> { Knockapi::Recipients::InlineChannelDataRequestItem }]
    end
  end
end
