# typed: strong

module Knockapi
  module Models
    class AudienceMember < Knockapi::BaseModel
      sig { returns(String) }
      def _typename
      end

      sig { params(_: String).returns(String) }
      def _typename=(_)
      end

      sig { returns(Time) }
      def added_at
      end

      sig { params(_: Time).returns(Time) }
      def added_at=(_)
      end

      # A user object
      sig { returns(Knockapi::Models::User) }
      def user
      end

      sig { params(_: Knockapi::Models::User).returns(Knockapi::Models::User) }
      def user=(_)
      end

      sig { returns(String) }
      def user_id
      end

      sig { params(_: String).returns(String) }
      def user_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def tenant
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tenant=(_)
      end

      # A user belonging to an audience
      sig do
        params(
          _typename: String,
          added_at: Time,
          user: Knockapi::Models::User,
          user_id: String,
          tenant: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(_typename:, added_at:, user:, user_id:, tenant: nil)
      end

      sig do
        override
          .returns(
            {_typename: String, added_at: Time, user: Knockapi::Models::User, user_id: String, tenant: T.nilable(String)}
          )
      end
      def to_hash
      end
    end
  end
end
