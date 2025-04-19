# frozen_string_literal: true

module Knockapi
  module Models
    # @see Knockapi::Resources::Audiences#list_members
    class AudienceListMembersResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute entries
      #   A list of audience members.
      #
      #   @return [Array<Knockapi::Models::AudienceMember>]
      required :entries, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::AudienceMember] }

      # @!attribute page_info
      #   Pagination information for a list of resources.
      #
      #   @return [Knockapi::Models::AudienceListMembersResponse::PageInfo]
      required :page_info, -> { Knockapi::Models::AudienceListMembersResponse::PageInfo }

      # @!method initialize(entries:, page_info:)
      #   A paginated list of audience members.
      #
      #   @param entries [Array<Knockapi::Models::AudienceMember>]
      #   @param page_info [Knockapi::Models::AudienceListMembersResponse::PageInfo]

      # @see Knockapi::Models::AudienceListMembersResponse#page_info
      class PageInfo < Knockapi::Internal::Type::BaseModel
        # @!attribute _typename
        #   The typename of the schema.
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute page_size
        #   The number of items per page.
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute after
        #   The cursor to fetch entries after.
        #
        #   @return [String, nil]
        optional :after, String, nil?: true

        # @!attribute before
        #   The cursor to fetch entries before.
        #
        #   @return [String, nil]
        optional :before, String, nil?: true

        # @!method initialize(_typename:, page_size:, after: nil, before: nil)
        #   Pagination information for a list of resources.
        #
        #   @param _typename [String]
        #   @param page_size [Integer]
        #   @param after [String, nil]
        #   @param before [String, nil]
      end
    end
  end
end
