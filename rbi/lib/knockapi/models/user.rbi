# typed: strong

module Knockapi
  module Models
    class User < Knockapi::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :_typename

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :avatar

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      sig { returns(T.nilable(String)) }
      attr_accessor :timezone

      # A user object
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
      )
      end

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
      def to_hash
      end
    end
  end
end
