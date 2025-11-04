# frozen_string_literal: true

module Knockapi
  module Models
    module Recipients
      class PushChannelDataDevicesOnly < Knockapi::Internal::Type::BaseModel
        # @!attribute devices
        #   A list of devices. Each device contains a token, and optionally a locale and
        #   timezone.
        #
        #   @return [Array<Knockapi::Models::Recipients::PushChannelDataDevicesOnly::Device>]
        required :devices,
                 -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Recipients::PushChannelDataDevicesOnly::Device] }

        # @!method initialize(devices:)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::Recipients::PushChannelDataDevicesOnly} for more details.
        #
        #   Push channel data.
        #
        #   @param devices [Array<Knockapi::Models::Recipients::PushChannelDataDevicesOnly::Device>] A list of devices. Each device contains a token, and optionally a locale and tim

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
          #   {Knockapi::Models::Recipients::PushChannelDataDevicesOnly::Device} for more
          #   details.
          #
          #   @param token [String] The device token to send the push notification to.
          #
          #   @param locale [String, nil] The locale of the object. Used for [message localization](/concepts/translations
          #
          #   @param timezone [String, nil] The timezone of the object. Must be a valid [tz database time zone string](https
        end
      end
    end
  end
end
