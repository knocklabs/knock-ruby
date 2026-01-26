# typed: strong

module Knockapi
  module Models
    class AudienceRemoveMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Knockapi::AudienceRemoveMembersParams,
            Knockapi::Internal::AnyHash
          )
        end

      # A list of audience members to remove.
      sig { returns(T::Array[Knockapi::AudienceRemoveMembersParams::Member]) }
      attr_accessor :members

      sig do
        params(
          members:
            T::Array[Knockapi::AudienceRemoveMembersParams::Member::OrHash],
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of audience members to remove.
        members:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            members: T::Array[Knockapi::AudienceRemoveMembersParams::Member],
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
              Knockapi::AudienceRemoveMembersParams::Member,
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
