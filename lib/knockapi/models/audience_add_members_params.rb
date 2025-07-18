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
      required :members, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::AudienceAddMembersParams::Member] }

      # @!method initialize(members:, request_options: {})
      #   @param members [Array<Knockapi::Models::AudienceAddMembersParams::Member>] A list of audience members to add.
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]

      class Member < Knockapi::Internal::Type::BaseModel
        # @!attribute user
        #   An object containing the user's ID.
        #
        #   @return [Knockapi::Models::AudienceAddMembersParams::Member::User]
        required :user, -> { Knockapi::AudienceAddMembersParams::Member::User }

        # @!attribute tenant
        #   The unique identifier for the tenant.
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!method initialize(user:, tenant: nil)
        #   An audience member.
        #
        #   @param user [Knockapi::Models::AudienceAddMembersParams::Member::User] An object containing the user's ID.
        #
        #   @param tenant [String, nil] The unique identifier for the tenant.

        # @see Knockapi::Models::AudienceAddMembersParams::Member#user
        class User < Knockapi::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier of the user.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   An object containing the user's ID.
          #
          #   @param id [String] The unique identifier of the user.
        end
      end
    end
  end
end
