# typed: strong

module Knockapi
  module Resources
    class Audiences
      # Add members
      sig do
        params(
          key: String,
          members: T::Array[T.any(Knockapi::Models::AudienceAddMembersParams::Member, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def add_members(
        # The key of the audience to add members to
        key,
        members:,
        request_options: {}
      ); end
      # List members
      sig do
        params(
          key: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::AudienceListMembersResponse)
      end
      def list_members(
        # The key of the audience to list members for
        key,
        request_options: {}
      ); end
      # Remove members
      sig do
        params(
          key: String,
          members: T::Array[T.any(Knockapi::Models::AudienceRemoveMembersParams::Member, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def remove_members(
        # The key of the audience to remove members from
        key,
        members:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
