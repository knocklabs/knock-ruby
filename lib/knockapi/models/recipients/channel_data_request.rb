# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class ChannelDataRequest < Knockapi::Internal::Type::BaseModel
        # @!attribute data
        #   Channel data for a given channel type.
        #
        #   @return [Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData]
        required :data, union: -> { Knockapi::Recipients::ChannelDataRequest::Data }

        # @!method initialize(data:)
        #   A request to set channel data for a type of channel.
        #
        #   @param data [Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData] Channel data for a given channel type.

        # Channel data for a given channel type.
        #
        # @see Knockapi::Models::Recipients::ChannelDataRequest#data
        module Data
          extend Knockapi::Internal::Type::Union

          # Push channel data.
          variant -> { Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly }

          # Push channel data.
          variant -> { Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly }

          # AWS SNS push channel data.
          variant -> { Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly }

          # AWS SNS push channel data.
          variant -> { Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly }

          # OneSignal channel data.
          variant -> { Knockapi::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly }

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

          class PushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
            # @!attribute devices
            #   A list of devices. Each device contains a token, and optionally a locale and
            #   timezone.
            #
            #   @return [Array<Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device>]
            required :devices,
                     -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device] }

            # @!method initialize(devices:)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly}
            #   for more details.
            #
            #   Push channel data.
            #
            #   @param devices [Array<Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device>] A list of devices. Each device contains a token, and optionally a locale and tim

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
              #   {Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly::Device}
              #   for more details.
              #
              #   @param token [String] The device token to send the push notification to.
              #
              #   @param locale [String, nil] The locale of the object. Used for [message localization](/concepts/translations
              #
              #   @param timezone [String, nil] The timezone of the object. Must be a valid [tz database time zone string](https
            end
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
            #   {Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly}
            #   for more details.
            #
            #   AWS SNS push channel data.
            #
            #   @param target_arns [Array<String>] A list of platform endpoint ARNs. See [Setting up an Amazon SNS platform endpoin
          end

          class AwssnsPushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
            # @!attribute devices
            #   A list of devices. Each device contains a target_arn, and optionally a locale
            #   and timezone.
            #
            #   @return [Array<Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device>]
            required :devices,
                     -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device] }

            # @!method initialize(devices:)
            #   Some parameter documentations has been truncated, see
            #   {Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly}
            #   for more details.
            #
            #   AWS SNS push channel data.
            #
            #   @param devices [Array<Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device>] A list of devices. Each device contains a target_arn, and optionally a locale an

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
              #   {Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly::Device}
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
          #   @return [Array(Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataTokensOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::PushChannelDataDevicesOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataTargetArNsOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::AwssnsPushChannelDataDevicesOnly, Knockapi::Models::Recipients::ChannelDataRequest::Data::OneSignalChannelDataPlayerIDsOnly, Knockapi::Models::Recipients::SlackChannelData, Knockapi::Models::Recipients::MsTeamsChannelData, Knockapi::Models::Recipients::DiscordChannelData)]
        end
      end
    end
  end
end
