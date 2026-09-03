# frozen_string_literal: true

module Knockapi
  module Models
    class ListSchedulesResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute entries
      #   A list of schedules.
      #
      #   @return [Array<Knockapi::Models::Schedule>]
      required :entries, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Schedule] }

      # @!attribute page_info
      #   Pagination information for a list of resources.
      #
      #   @return [Knockapi::Models::PageInfo]
      required :page_info, -> { Knockapi::PageInfo }

      # @!method initialize(entries:, page_info:)
      #   A response containing a list of schedules.
      #
      #   @param entries [Array<Knockapi::Models::Schedule>] A list of schedules.
      #
      #   @param page_info [Knockapi::Models::PageInfo] Pagination information for a list of resources.
    end
  end
end
