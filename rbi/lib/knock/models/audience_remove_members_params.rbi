# typed: strong

module Knock
  module Models
    class AudienceRemoveMembersParams < Knock::BaseModel
      extend Knock::RequestParameters::Converter
      include Knock::RequestParameters

      sig { returns(T::Array[Knock::Models::AudienceRemoveMembersParams::Member]) }
      def members
      end

      sig do
        params(_: T::Array[Knock::Models::AudienceRemoveMembersParams::Member])
          .returns(T::Array[Knock::Models::AudienceRemoveMembersParams::Member])
      end
      def members=(_)
      end

      sig do
        params(
          members: T::Array[Knock::Models::AudienceRemoveMembersParams::Member],
          request_options: T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(members:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              members: T::Array[Knock::Models::AudienceRemoveMembersParams::Member],
              request_options: Knock::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Member < Knock::BaseModel
        sig { returns(Knock::Models::InlineIdentifyUserRequest) }
        def user
        end

        sig { params(_: Knock::Models::InlineIdentifyUserRequest).returns(Knock::Models::InlineIdentifyUserRequest) }
        def user=(_)
        end

        sig { returns(T.nilable(String)) }
        def tenant
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def tenant=(_)
        end

        sig { params(user: Knock::Models::InlineIdentifyUserRequest, tenant: T.nilable(String)).void }
        def initialize(user:, tenant: nil)
        end

        sig { override.returns({user: Knock::Models::InlineIdentifyUserRequest, tenant: T.nilable(String)}) }
        def to_hash
        end
      end
    end
  end
end
