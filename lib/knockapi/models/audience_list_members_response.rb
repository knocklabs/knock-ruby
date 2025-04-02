# frozen_string_literal: true

module Knockapi
  module Models
    class AudienceListMembersResponse < Knockapi::BaseModel
      # @!attribute entries
      #
      #   @return [Array<Knockapi::Models::AudienceMember>]
      required :entries, -> { Knockapi::ArrayOf[Knockapi::Models::AudienceMember] }

      # @!attribute page_info
      #   The information about a paginated result
      #
      #   @return [Knockapi::Models::AudienceListMembersResponse::PageInfo]
      required :page_info, -> { Knockapi::Models::AudienceListMembersResponse::PageInfo }

      # @!parse
      #   # A response containing a list of audience members
      #   #
      #   # @param entries [Array<Knockapi::Models::AudienceMember>]
      #   # @param page_info [Knockapi::Models::AudienceListMembersResponse::PageInfo]
      #   #
      #   def initialize(entries:, page_info:, **) = super

      # def initialize: (Hash | Knockapi::BaseModel) -> void

      # @see Knockapi::Models::AudienceListMembersResponse#page_info
      class PageInfo < Knockapi::BaseModel
        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String, nil?: true

        # @!attribute before
        #
        #   @return [String, nil]
        optional :before, String, nil?: true

        # @!parse
        #   # The information about a paginated result
        #   #
        #   # @param _typename [String]
        #   # @param page_size [Integer]
        #   # @param after [String, nil]
        #   # @param before [String, nil]
        #   #
        #   def initialize(_typename:, page_size:, after: nil, before: nil, **) = super

        # def initialize: (Hash | Knockapi::BaseModel) -> void
      end
    end
  end
end
