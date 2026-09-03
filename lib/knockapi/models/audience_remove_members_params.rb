# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#remove_members
    class AudienceRemoveMembersParams < Knockapi::Internal::Type::BaseModel
      extend Knockapi::Internal::Type::RequestParameters::Converter
      include Knockapi::Internal::Type::RequestParameters

      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!attribute members
      #   A list of audience members to remove. You can remove up to 1,000 members per
      #   request.
      #
      #   @return [Array<Knockapi::Models::AudienceMemberRequest>]
      required :members, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::AudienceMemberRequest] }

      # @!method initialize(key:, members:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Knockapi::Models::AudienceRemoveMembersParams} for more details.
      #
      #   @param key [String]
      #
      #   @param members [Array<Knockapi::Models::AudienceMemberRequest>] A list of audience members to remove. You can remove up to 1,000 members per req
      #
      #   @param request_options [Knockapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
