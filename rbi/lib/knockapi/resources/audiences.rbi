# typed: strong

module Knockapi
  module Resources
    class Audiences
      sig do
        params(
          key: String,
          members: T::Array[Knockapi::Models::AudienceAddMembersParams::Member],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def add_members(key, members:, request_options: {})
      end

      sig do
        params(
          key: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::AudienceListMembersResponse)
      end
      def list_members(key, request_options: {})
      end

      sig do
        params(
          key: String,
          members: T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def remove_members(key, members:, request_options: {})
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
