# typed: strong

module Knockapi
  module Models
    class AudienceAddMembersParams < Knockapi::BaseModel
      extend Knockapi::Type::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T::Array[Knockapi::Models::AudienceAddMembersParams::Member]) }
      attr_accessor :members

      sig do
        params(
          members: T::Array[T.any(Knockapi::Models::AudienceAddMembersParams::Member, Knockapi::Util::AnyHash)],
          request_options: T.any(Knockapi::RequestOptions, Knockapi::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(members:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              members: T::Array[Knockapi::Models::AudienceAddMembersParams::Member],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Member < Knockapi::BaseModel
        # A set of parameters to inline-identify a user with. Inline identifying the user
        #   will ensure that the user is available before the request is executed in Knock.
        #   It will perform an upsert against the user you're supplying, replacing any
        #   properties specified.
        sig { returns(Knockapi::Models::InlineIdentifyUserRequest) }
        attr_reader :user

        sig { params(user: T.any(Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Util::AnyHash)).void }
        attr_writer :user

        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        # A request for an individual audience member
        sig do
          params(
            user: T.any(Knockapi::Models::InlineIdentifyUserRequest, Knockapi::Util::AnyHash),
            tenant: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(user:, tenant: nil)
        end

        sig { override.returns({user: Knockapi::Models::InlineIdentifyUserRequest, tenant: T.nilable(String)}) }
        def to_hash
        end
      end
    end
  end
end
