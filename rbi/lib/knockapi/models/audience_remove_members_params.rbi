# typed: strong

module Knockapi
  module Models
    class AudienceRemoveMembersParams < Knockapi::BaseModel
      extend Knockapi::RequestParameters::Converter
      include Knockapi::RequestParameters

      sig { returns(T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member]) }
      def members
      end

      sig do
        params(_: T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member])
          .returns(T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member])
      end
      def members=(_)
      end

      sig do
        params(
          members: T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member],
          request_options: T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(members:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              members: T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member],
              request_options: Knockapi::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Member < Knockapi::BaseModel
        sig { returns(Knockapi::Models::InlineIdentifyUserRequest) }
        def user
        end

        sig do
          params(_: Knockapi::Models::InlineIdentifyUserRequest).returns(Knockapi::Models::InlineIdentifyUserRequest)
        end
        def user=(_)
        end

        sig { returns(T.nilable(String)) }
        def tenant
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tenant=(_)
        end

        sig do
          params(user: Knockapi::Models::InlineIdentifyUserRequest, tenant: T.nilable(String))
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
