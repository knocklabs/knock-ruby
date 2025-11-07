# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class AwsSnsPushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
        # @!attribute devices
        #   A list of devices. Each device contains a target_arn, and optionally a locale
        #   and timezone.
        #
        #   @return [Array<Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly::Device>]
        required :devices,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::Device] }

        # @!method initialize(devices:)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly} for more
        #   details.
        #
        #   AWS SNS push channel data.
        #
        #   @param devices [Array<Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly::Device>] A list of devices. Each device contains a target_arn, and optionally a locale an

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
          #   {Knockapi::Models::Recipients::AwsSnsPushChannelDataDevicesOnly::Device} for
          #   more details.
          #
          #   @param target_arn [String] The ARN of a platform endpoint associated with a platform application and a devi
          #
          #   @param locale [String, nil] The locale of the object. Used for [message localization](/concepts/translations
          #
          #   @param timezone [String, nil] The timezone of the object. Must be a valid [tz database time zone string](https
        end
      end
    end
  end
end
