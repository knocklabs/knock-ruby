# typed: strong

module Knockapi
  module Models
    class AudienceRemoveMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
          T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

        # An object containing the user's ID.
        sig { returns(Knockapi::AudienceRemoveMembersParams::Member::User) }
        attr_reader :user

        sig do
          params(
            user: Knockapi::AudienceRemoveMembersParams::Member::User::OrHash
          ).void
        end
        attr_writer :user

        # The unique identifier for the tenant.
        sig { returns(T.nilable(String)) }
        attr_accessor :tenant

        # An audience member.
        sig do
          params(
            user: Knockapi::AudienceRemoveMembersParams::Member::User::OrHash,
            tenant: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # An object containing the user's ID.
          user:,
          # The unique identifier for the tenant.
          tenant: nil
        )
        end

        sig do
          override.returns(
            {
              user: Knockapi::AudienceRemoveMembersParams::Member::User,
              tenant: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class User < Knockapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, Knockapi::Internal::AnyHash) }

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
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
