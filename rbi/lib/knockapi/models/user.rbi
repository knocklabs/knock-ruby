# typed: strong

module Knockapi
  module Models
    class User < Knockapi::Internal::Type::BaseModel
      # The ID for the user that you set when identifying them in Knock.
      sig { returns(String) }
      attr_accessor :id

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The timestamp when the resource was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # URL to the user's avatar image.
      sig { returns(T.nilable(String)) }
      attr_accessor :avatar

      # The creation date of the user from your system.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The primary email address for the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Display name of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The [E.164](https://www.twilio.com/docs/glossary/what-e164) phone number of the
      # user (required for SMS channels).
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # The timezone of the user. Must be a valid
      # [tz database time zone string](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
      # Used for
      # [recurring schedules](/concepts/schedules#scheduling-workflows-with-recurring-schedules-for-recipients)
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      # A [User](/concepts/users) represents an individual in your system who can
      # receive notifications through Knock. Users are the most common recipients of
      # notifications and are always referenced by your internal identifier.
      sig do
        params(
          id: String,
          _typename: String,
          updated_at: Time,
          avatar: T.nilable(String),
          created_at: T.nilable(Time),
          email: T.nilable(String),
          name: T.nilable(String),
          phone_number: T.nilable(String),
          timezone: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        _typename:,
        updated_at:,
        avatar: nil,
        created_at: nil,
        email: nil,
        name: nil,
        phone_number: nil,
        timezone: nil
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              _typename: String,
              updated_at: Time,
              avatar: T.nilable(String),
              created_at: T.nilable(Time),
              email: T.nilable(String),
              name: T.nilable(String),
              phone_number: T.nilable(String),
              timezone: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end
