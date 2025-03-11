# typed: strong

module Knockapi
  module Models
    class User < Knockapi::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def avatar
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def avatar=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def phone_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def phone_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def timezone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def timezone=(_)
      end

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
