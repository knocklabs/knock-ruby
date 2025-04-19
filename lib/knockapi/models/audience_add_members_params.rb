# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#add_members
    class AudienceAddMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute members
      #   A list of audience members to add.
      #
      #   @return [Array<Knockapi::Models::AudienceAddMembersParams::Member>]
      required :members,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::AudienceAddMembersParams::Member] }

      # @!method initialize(members:, request_options: {})
      #   @param members [Array<Knockapi::Models::AudienceAddMembersParams::Member>]
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      class Member < Knockapi::Internal::Type::BaseModel
        # @!attribute user
        #   A set of parameters to inline-identify a user with. Inline identifying the user
        #   will ensure that the user is available before the request is executed in Knock.
        #   It will perform an upsert for the user you're supplying, replacing any
        #   properties specified.
        #
        #   @return [Knockapi::Models::InlineIdentifyUserRequest]
        required :user, -> { Knockapi::Models::InlineIdentifyUserRequest }

        # @!attribute tenant
        #   The unique identifier for the tenant.
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!method initialize(user:, tenant: nil)
        #   An audience member.
        #
        #   @param user [Knockapi::Models::InlineIdentifyUserRequest]
        #   @param tenant [String, nil]
      end
    end
  end
end
