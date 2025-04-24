# typed: strong

module Knockapi
  module Models
    class IdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # URL to the user's avatar image.
      sig { returns(T.nilable(String)) }
      attr_accessor :avatar

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
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

      # The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      # user (required for SMS channels).
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # Inline set preferences for a recipient.
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
      attr_accessor :preferences

      # The timezone of the user. Must be a valid
      # [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used for
      # [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      # A set of parameters to identify a user with. Does not include the user ID, as
      # that's specified elsewhere in the request. You can supply any additional
      # properties you'd like to upsert for the user.
      sig do
        params(
          avatar: T.nilable(String),
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          email: T.nilable(String),
          locale: T.nilable(String),
          name: T.nilable(String),
          phone_number: T.nilable(String),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash)]
          ),
          timezone: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        avatar: nil,
        channel_data: nil,
        created_at: nil,
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
              avatar: T.nilable(String),
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              created_at: T.nilable(Time),
              email: T.nilable(String),
              locale: T.nilable(String),
              name: T.nilable(String),
              phone_number: T.nilable(String),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]),
              timezone: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end
