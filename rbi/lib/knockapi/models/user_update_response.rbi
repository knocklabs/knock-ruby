# typed: strong

module Knockapi
  module Models
    class UserUpdateResponse < Knockapi::Internal::Type::BaseModel
      # The ID for the user that you set when identifying them in Knock.
      sig { returns(String) }
      attr_accessor :id

      # The creation date of the user from your system.
      sig { returns(Time) }
      attr_accessor :created_at

      # The timestamp when the resource was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The typename of the schema.
      sig { returns(T.nilable(String)) }
      attr_reader :_typename

      sig { params(_typename: String).void }
      attr_writer :_typename

      # URL to the user's avatar image.
      sig { returns(T.nilable(String)) }
      attr_accessor :avatar

      # Channel-specific information that's needed to deliver a notification to an end
      # provider.
      sig { returns(T.nilable(T::Array[Knockapi::Models::Recipients::RecipientsChannelData])) }
      attr_accessor :channel_data

      # The primary email address for the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The locale of the user. Used for [message localization](/concepts/translations)
      sig { returns(T.nilable(String)) }
      attr_accessor :locale

      # Display name of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      # user (required for SMS channels).
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # A preference set represents a specific set of notification preferences for a
      # recipient. A recipient can have multiple preference sets.
      sig { returns(T.nilable(Knockapi::Models::Recipients::PreferenceSet)) }
      attr_reader :preferences

      sig do
        params(
          preferences: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSet, Knockapi::Internal::AnyHash))
        )
          .void
      end
      attr_writer :preferences

      # The timezone of the user. Must be a valid
      # [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used for
      # [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients)
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      # The user that was created or updated.
      sig do
        params(
          id: String,
          created_at: Time,
          updated_at: Time,
          _typename: String,
          avatar: T.nilable(String),
          channel_data: T.nilable(
            T::Array[T.any(Knockapi::Models::Recipients::RecipientsChannelData, Knockapi::Internal::AnyHash)]
          ),
          email: T.nilable(String),
          locale: T.nilable(String),
          name: T.nilable(String),
          phone_number: T.nilable(String),
          preferences: T.nilable(T.any(Knockapi::Models::Recipients::PreferenceSet, Knockapi::Internal::AnyHash)),
          timezone: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        updated_at:,
        _typename: nil,
        avatar: nil,
        channel_data: nil,
        email: nil,
        locale: nil,
        name: nil,
        phone_number: nil,
        preferences: nil,
        timezone: nil
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              updated_at: Time,
              _typename: String,
              avatar: T.nilable(String),
              channel_data: T.nilable(T::Array[Knockapi::Models::Recipients::RecipientsChannelData]),
              email: T.nilable(String),
              locale: T.nilable(String),
              name: T.nilable(String),
              phone_number: T.nilable(String),
              preferences: T.nilable(Knockapi::Models::Recipients::PreferenceSet),
              timezone: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end
