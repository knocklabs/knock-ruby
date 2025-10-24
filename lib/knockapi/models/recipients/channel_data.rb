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
        #   @return [Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull, Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull, Knockapi::Models::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
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
        #   @param data [Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull, Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull, Knockapi::Models::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] Channel data for a given channel type.
        #
        #   @param provider [Symbol, Knockapi::Models::Recipients::RecipientsChannelData::Provider] The type of provider.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::RecipientsChannelData#data
        module Data
          extend Knockapi::Internal::Type::Union

          # Push channel data.
          variant -> { Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull }

          # AWS SNS push channel data.
          variant -> { Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull }

          # OneSignal channel data.
          variant -> { Knockapi::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly }

          # Slack channel data.
          variant -> { Knockapi::Recipients::SlackChannelData }

          # Microsoft Teams channel data.
          variant -> { Knockapi::Recipients::MsTeamsChannelData }

          # Discord channel data.
          variant -> { Knockapi::Recipients::DiscordChannelData }

          class PushChannelDataFull < Knockapi::Internal::Type::BaseModel
            # @!attribute devices
            #   A list of devices. Each device contains a token, and optionally a locale and
            #   timezone.
            #
            #   @return [Array<Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device>]
            required :devices,
                     -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device] }

            # @!attribute tokens
            #   A list of push channel tokens.
            #
            #   @return [Array<String>]
            required :tokens, Knockapi::Internal::Type::ArrayOf[String]

            # @!method initialize(devices:, tokens:)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull}
            #   for more details.
            #
            #   Push channel data.
            #
            #   @param devices [Array<Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device>] A list of devices. Each device contains a token, and optionally a locale and tim
            #
            #   @param tokens [Array<String>] A list of push channel tokens.

            class Device < Knockapi::Internal::Type::BaseModel
              # @!attribute token
              #   The device token to send the push notification to.
              #
              #   @return [String]
              required :token, String

              # @!attribute locale
              #   The locale of the object. Used for
              #   [message localization](/concepts/translations).
              #
              #   @return [String, nil]
              optional :locale, String, nil?: true

              # @!attribute timezone
              #   The timezone of the object. Must be a
              #   valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
              #   Used
              #   for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
              #
              #   @return [String, nil]
              optional :timezone, String, nil?: true

              # @!method initialize(token:, locale: nil, timezone: nil)
              #   Some parameter documentations has been truncated, see
              #   {Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull::Device}
              #   for more details.
              #
              #   @param token [String] The device token to send the push notification to.
              #
              #   @param locale [String, nil] The locale of the object. Used for [message localization](/concepts/translations
              #
              #   @param timezone [String, nil] The timezone of the object. Must be a valid [tz database time zone string](https
            end
          end

          class AwssnsPushChannelDataFull < Knockapi::Internal::Type::BaseModel
            # @!attribute devices
            #   A list of devices. Each device contains a target_arn, and optionally a locale
            #   and timezone.
            #
            #   @return [Array<Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device>]
            required :devices,
                     -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device] }

            # @!attribute target_arns
            #   A list of platform endpoint ARNs. See
            #   [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
            #
            #   @return [Array<String>]
            required :target_arns, Knockapi::Internal::Type::ArrayOf[String]

            # @!method initialize(devices:, target_arns:)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull}
            #   for more details.
            #
            #   AWS SNS push channel data.
            #
            #   @param devices [Array<Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device>] A list of devices. Each device contains a target_arn, and optionally a locale an
            #
            #   @param target_arns [Array<String>] A list of platform endpoint ARNs. See [Setting up an Amazon SNS platform endpoin

            class Device < Knockapi::Internal::Type::BaseModel
              # @!attribute target_arn
              #   The ARN of a platform endpoint associated with a platform application and a
              #   device token. See
              #   [Setting up an Amazon SNS platform endpoint for mobile notifications](https://docs.aws.amazon.com/sns/latest/dg/mobile-platform-endpoint.html).
              #
              #   @return [String]
              required :target_arn, String

              # @!attribute locale
              #   The locale of the object. Used for
              #   [message localization](/concepts/translations).
              #
              #   @return [String, nil]
              optional :locale, String, nil?: true

              # @!attribute timezone
              #   The timezone of the object. Must be a
              #   valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
              #   Used
              #   for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
              #
              #   @return [String, nil]
              optional :timezone, String, nil?: true

              # @!method initialize(target_arn:, locale: nil, timezone: nil)
              #   Some parameter documentations has been truncated, see
              #   {Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull::Device}
              #   for more details.
              #
              #   @param target_arn [String] The ARN of a platform endpoint associated with a platform application and a devi
              #
              #   @param locale [String, nil] The locale of the object. Used for [message localization](/concepts/translations
              #
              #   @param timezone [String, nil] The timezone of the object. Must be a valid [tz database time zone string](https
            end
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
          #   @return [Array(Knockapi::Models::Recipients::RecipientsChannelData::Data::PushChannelDataFull, Knockapi::Models::Recipients::RecipientsChannelData::Data::AwssnsPushChannelDataFull, Knockapi::Models::Recipients::RecipientsChannelData::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
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
