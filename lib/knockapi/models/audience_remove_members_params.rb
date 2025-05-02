# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#remove_members
    class AudienceRemoveMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute members
      #   A list of audience members to remove.
      #
      #   @return [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>]
      required :members,
               -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::AudienceRemoveMembersParams::Member] }

      # @!method initialize(members:, request_options: {})
      #   @param members [Array<Knockapi::Models::AudienceRemoveMembersParams::Member>] A list of audience members to remove.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      class Member < Knockapi::Internal::Type::BaseModel
        # @!attribute user
        #   An object containing the user's ID.
        #
        #   @return [Knockapi::Models::AudienceRemoveMembersParams::Member::User]
        required :user, -> { Knockapi::Models::AudienceRemoveMembersParams::Member::User }

        # @!attribute tenant
        #   The unique identifier for the tenant.
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!method initialize(user:, tenant: nil)
        #   An audience member.
        #
        #   @param user [Knockapi::Models::AudienceRemoveMembersParams::Member::User] An object containing the user's ID.
        #
        #   @param tenant [String, nil] The unique identifier for the tenant.

        # @see Knockapi::Models::AudienceRemoveMembersParams::Member#user
        class User < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   The ID for the user that you set when identifying them in Knock.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   An object containing the user's ID.
          #
          #   @param id [String] The ID for the user that you set when identifying them in Knock.
        end
      end
    end
  end
end
