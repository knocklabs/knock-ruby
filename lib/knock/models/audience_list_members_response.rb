# frozen_string_literal: true

module Knock
  module Models
    class AudienceListMembersResponse < Knock::BaseModel
      # @!attribute entries
      #
      #   @return [Array<Knock::Models::AudienceListMembersResponse::Entry>]
      required :entries, -> { Knock::ArrayOf[Knock::Models::AudienceListMembersResponse::Entry] }

      # @!attribute page_info
      #   The information about a paginated result
      #
      #   @return [Knock::Models::AudienceListMembersResponse::PageInfo]
      required :page_info, -> { Knock::Models::AudienceListMembersResponse::PageInfo }

      # @!parse
      #   # A response containing a list of audience members
      #   #
      #   # @param entries [Array<Knock::Models::AudienceListMembersResponse::Entry>]
      #   # @param page_info [Knock::Models::AudienceListMembersResponse::PageInfo]
      #   #
      #   def initialize(entries:, page_info:, **) = super

      # def initialize: (Hash | Knock::BaseModel) -> void

      class Entry < Knock::BaseModel
        # @!attribute _typename
        #
        #   @return [String]
        required :_typename, String, api_name: :__typename

        # @!attribute added_at
        #
        #   @return [Time]
        required :added_at, Time

        # @!attribute user
        #   A user object
        #
        #   @return [Knock::Models::User]
        required :user, -> { Knock::Models::User }

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute tenant
        #
        #   @return [String, nil]
        optional :tenant, String, nil?: true

        # @!parse
        #   # A user belonging to an audience
        #   #
        #   # @param _typename [String]
        #   # @param added_at [Time]
        #   # @param user [Knock::Models::User]
        #   # @param user_id [String]
        #   # @param tenant [String, nil]
        #   #
        #   def initialize(_typename:, added_at:, user:, user_id:, tenant: nil, **) = super

        # def initialize: (Hash | Knock::BaseModel) -> void
      end

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
