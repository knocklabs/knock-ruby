# typed: strong

module Knockapi
  module Resources
    # An Audience is a segment of users.
    class Audiences
      # Adds one or more members to the specified audience.
      sig do
        params(
          key: String,
          members: T::Array[Knockapi::AudienceAddMembersParams::Member::OrHash],
          create_audience: T::Boolean,
          request_options: Knockapi::RequestOptions::OrHash
        ).void
      end
      def add_members(
        # Path param: The key of the audience.
        key,
        # Body param: A list of audience members to add. You can add up to 1,000 members
        # per request.
        members:,
        # Query param: Create the audience if it does not exist.
        create_audience: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of members for the specified audience.
      sig do
        params(
          key: String,
          request_options: Knockapi::RequestOptions::OrHash
        ).returns(Knockapi::Models::AudienceListMembersResponse)
      end
      def list_members(
        # The key of the audience.
        key,
        request_options: {}
      )
      end

      # Removes one or more members from the specified audience.
      sig do
        params(
          key: String,
          members:
            T::Array[Knockapi::AudienceRemoveMembersParams::Member::OrHash],
          request_options: Knockapi::RequestOptions::OrHash
        ).void
      end
      def remove_members(
        # The key of the audience.
        key,
        # A list of audience members to remove. You can remove up to 1,000 members per
        # request.
        members:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Knockapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
