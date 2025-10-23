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
        #   @return [Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataTokensOnly, Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Recipients::RecipientsChannelData::Data }

        # @!attribute provider
        #   The type of provider.
        #
        #   @return [Symbol, Knockapi::Models::Recipients::RecipientsChannelData::Provider, nil]
        optional :provider, enum: -> { Knockapi::Recipients::RecipientsChannelData::Provider }

        # @!method initialize(_typename:, channel_id:, data:, provider: nil)
        #   Channel data for a given channel type.
        #
        #   @param _typename [String] The typename of the schema.
        #
        #   @param channel_id [String] The unique identifier for the channel.
        #
        #   @param data [Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataTokensOnly, Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] Channel data for a given channel type.
        #
        #   @param provider [Symbol, Knockapi::Models::Recipients::RecipientsChannelData::Provider] The type of provider.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::RecipientsChannelData#data
        module Data
          extend Knockapi::Internal::Type::Union

          # Push channel data.
          variant -> { Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataTokensOnly }

          # AWS SNS push channel data.
          variant -> { Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataTargetArNsOnly }

          # OneSignal channel data.
          variant -> { Knockapi::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly }

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
            #   {Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataTargetArNsOnly}
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
          #   @return [Array(Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataTokensOnly, Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
        end

        # The type of provider.
        #
        # @see Knockapi::Models::Recipients::RecipientsChannelData#provider
        module Provider
          extend Knockapi::Internal::Type::Enum

          PUSH_FCM = :push_fcm
          PUSH_APNS = :push_apns
          PUSH_AWS_SNS = :push_aws_sns
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
