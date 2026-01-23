# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#add_members
    class AudienceAddMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute members
      #   A list of audience members to add. Limited to 1,000 members per request.
      #
      #   @return [Array<Knockapi::Models::AudienceAddMembersParams::Member>]
      required :members, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::AudienceAddMembersParams::Member] }

      # @!method initialize(members:, request_options: {})
      #   @param members [Array<Knockapi::Models::AudienceAddMembersParams::Member>] A list of audience members to add. Limited to 1,000 members per request.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      class Member < Knockapi::Internal::Type::BaseModel
        # @!attribute user
        #   A set of parameters to inline-identify a user with. Inline identifying the user
        #   will ensure that the user is available before the request is executed in Knock.
        #   It will perform an upsert for the user you're supplying, replacing any
        #   properties specified.
        #
        #   @return [Knockapi::Models::InlineIdentifyUserRequest]
        required :user, -> { Knockapi::InlineIdentifyUserRequest }

        # @!attribute tenant
        #   The unique identifier for the tenant.
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!method initialize(user:, tenant: nil)
        #   Some parameter documentations has been truncated, see
        #   {Knockapi::Models::AudienceAddMembersParams::Member} for more details.
        #
        #   An audience member.
        #
        #   @param user [Knockapi::Models::InlineIdentifyUserRequest] A set of parameters to inline-identify a user with. Inline identifying the user
        #
        #   @param tenant [String, nil] The unique identifier for the tenant.
      end
    end
  end
end
