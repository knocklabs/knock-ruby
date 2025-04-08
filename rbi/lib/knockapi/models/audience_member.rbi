# typed: strong

module Knockapi
  module Models
    class AudienceMember < Knockapi::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :_typename

      sig { returns(Time) }
      attr_accessor :added_at

      # A user object
      sig { returns(Knockapi::Models::User) }
      attr_reader :user

      sig { params(user: T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash)).void }
      attr_writer :user

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_accessor :tenant

      # A user belonging to an audience
      sig do
        params(
          _typename: String,
          added_at: Time,
          user: T.any(Knockapi::Models::User, Knockapi::Internal::AnyHash),
          user_id: String,
          tenant: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(_typename:, added_at:, user:, user_id:, tenant: nil); end

      sig do
        override
          .returns(
            {_typename: String, added_at: Time, user: Knockapi::Models::User, user_id: String, tenant: T.nilable(String)}
          )
      end
      def to_hash; end
    end
  end
end
