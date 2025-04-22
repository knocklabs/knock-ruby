# frozen_string_literal: true

module Knockapi
  module Models
    module Messages
      # @see Knockapi::Resources::Messages::Activities#list
      class ActivityListResponse < Knockapi::Internal::Type::BaseModel
        # @!attribute entries
        #   A list of activities.
        #
        #   @return [Array<Knockapi::Models::Activity>]
        required :entries, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Models::Activity] }

        # @!attribute page_info
        #   Pagination information for a list of resources.
        #
        #   @return [Knockapi::Models::PageInfo]
        required :page_info, -> { Knockapi::Models::PageInfo }

        # @!method initialize(entries:, page_info:)
        #   Returns a paginated list of `activities` associated with a given message. For
        #   messages produced after a [batch step](/designing-workflows/batch-function),
        #   this will contain one or more activities. Non-batched messages will always
        #   return a single activity.
        #
        #   @param entries [Array<Knockapi::Models::Activity>]
        #   @param page_info [Knockapi::Models::PageInfo]
      end
    end
  end
end
