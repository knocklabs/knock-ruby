# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#list_members
    class AudienceListMembersResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute entries
      #   A list of audience members.
      #
      #   @return [Array<Knockapi::Models::AudienceMember>]
      required :entries, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::AudienceMember] }

      # @!attribute page_info
      #   Pagination information for a list of resources.
      #
      #   @return [Knockapi::Models::PageInfo]
      required :page_info, -> { Knockapi::PageInfo }

      # @!method initialize(entries:, page_info:)
      #   A paginated list of audience members.
      #
      #   @param entries [Array<Knockapi::Models::AudienceMember>] A list of audience members.
      #
      #   @param page_info [Knockapi::Models::PageInfo] Pagination information for a list of resources.
    end
  end
end
