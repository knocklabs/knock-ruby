# typed: strong

module Knock
  module Resources
    class Audiences
      sig do
        params(
          key: String,
          members: T::Array[Knock::Models::AudienceAddMembersParams::Member],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def add_members(key, members:, request_options: {})
      end

      sig do
        params(
          key: String,
          request_options: T.nilable(
            T.any(
              Knock::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          )
        )
          .returns(Knock::Models::AudienceListMembersResponse)
      end
      def list_members(key, request_options: {})
      end

      sig do
        params(
          key: String,
          members: T::Array[Knock::Models::AudienceRemoveMembersParams::Member],
          request_options: T.nilable(T.any(Knock::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def remove_members(key, members:, request_options: {})
      end

      sig { params(client: Knock::Client).void }
      def initialize(client:)
      end
    end
  end
end
