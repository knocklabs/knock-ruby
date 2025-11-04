# typed: strong

module Knockapi
  module Models
    class ObjectSetParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::ObjectSetParams, Knockapi::Internal::AnyHash)
        end

      # A request to set channel data for a type of channel inline.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              T.any(
                Knockapi::Recipients::PushChannelDataTokensOnly,
                Knockapi::Recipients::PushChannelDataDevicesOnly,
                Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
                Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            ]
          )
        )
      end
      attr_reader :channel_data

      sig do
        params(
          channel_data:
            T::Hash[
              Symbol,
              T.any(
                Knockapi::Recipients::PushChannelDataTokensOnly::OrHash,
                Knockapi::Recipients::PushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly::OrHash,
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly::OrHash,
                Knockapi::Recipients::SlackChannelData::OrHash,
                Knockapi::Recipients::MsTeamsChannelData::OrHash,
                Knockapi::Recipients::DiscordChannelData::OrHash
              )
            ]
        ).void
      end
      attr_writer :channel_data

      # The locale of the object. Used for
      # [message localization](/concepts/translations).
      sig { returns(T.nilable(String)) }
      attr_accessor :locale

      # Inline set preferences for a recipient, where the key is the preference set id.
      # Preferences that are set inline will be merged into any existing preferences
      # rather than replacing them.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest])
        )
      end
      attr_reader :preferences

      sig do
        params(
          preferences:
            T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest::OrHash]
        ).void
      end
      attr_writer :preferences

      # The timezone of the object. Must be a
      # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used
      # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      sig do
        params(
          channel_data:
            T::Hash[
              Symbol,
              T.any(
                Knockapi::Recipients::PushChannelDataTokensOnly::OrHash,
                Knockapi::Recipients::PushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly::OrHash,
                Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly::OrHash,
                Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly::OrHash,
                Knockapi::Recipients::SlackChannelData::OrHash,
                Knockapi::Recipients::MsTeamsChannelData::OrHash,
                Knockapi::Recipients::DiscordChannelData::OrHash
              )
            ],
          locale: T.nilable(String),
          preferences:
            T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest::OrHash],
          timezone: T.nilable(String),
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # The locale of the object. Used for
        # [message localization](/concepts/translations).
        locale: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        # Preferences that are set inline will be merged into any existing preferences
        # rather than replacing them.
        preferences: nil,
        # The timezone of the object. Must be a
        # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
        # Used
        # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
        timezone: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            channel_data:
              T::Hash[
                Symbol,
                T.any(
                  Knockapi::Recipients::PushChannelDataTokensOnly,
                  Knockapi::Recipients::PushChannelDataDevicesOnly,
                  Knockapi::Recipients::AwsSnsPushChannelDataTargetArnsOnly,
                  Knockapi::Recipients::AwsSnsPushChannelDataDevicesOnly,
                  Knockapi::Recipients::OneSignalChannelDataPlayerIDsOnly,
                  Knockapi::Recipients::SlackChannelData,
                  Knockapi::Recipients::MsTeamsChannelData,
                  Knockapi::Recipients::DiscordChannelData
                )
              ],
            locale: T.nilable(String),
            preferences:
              T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest],
            timezone: T.nilable(String),
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
