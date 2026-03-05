# typed: strong

module Knockapi
  module Models
    class AudienceAddMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Knockapi::AudienceAddMembersParams, Knockapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :key

      # A list of audience members to add. You can add up to 1,000 members per request.
      sig { returns(T::Array[Knockapi::AudienceAddMembersParams::Member]) }
      attr_accessor :members

      # Create the audience if it does not exist.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :create_audience

      sig { params(create_audience: T::Boolean).void }
      attr_writer :create_audience

      sig do
        params(
          key: String,
          members: T::Array[Knockapi::AudienceAddMembersParams::Member::OrHash],
          create_audience: T::Boolean,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        key:,
        # A list of audience members to add. You can add up to 1,000 members per request.
        members:,
        # Create the audience if it does not exist.
        create_audience: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            members: T::Array[Knockapi::AudienceAddMembersParams::Member],
            create_audience: T::Boolean,
            request_options: Knockapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Member < Knockapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Knockapi::AudienceAddMembersParams::Member,
              Knockapi::Internal::AnyHash
            )
          end

        # A set of parameters to inline-identify a user with. Inline identifying the user
        # will ensure that the user is available before the request is executed in Knock.
        # It will perform an upsert for the user you're supplying, replacing any
        # properties specified.
        sig { returns(Knockapi::InlineIdentifyUserRequest) }
        attr_reader :user

        sig { params(user: Knockapi::InlineIdentifyUserRequest::OrHash).void }
        attr_writer :user

        # The unique identifier for the tenant.
        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        # An audience member.
        sig do
          params(
            user: Knockapi::InlineIdentifyUserRequest::OrHash,
            tenant: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # A set of parameters to inline-identify a user with. Inline identifying the user
          # will ensure that the user is available before the request is executed in Knock.
          # It will perform an upsert for the user you're supplying, replacing any
          # properties specified.
          user:,
          # The unique identifier for the tenant.
          tenant: nil
        )
        end

        sig do
          override.returns(
            {
              user: Knockapi::InlineIdentifyUserRequest,
              tenant: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
