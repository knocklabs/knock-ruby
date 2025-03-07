# frozen_string_literal: true

module Knock
  module Models
    class AudienceListMembersResponse < Knock::BaseModel
      # @!attribute entries
      #
      #   @return [Array<Knock::Models::AudienceMember>]
      required :entries, -> { Knock::ArrayOf[Knock::Models::AudienceMember] }

      # @!attribute page_info
      #   The information about a paginated result
      #
      #   @return [Knock::Models::AudienceListMembersResponse::PageInfo]
      required :page_info, -> { Knock::Models::AudienceListMembersResponse::PageInfo }

      # @!parse
      #   # A response containing a list of audience members
      #   #
      #   # @param entries [Array<Knock::Models::AudienceMember>]
      #   # @param page_info [Knock::Models::AudienceListMembersResponse::PageInfo]
      #   #
      #   def initialize(entries:, page_info:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      class PageInfo < Knock::BaseModel
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

        # def initialize: (Hash | Knock::BaseModel) -> void
      end
    end
  end
end
