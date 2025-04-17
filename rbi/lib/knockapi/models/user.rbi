# typed: strong

module Knockapi
  module Models
    class User < Knockapi::Internal::Type::BaseModel
      # The unique identifier for the user.
      sig { returns(String) }
      attr_accessor :id

      # The type name of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # The timestamp when the resource was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # URL to the user's avatar image.
      sig { returns(T.nilable(String)) }
      attr_accessor :avatar

      # Timestamp when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The email address of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Display name of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Phone number of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # Timezone of the user.
      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      # A user object.
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
