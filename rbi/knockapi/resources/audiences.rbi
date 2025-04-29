# typed: strong

module Knockapi
  module Resources
    class Audiences
      # Adds one or more members to the specified audience.
      sig do
        params(
          key: String,
          members: T::Array[T.any(Knockapi::Models::AudienceAddMembersParams::Member, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def add_members(
        # The key of the audience.
        key,
        # A list of audience members to add.
        members:,
        request_options: {}
      ); end
      # Returns a paginated list of members for the specified audience.
      sig do
        params(
          key: String,
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(Knockapi::Models::AudienceListMembersResponse)
      end
      def list_members(
        # The key of the audience.
        key,
        request_options: {}
      ); end
      # Removes one or more members from the specified audience.
      sig do
        params(
          key: String,
          members: T::Array[T.any(Knockapi::Models::AudienceRemoveMembersParams::Member, Knockapi::Internal::AnyHash)],
          request_options: T.nilable(T.any(Knockapi::RequestOptions, Knockapi::Internal::AnyHash))
        )
          .returns(String)
      end
      def remove_members(
        # The key of the audience.
        key,
        # A list of audience members to remove.
        members:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
