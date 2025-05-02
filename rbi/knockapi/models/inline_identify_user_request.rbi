# typed: strong

module Knockapi
  module Models
    class InlineIdentifyUserRequest < Knockapi::Internal::Type::BaseModel
      # The ID for the user that you set when identifying them in Knock.
      sig { returns(String) }
      attr_accessor :id

      # A request to set channel data for a type of channel inline.
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest])) }
      attr_accessor :channel_data

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The primary email address for the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Display name of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Inline set preferences for a recipient, where the key is the preference set id.
      sig { returns(T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest])) }
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
          channel_data: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::ChannelDataRequest, Knockapi::Internal::AnyHash)]
          ),
          created_at: T.nilable(Time),
          email: T.nilable(String),
          name: T.nilable(String),
          preferences: T.nilable(
            T::Hash[Symbol, T.any(Knockapi::Models::Recipients::PreferenceSetRequest, Knockapi::Internal::AnyHash)]
          ),
          timezone: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The ID for the user that you set when identifying them in Knock.
        id:,
        # A request to set channel data for a type of channel inline.
        channel_data: nil,
        # The creation date of the user from your system.
        created_at: nil,
        # The primary email address for the user.
        email: nil,
        # Display name of the user.
        name: nil,
        # Inline set preferences for a recipient, where the key is the preference set id.
        preferences: nil,
        # The timezone of the user. Must be a
        # valid [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
        # Used
        # for [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients).
        timezone: nil
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              channel_data: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::ChannelDataRequest]),
              created_at: T.nilable(Time),
              email: T.nilable(String),
              name: T.nilable(String),
              preferences: T.nilable(T::Hash[Symbol, Knockapi::Models::Recipients::PreferenceSetRequest]),
              timezone: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end
