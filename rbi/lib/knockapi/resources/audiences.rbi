# typed: strong

module Knockapi
  module Resources
    class Audiences
      # Add members
      sig do
        params(
          key: String,
          members: T::Array[Knockapi::Models::AudienceAddMembersParams::Member],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def add_members(
        # The key of the audience to add members to
        key,
        members:,
        request_options: {}
      )
      end

      # List members
      sig do
        params(
          key: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Knockapi::Models::AudienceListMembersResponse)
      end
      def list_members(
        # The key of the audience to list members for
        key,
        request_options: {}
      )
      end

      # Remove members
      sig do
        params(
          key: String,
          members: T::Array[Knockapi::Models::AudienceRemoveMembersParams::Member],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(String)
      end
      def remove_members(
        # The key of the audience to remove members from
        key,
        members:,
        request_options: {}
      )
      end

      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
