# typed: strong

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Knockapi::InlineIdentifyUserRequest,
            Knockapi::Internal::AnyHash
          )
        end

      # The ID for the user that you set when identifying them in Knock.
      sig { returns(String) }
      attr_accessor :id

      # URL to the user's avatar image.
      sig { returns(T.nilable(String)) }
      attr_accessor :avatar

      # A request to set channel data for a type of channel inline.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              T.any(
                Knockapi::Recipients::PushChannelData,
                Knockapi::Recipients::OneSignalChannelData,
                Knockapi::Recipients::SlackChannelData,
                Knockapi::Recipients::MsTeamsChannelData,
                Knockapi::Recipients::DiscordChannelData
              )
            ]
          )
        )
      end
      attr_accessor :channel_data

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The primary email address for the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The locale of the user. Used for [message localization](/concepts/translations).
      sig { returns(T.nilable(String)) }
      attr_accessor :locale

      # Display name of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      # user (required for SMS channels).
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # Inline set preferences for a recipient, where the key is the preference set id.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest])
        )
      end
      attr_accessor :preferences

      # The timezone of the user. Must be a
      # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used
      # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      # A set of parameters to inline-identify a user with. Inline identifying the user
      # will ensure that the user is available before the request is executed in Knock.
      # It will perform an upsert for the user you're supplying, replacing any
      # properties specified.
      sig do
        params(
          id: String,
          avatar: T.nilable(String),
          channel_data:
            T.nilable(
              T::Hash[
                Symbol,
                T.any(
                  Knockapi::Recipients::PushChannelData::OrHash,
                  Knockapi::Recipients::OneSignalChannelData::OrHash,
                  Knockapi::Recipients::SlackChannelData::OrHash,
                  Knockapi::Recipients::MsTeamsChannelData::OrHash,
                  Knockapi::Recipients::DiscordChannelData::OrHash
                )
              ]
            ),
          created_at: T.nilable(Time),
          email: T.nilable(String),
          locale: T.nilable(String),
          name: T.nilable(String),
          phone_number: T.nilable(String),
          preferences:
            T.nilable(
              T::Hash[
                Symbol,
                Knockapi::Recipients::PreferenceSetRequest::OrHash
              ]
            ),
          timezone: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID for the user that you set when identifying them in Knock.
        id:,
        # URL to the user's avatar image.
        avatar: nil,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # The creation date of the user from your system.
        created_at: nil,
        # The primary email address for the user.
        email: nil,
        # The locale of the user. Used for [message localization](/concepts/translations).
        locale: nil,
        # Display name of the user.
        name: nil,
        # The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
        # user (required for SMS channels).
        phone_number: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        preferences: nil,
        # The timezone of the user. Must be a
        # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
        # Used
        # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
        timezone: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            avatar: T.nilable(String),
            channel_data:
              T.nilable(
                T::Hash[
                  Symbol,
                  T.any(
                    Knockapi::Recipients::PushChannelData,
                    Knockapi::Recipients::OneSignalChannelData,
                    Knockapi::Recipients::SlackChannelData,
                    Knockapi::Recipients::MsTeamsChannelData,
                    Knockapi::Recipients::DiscordChannelData
                  )
                ]
              ),
            created_at: T.nilable(Time),
            email: T.nilable(String),
            locale: T.nilable(String),
            name: T.nilable(String),
            phone_number: T.nilable(String),
            preferences:
              T.nilable(
                T::Hash[Symbol, Knockapi::Recipients::PreferenceSetRequest]
              ),
            timezone: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
