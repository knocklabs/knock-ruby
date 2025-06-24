# typed: strong

module Knockapi
  module Models
    class AudienceMember < Knockapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Knockapi::AudienceMember, Knockapi::Internal::AnyHash)
        end

      # The typename of the schema.
      sig { returns(String) }
      attr_accessor :_typename

      # Timestamp when the resource was created.
      sig { returns(Time) }
      attr_accessor :added_at

      # A [User](/concepts/users) represents an individual in your system who can
      # receive notifications through Knock. Users are the most common recipients of
      # notifications and are always referenced by your internal identifier.
      sig { returns(Knockapi::User) }
      attr_reader :user

      sig { params(user: Knockapi::User::OrHash).void }
      attr_writer :user

      # The unique identifier of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # The unique identifier for the tenant.
      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      # An audience member.
      sig do
        params(
          _typename: String,
          added_at: Time,
          user: Knockapi::User::OrHash,
          user_id: String,
          tenant: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The typename of the schema.
        _typename:,
        # Timestamp when the resource was created.
        added_at:,
        # A [User](/concepts/users) represents an individual in your system who can
        # receive notifications through Knock. Users are the most common recipients of
        # notifications and are always referenced by your internal identifier.
        user:,
        # The unique identifier of the user.
        user_id:,
        # The unique identifier for the tenant.
        tenant: nil
      )
      end

      sig do
        override.returns(
          {
            _typename: String,
            added_at: Time,
            user: Knockapi::User,
            user_id: String,
            tenant: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
