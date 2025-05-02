# typed: strong

module Knockapi
  module Models
    class AudienceAddMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # A list of audience members to add.
      sig { returns(T::Array[Knockapi::Models::AudienceAddMembersParams::Member]) }
      attr_accessor :members

      sig do
        params(
          members: T::Array[T.any(Knockapi::Models::AudienceAddMembersParams::Member, Knockapi::Internal::AnyHash)],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # A list of audience members to add.
        members:,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              members: T::Array[Knockapi::Models::AudienceAddMembersParams::Member],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash; end

      class Member < Knockapi::Internal::Type::BaseModel
        # An object containing the user's ID.
        sig { returns(Knockapi::Models::AudienceAddMembersParams::Member::User) }
        attr_reader :user

        sig do
          params(user: T.any(Knockapi::Models::AudienceAddMembersParams::Member::User, Knockapi::Internal::AnyHash))
            .void
        end
        attr_writer :user

        # The unique identifier for the tenant.
        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        # An audience member.
        sig do
          params(
            user: T.any(Knockapi::Models::AudienceAddMembersParams::Member::User, Knockapi::Internal::AnyHash),
            tenant: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # An object containing the user's ID.
          user:,
          # The unique identifier for the tenant.
          tenant: nil
        ); end
        sig do
          override
            .returns({user: Knockapi::Models::AudienceAddMembersParams::Member::User, tenant: T.nilable(String)})
        end
        def to_hash; end

        class User < Knockapi::Internal::Type::BaseModel
          # The ID for the user that you set when identifying them in Knock.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # An object containing the user's ID.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID for the user that you set when identifying them in Knock.
            id: nil
          ); end
          sig { override.returns({id: String}) }
          def to_hash; end
        end
      end
    end
  end
end
