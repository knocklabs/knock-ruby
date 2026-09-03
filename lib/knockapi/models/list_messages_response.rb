# frozen_string_literal: true

module Knockapi
  module Models
    class ListMessagesResponse < Knockapi::Internal::Type::BaseModel
      # @!attribute items
      #   A list of messages.
      #
      #   @return [Array<Knockapi::Models::Message>]
      required :items, -> { Knockapi::Internal::Type::ArrayOf[Knockapi::Message] }

      # @!attribute page_info
      #   Pagination information for a list of resources.
      #
      #   @return [Knockapi::Models::PageInfo]
      required :page_info, -> { Knockapi::PageInfo }

      # @!method initialize(items:, page_info:)
      #   A paginated list of messages.
      #
      #   @param items [Array<Knockapi::Models::Message>] A list of messages.
      #
      #   @param page_info [Knockapi::Models::PageInfo] Pagination information for a list of resources.
    end
  end
end
